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
    u32 *ptr;

    // mode set
    int setmode = 0;    // standby : 0, write : 1, read : 2
    ptr = (u32 *)AXI_BASEADDRESS;

    // address set
    int num100 = 0;
    int num10 = 0;
    int num1 = 0;

    // white mode param
    int spi_mosi_addr;
    char spi_mosi_data;
    unsigned int write_done = 0;
    
    // read mode param
    int spi_miso_addr;
    char spi_miso_data;

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

    xil_printf("\n\r==== SPI Test started ===\n\r");

    while(1) {
        xil_printf("Please set SPI mode (1 : write / 2 : read) : ");
       
        while(setmode == 0)
        {
            XUartPs_Recv(&Uart_PS, &setmode,1);
        }
        xil_printf("setmode %c\n\r", setmode);
       
        if(setmode == 49) // SPI write mode
        {
            xil_printf("Please Enter RAM write Addr (000 ~ 127) : ");
            
            while(!num100)
            {
                XUartPs_Recv(&Uart_PS, &num100,1);
            }
            xil_printf("%d",num100 - 48);

            while(!num10)
            {
                XUartPs_Recv(&Uart_PS, &num10,1);
            }
            xil_printf("%d",num10 - 48);

            while(!num1)
            {
                XUartPs_Recv(&Uart_PS, &num1,1);
            }
            xil_printf("%d",num1 - 48);

            spi_mosi_addr = 100*(num100 - 48) + 10*(num10 - 48) + (num1 - 48);
            
            *(ptr+1) = spi_mosi_addr;

            xil_printf("\n\rPlease Enter SPI MOSI data : ");
            while(write_done == 0)
            {
                write_done = XUartPs_Recv(&Uart_PS, &spi_mosi_data,1);
            }

            xil_printf("%c\n\r",spi_mosi_data);

            *ptr = spi_mosi_data;

            num100 = 0;
            num10 = 0;
            num1 = 0;

            write_done = 0;
            setmode = 0;
        }
        else if(setmode == 50) // SPI read mode
        {
            xil_printf("Please Enter RAM read Addr (000 ~ 127) : ");            

            while(!num100)
            {
                XUartPs_Recv(&Uart_PS, &num100,1);
            }
            xil_printf("%d",num100 - 48);

            while(!num10)
            {
                XUartPs_Recv(&Uart_PS, &num10,1);
            }
            xil_printf("%d",num10 - 48);

            while(!num1)
            {
                XUartPs_Recv(&Uart_PS, &num1,1);
            }
            xil_printf("%d",num1 - 48);

            spi_miso_addr = 100*(num100 - 48) + 10*(num10 - 48) + (num1 - 48);

            *(ptr+2) = spi_miso_addr;

            while(1)
            {
                int curr_reg = *(ptr+2);
                if(curr_reg == 128) break;
            }

            spi_miso_data = *(ptr+3);
            xil_printf("\n\rReceived Data from RAM : %c\n\r", spi_miso_data);

            num100 = 0;
            num10 = 0;
            num1 = 0;

            setmode = 0;
        }
        else 
        {
            xil_printf("Check your answer \n\r");
            setmode = 0;
        }

        if(setmode == 0x0d)
            break;
    }    

    xil_printf("==== UART Test Fnished ===\n\r");

    return XST_SUCCESS;
}