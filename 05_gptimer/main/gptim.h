#ifndef GPTIM_H
#define GPTIM_H

#include "freertos/FreeRTOS.h"
#include "driver/gptimer.h"
#include "esp_log.h"
#include "freertos/queue.h"
#include <stdbool.h>
#include "led.h"

/* 参数引用 */ 
typedef struct 
{ 
    uint64_t event_count; 
} gptimer_event_t; 

extern QueueHandle_t queue; 


/* 函数声明 */ 
void gptim_int_init(uint16_t counts, uint32_t resolution); /* 初始化通用定时器 */ 
bool gptimer_callback(gptimer_handle_t timer,  
                                const gptimer_alarm_event_data_t *edata,  
                                void *user_data); /* 定时器回调函数 */


#endif /* GPTIM_H */

