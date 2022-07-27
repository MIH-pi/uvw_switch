/******************************************************************************
 * @file     main.c
 * @brief
 *           Implement a USB virtual COM port device.
 *            It supports one virtual COM port.
 * @note
 * Copyright (C) 2014 Nuvoton Technology Corp. All rights reserved.
 ******************************************************************************/
#include <stdio.h>
#include "M451Series.h"
#include "cdc_serial.h"

#define PLL_CLOCK		96000000


/*--------------------------------------------------------------------------*/
STR_VCOM_LINE_CODING gLineCoding = {115200, 0, 0, 8};   /* Baud rate : 115200    */
/* Stop bit     */
/* parity       */
/* data bits    */
uint16_t gCtrlSignal = 0;     /* BIT0: DTR(Data Terminal Ready) , BIT1: RTS(Request To Send) */

/*--------------------------------------------------------------------------*/
#define RXBUFSIZE           384 /* RX buffer size */
#define TXBUFSIZE           128 /* TX buffer size */

#define TX_FIFO_SIZE        16  /* TX Hardware FIFO size */


// UI LED
#define IDLE_TIME_MS		5000
#define LED_DELAY_MS		12

#define DTR_LED		PC4
#define TXD_LED		PD7
#define RXD_LED		PE0


/*---------------------------------------------------------------------------------------------------------*/
/* Global variables                                                                                        */
/*---------------------------------------------------------------------------------------------------------*/
/* UART2 */
volatile uint8_t comRbuf[RXBUFSIZE];
volatile uint16_t comRbytes = 0;
volatile uint16_t comRhead = 0;
volatile uint16_t comRtail = 0;

volatile uint8_t comTbuf[TXBUFSIZE];
volatile uint16_t comTbytes = 0;
volatile uint16_t comThead = 0;
volatile uint16_t comTtail = 0;

volatile uint32_t gu32RxSize = 0;
volatile uint32_t gu32TxSize = 0;


/*--------------------------------------------------------------------------*/


void SYS_Init(void)
{

    /*---------------------------------------------------------------------------------------------------------*/
    /* Init System Clock                                                                                       */
    /*---------------------------------------------------------------------------------------------------------*/

    /* Enable external PLL clock */
	CLK_EnablePLL(CLK_PLLCTL_PLLSRC_HXT, PLL_CLOCK);

    /* Switch HCLK clock source to Internal RC and set HCLK divider to 1 */
    CLK_SetHCLK(CLK_CLKSEL0_HCLKSEL_PLL, CLK_CLKDIV0_HCLK(6));


    /* Enable module clock */
    CLK_EnableModuleClock(UART2_MODULE);
    CLK_EnableModuleClock(TMR0_MODULE);
    CLK_EnableModuleClock(PWM0_MODULE);
    CLK_EnableModuleClock(USBD_MODULE);

    /* Select module clock source */
    CLK_SetModuleClock(UART2_MODULE, CLK_CLKSEL1_UARTSEL_HIRC, CLK_CLKDIV0_UART(1));
    CLK_SetModuleClock(TMR0_MODULE, CLK_CLKSEL1_TMR0SEL_PCLK0, MODULE_NoMsk);
    CLK_SetModuleClock(PWM0_MODULE, CLK_CLKSEL2_PWM0SEL_PCLK0, MODULE_NoMsk);
    CLK_SetModuleClock(USBD_MODULE, MODULE_NoMsk, CLK_CLKDIV0_USB(2));


    /* Update System Core Clock */
    /* User can use SystemCoreClockUpdate() to calculate SystemCoreClock and cyclesPerUs automatically. */
    SystemCoreClockUpdate();

    /* Enable USB LDO33 */
    SYS->USBPHY = SYS_USBPHY_LDO33EN_Msk;

    /*---------------------------------------------------------------------------------------------------------*/
    /* Init I/O Multi-function                                                                                 */
    /*---------------------------------------------------------------------------------------------------------*/

    /* Set GPC multi-function pins for UART2 RXD and TXD, and Clock Output */
    SYS->GPC_MFPL &= ~(SYS_GPC_MFPL_PC2MFP_Msk | SYS_GPC_MFPL_PC3MFP_Msk);
    SYS->GPC_MFPL |= (SYS_GPC_MFPL_PC2MFP_UART2_TXD | SYS_GPC_MFPL_PC3MFP_UART2_RXD);

    /* CKO */
    SYS->GPC_MFPL &= ~SYS_GPC_MFPL_PC1MFP_Msk;
    SYS->GPC_MFPL |= SYS_GPC_MFPL_PC1MFP_CLKO;

    /* LED */
    SYS->GPE_MFPL &= ~SYS_GPE_MFPL_PE0MFP_Msk;
    SYS->GPE_MFPL |= SYS_GPE_MFPL_PE0MFP_PWM0_CH0;

    SYS->GPD_MFPL &= ~SYS_GPD_MFPL_PD7MFP_Msk;
    SYS->GPD_MFPL |= SYS_GPD_MFPL_PD7MFP_PWM0_CH5;

    SYS->GPC_MFPL &= ~SYS_GPC_MFPL_PC4MFP_Msk;
    SYS->GPC_MFPL |= SYS_GPC_MFPL_PC4MFP_PWM0_CH4;

}


