#include "gptim.h" 



/** 
 * @brief       初始化通用定时器 
 * @param       counts: 计数值 
 * @param       resolution: 定时器周期，resolution = 1s = 1000000μs 
（此处，定时器以微秒作为计算单位，） 
 * @retval      无 
 */ 
void gptim_int_init(uint16_t counts, uint32_t resolution) 
{ 
    gptimer_alarm_config_t alarm_config; 
 
    uint64_t count; 
 
    /* 配置通用定时器 */ 
    ESP_LOGI("GPTIMER_ALARM", "配置通用定时器"); /* 创建通用定时器句柄 */ 
    gptimer_handle_t g_tim = NULL; 
    gptimer_config_t g_tim_handle = { 
        .clk_src = GPTIMER_CLK_SRC_DEFAULT,  /* 选择定时器时钟源 */ 
        .direction = GPTIMER_COUNT_UP,       /* 递增计数模式 */ 
        .resolution_hz = resolution,         /* 计数器分辨率 */ 
    }; 
    gptimer_event_callbacks_t g_tim_callbacks = { 
        .on_alarm = gptimer_callback,        /* 注册用户回调函数 */                                            
    }; 
    alarm_config.alarm_count = 1000000;      /* 报警目标计数值 */                                 
     
    /* 创建新的通用定时器，并返回句柄 */ 
    ESP_ERROR_CHECK(gptimer_new_timer(&g_tim_handle, &g_tim));                           
    
    /* 创建一个队列，并引入一个事件 */ 
    queue = xQueueCreate(10, sizeof(gptimer_event_t));                                   
                                  
    if (!queue) 
    { 
        ESP_LOGE("GPTIMER_ALARM", "创建队列失败");  /* 创建队列失败 */                                     
        return; 
    } 
 
    /* 设置和获取计数值 */ 
    ESP_LOGI("GPTIMER_ALARM", "设置计数值"); 
    ESP_ERROR_CHECK(gptimer_set_raw_count(g_tim, counts));  /* 设置计数值 */ 
    ESP_LOGI("GPTIMER_ALARM", "获取计数值"); 
    ESP_ERROR_CHECK(gptimer_get_raw_count(g_tim, &count));   /* 获取计数值 */ 
    ESP_LOGI("GPTIMER_ALARM", "定时器计数值： %llu", count); 
 
    /* 注册事件回调函数 */ 
    ESP_ERROR_CHECK(gptimer_register_event_callbacks(g_tim,  
                                                    &g_tim_callbacks,  
                                                    queue));   
 
    /* 设置报警动作 */ 
    ESP_LOGI("GPTIMER_ALARM", "使能通用定时器"); 
    ESP_ERROR_CHECK(gptimer_enable(g_tim)); /* 使能通用定时器 */ 
 
    /* 配置通用定时器报警事件 */ 
    ESP_ERROR_CHECK(gptimer_set_alarm_action(g_tim, &alarm_config));                     
    ESP_ERROR_CHECK(gptimer_start(g_tim));  /* 启动通用定时器 */                                             
} 
 
QueueHandle_t queue = NULL;
bool IRAM_ATTR gptimer_callback(gptimer_handle_t timer,  
                                const gptimer_alarm_event_data_t *edata,  
                                void *user_data) 
{ 
    BaseType_t high_task_awoken = pdFALSE; 
    queue = (QueueHandle_t)user_data; 
    /* 从事件数据中检索计数值 */ 
    gptimer_event_t ele = { 
        .event_count = edata->count_value 
    }; 
    /* 可选：通过操作系统队列将事件数据发送到其他任务 */ 
    xQueueSendFromISR(queue, &ele, &high_task_awoken); 
    /* 重新配置报警值 */  
    gptimer_alarm_config_t alarm_config = { 
        .alarm_count = edata->alarm_value + 1000000, /* 在接下来的1 秒内报警 */  
    }; 
    gptimer_set_alarm_action(timer, &alarm_config); 
    /* 返回是否需要在ISR结束时让步 */  
    return high_task_awoken == pdTRUE; 
}

