#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "driver/gpio.h"

/* 引脚定义 */ 
#define LED_GPIO_PIN    GPIO_NUM_38  /* LED连接的GPIO端口 */ 
#define LED(x)          do{\
                            if(x) \
                                gpio_set_level(LED_GPIO_PIN, 1);  /* 设置LED为高电平 */ \
                            else \
                                gpio_set_level(LED_GPIO_PIN, 0);  /* 设置LED为低电平 */ \
                        }while(0)  /* 设置LED的电平状态 */ 


/* 引脚的输出的电平状态 */ 
enum GPIO_OUTPUT_STATE 
{ 
    PIN_RESET, 
    PIN_SET 
}; 
 
void led_init(void) 
{ 
    gpio_config_t gpio_init_struct = {0}; 
 
    gpio_init_struct.intr_type = GPIO_INTR_DISABLE;         /* 失能引脚中断 */ 
    gpio_init_struct.mode = GPIO_MODE_INPUT_OUTPUT;         /* 输入输出模式 */ 
    gpio_init_struct.pull_up_en = GPIO_PULLUP_ENABLE;       /* 使能上拉 */ 
    gpio_init_struct.pull_down_en = GPIO_PULLDOWN_DISABLE;  /* 失能下拉 */ 
    gpio_init_struct.pin_bit_mask = 1ull << LED_GPIO_PIN;   /* 设置的引脚的位掩码*/ 
    gpio_config(&gpio_init_struct);                         /* 配置GPIO */ 
 
    LED(1);                                                 /* 关闭LED */
}

void app_main(void)
{

    led_init();
    

    while(1)
    {
        printf("Hello-ESP32\r\n");
        LED(1);
        vTaskDelay(1000);
        LED(0);
        vTaskDelay(1000);
    }
}
