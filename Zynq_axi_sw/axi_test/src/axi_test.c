#include <stdio.h>
#include "xparameters.h"
#include "xbasic_types.h"
#include "xstatus.h"

int main()
{
    int *ptr;
    int data;
    int i;
    ptr = (int *) XPAR_MYIP_SLAVE_LITE_V1_0_0_BASEADDR;
    printf("AXI write test \r\n");
    for(i = 0; i < 4; i++) 
    {
        *(ptr + i) = i;
        printf("write data is %d \r\n", i);
    }
    printf("AXI read test \r\n");

    for(i = 0; i < 4; i++)
    {
        data = *(ptr + i);
        printf("data is %d \r\n", data);
    }    
}