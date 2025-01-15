/********************************************************************
*   Copyright (C) 2024 WeDu Solution Co., Ltd. All Right Reserved
*   SPDX-License-Identifier: MIT
********************************************************************/


/*******************************************************************/
/**
*
* @file      uart_test.app
*   this test the uart
* @note
* MODIFICATION HISTORY:
* <pre>
* 1.00a  lebits 12/30/2024  First Release
* <pre>
********************************************************************/


/************************** Include Files **************************/
#include "xparameters.h"
#include "xil_types.h"
#include "xuartps.h"
#include "xil_printf.h"


/*********************** Constant Definitions ***********************/
#define XUARTPS_BASEADDRESS XPAR_XUARTPS_0_BASEADDR
#define AXI_BASEADDRESS     0x40000000


#define TEST_BUFFER_SIZE    10
/*************************** Type Definitions ***********************/


/************** Macros (Inline Functions) Definitions ***************/


/********************* Function Prototypes **************************/


/********************* Variable Definitions *************************/


XUartPs Uart_PS;        /* Instance of the UART Device */




//static u8 SendBuffer[TEST_BUFFER_SIZE];     //buffer for transmitting data
//static u8 RecvBuffer[TEST_BUFFER_SIZE];
/*****************************************************************************/
/**
*
* Main function.
*
*
* @return   XST_SUCCESS if successful, otherwise XST_FAILURE
*
* @note     None
*
******************************************************************************/


int main(void) {


    int Status;
    XUartPs_Config *Config;
    unsigned int ReceivedCount;
    char uart_tx_data;
    char uart_rx_data;
    u32 *ptr;
    // unsigned int uart_tx_status;    
    unsigned int uart_rx_status;


    /*
     * Initialize the UART driver so that it's ready to use.
     * Look up the configuration in the config table, then initialize it.
     */
    Config = XUartPs_LookupConfig(XUARTPS_BASEADDRESS);
    if (NULL == Config) {
        return XST_FAILURE;
    }


    Status = XUartPs_CfgInitialize(&Uart_PS, Config, Config->BaseAddress);
    if (Status != XST_SUCCESS) {
        return XST_FAILURE;
    }

    xil_printf("\n\r==== UART Test started ===\n\r");

    // TX set
    ReceivedCount = 0;
    ptr = (u32 *)AXI_BASEADDRESS;

    // RX set
    uart_rx_status = 0;


    while(1) {
        xil_printf("Please Enter UART TX Data :");
       
        while((ReceivedCount == 0) && (uart_rx_status==0))
        {
            ReceivedCount = XUartPs_Recv(&Uart_PS, &uart_tx_data,1);
            uart_rx_status = *(ptr+2);
            //xil_printf("\n\r Received count %x  Data %x\n\r", ReceivedCount, uart_rx_status);
        }
       
        if(ReceivedCount == 1) // UART TX
        {
            xil_printf("\n\r Received Data %x\n\r",uart_tx_data);

            *(ptr+1) = uart_tx_data;

            *ptr = 1;     

            *ptr = 0;

            ReceivedCount = 0;
        }
        else // UART RX
        {
            uart_rx_data = *(ptr+3);
            xil_printf("\n\r Received Data from RX %x\n\r",uart_rx_data);            

            uart_rx_status = 0;
            *(ptr+2) = 0;
        }

        if(uart_tx_data == 0x0d)
            break;
    }    

    xil_printf("==== UART Test Fnished ===\n\r");

    return XST_SUCCESS;

}