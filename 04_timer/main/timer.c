#include "timer.h"

/** 
 * @brief       初始化高精度定时器（ESP_TIMER） 
 * @param       tps: 定时器周期，以微妙为单位（μs），以一秒为定时器周期来执行一次定时器中
断，那此处tps = 1s = 1000000μs 
 * @retval      无 
 */ 
void esptim_int_init(uint64_t tps) 
{ 
    esp_timer_handle_t esp_tim_handle;                    /* 定时器回调函数句柄 */ 
 
    /* 定义一个定时器结构体 */ 
    esp_timer_create_args_t tim_periodic_arg = { 
        .callback = &esptim_callback,                      /* 设置回调函数 */ 
        .arg = NULL,                                      /* 不携带参数 */ 
    }; 
 
    esp_timer_create(&tim_periodic_arg, &esp_tim_handle); /* 创建一个事件 */ 
    esp_timer_start_periodic(esp_tim_handle, tps);        /* 每周期内触发一次 */ 

} 


uint32_t time=0;

void esptim_callback(void *arg) 
{
    time++;
    LED_TOGGLE(); /* 切换LED状态 */
} 