void UART2_Init(void)
{
    /*---------------------------------------------------------------------------------------------------------*/
    /* Init UART                                                                                               */
    /*---------------------------------------------------------------------------------------------------------*/
    /* Reset IP */
    SYS_ResetModule(UART2_RST);

    /* Configure UART2 and set UART2 Baudrate */
    UART_Open(UART2, 115200);

    /* Enable UART2 RX Time-Out Interrupt and RX Data Available Interrupt */
    UART_EnableInt(UART2, UART_INTEN_RXTOIEN_Msk | UART_INTEN_RDAIEN_Msk);
}


/*---------------------------------------------------------------------------------------------------------*/
/* UART Callback function                                                                                  */
/*---------------------------------------------------------------------------------------------------------*/
void UART2_IRQHandler(void)
{
    uint32_t u32IntStatus;
    uint8_t bInChar;
    int32_t size;
    uint8_t *u8Ptr;

    u32IntStatus = UART2->INTSTS;

    if((u32IntStatus & 0x1 /* RDAIF */) || (u32IntStatus & 0x10 /* TOUT_IF */))
    {
        /* Receiver FIFO threshold level is reached or Rx time out */

        /* Get all the input characters */
        while((UART2->FIFOSTS & UART_FIFOSTS_RXEMPTY_Msk) == 0)
        {
            /* Check if buffer full */
            if(comRbytes < RXBUFSIZE)
            {
                /* Get the character from UART Buffer */
                bInChar = UART2->DAT;
                /* Enqueue the character */
                comRbuf[comRtail++] = bInChar;
                if(comRtail >= RXBUFSIZE)
                    comRtail = 0;
                comRbytes++;
            }
            else
            {
            	/* Release buffer if full */
            	if(gu32TxSize == 0)
            	{
            		size = EP2_MAX_PKT_SIZE;

                    /* Get EP2 buffer address */
                    u8Ptr = (uint8_t *)(USBD_BUF_BASE + USBD_GET_EP_BUF_ADDR(EP2));

                    while(size)
                    {
                        bInChar = comRbuf[comRhead++];
                        u8Ptr[EP2_MAX_PKT_SIZE-size] = comRbuf[comRhead++];
                        if(comRhead >= RXBUFSIZE)
                            comRhead = 0;
                        PWM_SET_CMR(PWM0, 0, 40);
                        comRbytes--;
                        size--;
                    }

                    gu32TxSize = EP2_MAX_PKT_SIZE;
                    USBD_SET_PAYLOAD_LEN(EP2, EP2_MAX_PKT_SIZE);
            	}

            	break;

            }
        }
    }

    if(u32IntStatus & UART_INTSTS_THREINT_Msk)
    {

        if(comTbytes)
        {
            /* Fill the Tx FIFO */
            size = comTbytes;
            if(size >= TX_FIFO_SIZE)
            {
                size = TX_FIFO_SIZE;
            }

            while(size)
            {
                bInChar = comTbuf[comThead++];
                UART2->DAT = bInChar;
                if(comThead >= TXBUFSIZE)
                    comThead = 0;
                comTbytes--;
                size--;
            }
        }
        else
        {
            /* No more data, just stop Tx (Stop work) */
            UART2->INTEN &= (~UART_INTEN_THREIEN_Msk);
        }
    }

}

