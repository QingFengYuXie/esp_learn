#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "driver/gpio.h"
#include "esp_timer.h"
#include "led.h"
#include "timer.h"

void app_main(void)
{
    uint32_t times = 0;
    led_init();
    esptim_int_init(1000000); // 初始化高精度定时器，每秒触发一次


    while(1)
    {
        // printf("times:%lu\r\n", times);
        // LED(LED1_GPIO_PIN,1);
        // vTaskDelay(pdMS_TO_TICKS(100));
        // LED(LED2_GPIO_PIN,1);
        // vTaskDelay(pdMS_TO_TICKS(100));
        // LED(LED3_GPIO_PIN,1);
        // vTaskDelay(pdMS_TO_TICKS(100));
        // LED(LED1_GPIO_PIN,0);
        // vTaskDelay(pdMS_TO_TICKS(100));
        // LED(LED2_GPIO_PIN,0);
        // vTaskDelay(pdMS_TO_TICKS(100));
        // LED(LED3_GPIO_PIN,0);
        vTaskDelay(pdMS_TO_TICKS(100));
        // times++;
    }
}
