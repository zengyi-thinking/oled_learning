#ifndef __OLED_H
#define __OLED_H			  	 
#include "ti_msp_dl_config.h"
// #define  u8 unsigned char 
// #define  u16 unsigned int
// #define  u32 unsigned int
#define OLED_CMD  0	//写命令
#define OLED_DATA 1	//写数据

#ifndef GPIO_OLED_PIN_SCL_PORT
#define GPIO_OLED_PIN_SCL_PORT GPIO_OLED_PORT 
#endif

#ifndef GPIO_OLED_PIN_SDA_PORT
#define GPIO_OLED_PIN_SDA_PORT GPIO_OLED_PORT 
#endif

//----------------------------------------------------------------------------------
//OLED SSD1306 I2C 时钟SCL
#define		OLED_SCL_Set()			    (DL_GPIO_setPins(GPIO_OLED_PIN_SCL_PORT, GPIO_OLED_PIN_SCL_PIN))
#define		OLED_SCL_Clr()				(DL_GPIO_clearPins(GPIO_OLED_PIN_SCL_PORT, GPIO_OLED_PIN_SCL_PIN))

//----------------------------------------------------------------------------------
//OLED SSD1306 I2C 数据SDA
#define		OLED_SDA_Set()				(DL_GPIO_setPins(GPIO_OLED_PIN_SDA_PORT, GPIO_OLED_PIN_SDA_PIN))
#define		OLED_SDA_Clr()			    (DL_GPIO_clearPins(GPIO_OLED_PIN_SDA_PORT, GPIO_OLED_PIN_SDA_PIN))
//测试函数
void yanshi();		
void yanshi1();	  
void OLED_Refresh(void);
void OLED_GClear(void); 
void OLED_GFill(void);
void OLED_DrawPoint(unsigned int x,unsigned int y);
void OLED_ClearPoint(unsigned int x,unsigned int y);
void FourPoints(uint8_t xStart,uint8_t yStart);

//OLED控制用函数
void delay_ms(unsigned long ms);
void OLED_ColorTurn(uint8_t i);
void OLED_DisplayTurn(uint8_t i);
void OLED_WR_Byte(uint8_t dat,uint8_t cmd);
void OLED_Set_Pos(uint8_t x, uint8_t y);
void OLED_Display_On(void);
void OLED_Display_Off(void);
void OLED_Clear(void);
void OLED_ShowChar(uint8_t x,uint8_t y,uint8_t chr,uint8_t sizey);
uint32_t oled_pow(uint8_t m,uint8_t n);
void OLED_ShowNum(uint8_t x,uint8_t y,uint32_t num,uint8_t len,uint8_t sizey);
void OLED_ShowString(uint8_t x,uint8_t y,uint8_t *chr,uint8_t sizey);
void OLED_ShowChinese(uint8_t x,uint8_t y,uint8_t no,uint8_t sizey);
void OLED_DrawBMP(uint8_t x,uint8_t y,uint8_t sizex, uint8_t sizey,uint8_t BMP[]);
void OLED_Init(void);
#endif  
	 