void VCOM_TransferData(void)
{
    int32_t i, i32Len;
    uint8_t *u8Ptr;

    /* Mask all interrupt */
    __set_PRIMASK(1);

    /* Check wether USB is ready for next packet or not*/
    if(gu32TxSize == 0)
    {
        /* Check wether we have new COM Rx data to send to USB or not */
        if(comRbytes)
        {
            i32Len = comRbytes;
            if(i32Len > EP2_MAX_PKT_SIZE)
                i32Len = EP2_MAX_PKT_SIZE;

            /* Get EP2 buffer address */
            u8Ptr = (uint8_t *)(USBD_BUF_BASE + USBD_GET_EP_BUF_ADDR(EP2));

            for(i = 0; i < i32Len; i++)
            {
            	u8Ptr[i] = comRbuf[comRhead++];
                if(comRhead >= RXBUFSIZE)
                    comRhead = 0;
            }

            PWM_SET_CMR(PWM0, 0, 40);
            comRbytes -= i32Len;

            gu32TxSize = i32Len;
            USBD_SET_PAYLOAD_LEN(EP2, i32Len);
        }
        else
        {
            /* Prepare a zero packet if previous packet size is EP2_MAX_PKT_SIZE and 
               no more data to send at this moment to note Host the transfer has been done */
            i32Len = USBD_GET_PAYLOAD_LEN(EP2);
            if(i32Len == EP2_MAX_PKT_SIZE)
                USBD_SET_PAYLOAD_LEN(EP2, 0);
        }
    }

    /* Process the Bulk out data when bulk out data is ready. */
    if(gu32RxSize && (gu32RxSize <= TXBUFSIZE - comTbytes))
    {
    	/* Get EP3 buffer address */
    	u8Ptr = (uint8_t *)(USBD_BUF_BASE + USBD_GET_EP_BUF_ADDR(EP3));

        for(i = 0; i < gu32RxSize; i++)
        {
            comTbuf[comTtail++] = u8Ptr[i];
            if(comTtail >= TXBUFSIZE)
                comTtail = 0;
        }

        comTbytes += gu32RxSize;
        PWM_SET_CMR(PWM0, 5, 40);

        gu32RxSize = 0;

        /* Ready to get next BULK out */
        USBD_SET_PAYLOAD_LEN(EP3, EP3_MAX_PKT_SIZE);
    }

    /* Process the software Tx FIFO */
    if(comTbytes)
    {
        /* Check if Tx is working */
        if((UART2->INTEN & UART_INTEN_THREIEN_Msk) == 0)
        {
            /* Send one bytes out */
            UART2->DAT = comTbuf[comThead++];
            if(comThead >= TXBUFSIZE)
                comThead = 0;

            comTbytes--;

            /* Enable Tx Empty Interrupt. (Trigger first one) */
            UART2->INTEN |= UART_INTEN_THREIEN_Msk;
        }
    }

    /* Restore interrupt */
    __set_PRIMASK(0);

}


/*---------------------------------------------------------------------------------------------------------*/
/*  Main Function                                                                                          */
/*---------------------------------------------------------------------------------------------------------*/
int32_t main(void)
{
    /* Unlock protected registers */
    SYS_UnlockReg();
    SYS_Init();
    SYS_LockReg();

    // CKO
    CLK_EnableCKO(CLK_CLKSEL1_CLKOSEL_HCLK, 0, 1);

    UART2_Init();
    NVIC_EnableIRQ(UART2_IRQn);

    PWM_SET_PRESCALER(PWM0, 0, 1600);
    PWM_SET_PRESCALER(PWM0, 5, 1600);
    PWM_SET_PRESCALER(PWM0, 4, 1600);
    PWM_SET_ALIGNED_TYPE(PWM0, (PWM_CH_0_MASK | PWM_CH_5_MASK | PWM_CH_4_MASK), PWM_EDGE_ALIGNED);
    PWM0->CTL1 |= 0x31 << PWM_CTL1_CNTMODEn_Pos;
    PWM_SET_CNR(PWM0, 0, 233);
    PWM_SET_CMR(PWM0, 0, 222);
    PWM_SET_CNR(PWM0, 5, 233);
    PWM_SET_CMR(PWM0, 5, 222);
    PWM_SET_CNR(PWM0, 4, 233);
    PWM_SET_CMR(PWM0, 4, 222);
    PWM_SET_OUTPUT_LEVEL(PWM0, 	PWM_CH_0_MASK | PWM_CH_5_MASK | PWM_CH_4_MASK,
    							PWM_OUTPUT_HIGH, // zero point
								PWM_OUTPUT_NOTHING, // up counting
								PWM_OUTPUT_NOTHING, // period
								PWM_OUTPUT_LOW); // down counting

    PWM0->POEN |= (PWM_CH_0_MASK | PWM_CH_5_MASK | PWM_CH_4_MASK);
    PWM0->CNTEN |= (PWM_CH_0_MASK | PWM_CH_5_MASK | PWM_CH_4_MASK);


    // DTR_PIN
    PC->MODE = (PC->MODE & (~GPIO_MODE_MODE0_Msk)) | (GPIO_MODE_OUTPUT << GPIO_MODE_MODE0_Pos);
    PC0 = 1;

    USBD_Open(&gsInfo, VCOM_ClassRequest, NULL);

    /* Endpoint configuration */
    VCOM_Init();
    USBD_Start();
    NVIC_EnableIRQ(USBD_IRQn);

    while(1)
    {
        VCOM_TransferData();
    }
}



/*** (C) COPYRIGHT 2014 Nuvoton Technology Corp. ***/

