#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "driver/gpio.h"
#include "led.h"


void app_main(void)
{
    uint32_t times = 0;
    led_init();
    
    while(1)
    {
        printf("times:%lu\r\n", times);
        LED(LED1_GPIO_PIN,1);
        vTaskDelay(pdMS_TO_TICKS(100));
        LED(LED2_GPIO_PIN,1);
        vTaskDelay(pdMS_TO_TICKS(100));
        LED(LED3_GPIO_PIN,1);
        vTaskDelay(pdMS_TO_TICKS(100));
        LED(LED1_GPIO_PIN,0);
        vTaskDelay(pdMS_TO_TICKS(100));
        LED(LED2_GPIO_PIN,0);
        vTaskDelay(pdMS_TO_TICKS(100));
        LED(LED3_GPIO_PIN,0);
        vTaskDelay(pdMS_TO_TICKS(100));
        times++;
    }
}
