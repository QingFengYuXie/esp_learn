#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "freertos/queue.h"
#include "esp_log.h"
#include "driver/gpio.h"
#include "driver/gptimer.h"
#include "led.h"
#include "gptim.h" 

void app_main(void)
{
    uint8_t record=0; 
    gptimer_event_t g_tim_evente; 
    led_init();
    gptim_int_init(100,1000000);
    while(1)
    {
        record = 1; 
        /* 打印通用定时器发生一次计数事件后获取到的值 */ 
        if (xQueueReceive(queue, &g_tim_evente, 2000)) 
        { 
            ESP_LOGI("GPTIMER_ALARM",  
                    "定时器报警, 计数值： %llu",  
                    g_tim_evente.event_count);    
            record--; 
        } 
        else 
        { 
            ESP_LOGW("GPTIMER_ALARM", "错过一次计数事件"); 
        } 
    } 
    vQueueDelete(queue); 
}
