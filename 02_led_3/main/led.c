#include "led.h"

void led_init(void) 
{ 
    gpio_config_t gpio_init_struct = {0}; 
 
    gpio_init_struct.intr_type = GPIO_INTR_DISABLE;         /* 失能引脚中断 */ 
    gpio_init_struct.mode = GPIO_MODE_INPUT_OUTPUT;         /* 输入输出模式 */ 
    gpio_init_struct.pull_up_en = GPIO_PULLUP_ENABLE;       /* 使能上拉 */ 
    gpio_init_struct.pull_down_en = GPIO_PULLDOWN_DISABLE;  /* 失能下拉 */ 
    gpio_init_struct.pin_bit_mask = (1ull << LED1_GPIO_PIN) | (1ull << LED2_GPIO_PIN) 
                            | (1ull << LED3_GPIO_PIN);      /* 设置的引脚的位掩码*/ 
    gpio_config(&gpio_init_struct);                         /* 配置GPIO */ 
 
    LED(LED1_GPIO_PIN,0);                                   /* 关闭LED1 */
    LED(LED2_GPIO_PIN,0);                                   /* 关闭LED2 */
    LED(LED3_GPIO_PIN,0);                                   /* 关闭LED3 */
}



