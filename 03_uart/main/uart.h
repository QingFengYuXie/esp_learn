#ifndef _UART_H_
#define _UART_H_
#include "driver/gpio.h"
#include "driver/uart.h"

/* 串口相关定义 */
#define UART0_TX GPIO_NUM_43    
#define UART0_RX GPIO_NUM_44   


#define UART0_RX_BUF_SIZE 1024

/* 串口初始化函数 */
void uart_init(uint32_t baudrate);


#endif /* _UART_H_ */
