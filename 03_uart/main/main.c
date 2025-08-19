#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "driver/gpio.h"
#include "driver/uart.h"
#include "led.h"
#include "uart.h"
#include <string.h>
#include <stdio.h>


uint32_t times = 0;
uint8_t len = 0; 
unsigned char data[UART0_RX_BUF_SIZE] = {0};
void app_main(void)
{
    led_init();
    uart_init(115200);

    uint8_t data[UART0_RX_BUF_SIZE];
    size_t len = 0;

    while (1)
    {
        // 读取 UART1 的数据
        uart_get_buffered_data_len(UART_NUM_0, &len);
        if (len > 0)
        {
            int rx_len = uart_read_bytes(UART_NUM_0, data, len, pdMS_TO_TICKS(100));
            if (rx_len > 0)
            {
                // 回显到 UART0
                uart_write_bytes(UART_NUM_0, (const char*)data, rx_len);
            }
            times++;
        }
        printf("times: %lu\n", times);
        led_toggle();  // 切换LED状态
        vTaskDelay(pdMS_TO_TICKS(100));  // 避免 watchdog
    }

}
