#ifndef LED_H_
#define LED_H_

#include "driver/gpio.h"

/* 引脚定义 */ 
#define LED1_GPIO_PIN    GPIO_NUM_37  /* LED连接的GPIO端口 */ 
#define LED2_GPIO_PIN    GPIO_NUM_38  /* LED连接的GPIO端口 */ 
#define LED3_GPIO_PIN    GPIO_NUM_39 /* 使用LED1作为默认LED引脚 */

#define LED(x,y)          do{\
                            if(y) \
                                gpio_set_level(x, 1);  /* 设置LED为高电平 */ \
                            else \
                                gpio_set_level(x, 0);  /* 设置LED为低电平 */ \
                        }while(0)  /* 设置LED的电平状态 */ 


/* 引脚的输出的电平状态 */ 
enum GPIO_OUTPUT_STATE 
{ 
    PIN_RESET, 
    PIN_SET 
}; 

void led_init(void) ; /* LED初始化函数 */


#endif /* LED_H_ */
