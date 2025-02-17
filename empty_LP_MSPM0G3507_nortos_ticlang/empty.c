/*
 * Copyright (c) 2021, Texas Instruments Incorporated
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 * *  Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *
 * *  Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * *  Neither the name of Texas Instruments Incorporated nor the names of
 *    its contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
 * THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
 * PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
 * CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
 * OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
 * OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
 * EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#include "ti_msp_dl_config.h"
#include "oled.h"
#include "bmp.h"
#include "stdio.h"

const unsigned char FOX[8][128]={
        0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
        0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
        0x00,0x00,0x00,0x00,0x00,0x00,0xC0,0xF8,0xFC,0x1F,0x87,0xE7,0xC7,0x86,0x0E,0x0E,
        0x1C,0x1C,0x38,0x70,0xF0,0xE0,0xC0,0x80,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
        0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x80,0xC0,0xE0,0xF0,0x70,0x38,0x38,0x1C,0x0C,
        0x0E,0x8E,0xC7,0xE7,0xC7,0x1F,0x7E,0xF8,0xE0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
        0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
        0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
        0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
        0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
        0x00,0x00,0x00,0x00,0x00,0xF8,0xFF,0xFF,0xF1,0xFE,0xFF,0xFF,0xFF,0xFF,0xFF,0xFE,
        0x9C,0x38,0x30,0x00,0x00,0x01,0x03,0x07,0x1F,0x3E,0x38,0x1C,0x1C,0x1C,0x1C,0x1C,
        0x1C,0x1C,0x1C,0x1C,0x18,0x3C,0x1F,0x0F,0x03,0x01,0x00,0x00,0x20,0x38,0x9C,0xFE,
        0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xF8,0xFF,0xFF,0xFE,0x00,0x00,0x00,0x00,0x00,0x00,
        0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
        0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
        0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x1F,
        0xFC,0xE0,0x80,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
        0x00,0x00,0x00,0x00,0x00,0xBF,0xFF,0xFF,0x7F,0x3F,0x3F,0x1F,0x0F,0x0F,0x07,0x07,
        0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
        0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x03,
        0x07,0x0F,0x0F,0x1F,0x3F,0x3F,0x7F,0xFF,0xFF,0xFF,0x00,0x00,0x00,0x00,0x00,0x00,
        0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x80,0xC0,0xF8,0x3E,
        0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
        0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x18,0x70,0xE0,0xC0,
        0x80,0x07,0x1F,0x3F,0x7E,0xF8,0xF0,0xE0,0xE0,0xC0,0x80,0x00,0x00,0x00,0x40,0x60,
        0xF8,0xFC,0xFE,0xF7,0x73,0x33,0x11,0x00,0x80,0x80,0x80,0x80,0x80,0x80,0x00,0x00,
        0x00,0x18,0x18,0xF0,0xC0,0x80,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
        0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x80,0xC0,0xF0,0x18,0x08,0x10,0x00,
        0x00,0x00,0xC0,0x80,0x80,0x80,0x80,0x00,0x11,0x31,0x73,0xF7,0xFE,0xFC,0xF8,0x70,
        0x40,0x00,0x00,0x00,0x80,0x80,0xC0,0xE0,0xF0,0xF8,0xFC,0x7F,0x1B,0x0F,0x81,0xC0,
        0xE0,0x60,0x18,0x08,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
        0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x01,
        0x37,0x6F,0xDE,0x9E,0x08,0x1C,0xF9,0xF3,0xF7,0xF7,0xEF,0xEF,0xEF,0xDE,0xFE,0xFE,
        0xFF,0xFF,0xFF,0xFF,0xFE,0xFE,0xFF,0xFF,0xFF,0xF7,0xE7,0x67,0x0F,0x0F,0x0C,0x08,
        0x18,0x10,0x20,0x43,0x86,0x05,0x05,0x06,0x06,0x1E,0x03,0x00,0x00,0x00,0x00,0x00,
        0x00,0x00,0x00,0x00,0x01,0x7A,0x06,0x06,0x07,0x05,0x84,0x43,0x20,0x30,0x10,0x08,
        0x08,0x0E,0x0F,0x67,0xE7,0xF7,0xFF,0xFF,0xFF,0xFF,0xFE,0xFE,0xFF,0xFF,0xFF,0xFE,
        0xFE,0xDE,0xEE,0xEF,0xEF,0xE7,0xF7,0xF3,0xF9,0x39,0x1C,0xBC,0xDE,0xCF,0x27,0x13,
        0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
        0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
        0x00,0x00,0x01,0x03,0x07,0x80,0x0F,0x1F,0x3F,0x3F,0x3F,0x7F,0x7F,0x6F,0xE7,0xF7,
        0xFB,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFE,0xFE,0xFE,
        0xFC,0xF8,0xF0,0xE0,0xC0,0x03,0x0C,0x70,0xC0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
        0x00,0x00,0x00,0x00,0x00,0x00,0x80,0x70,0x1C,0x07,0x81,0xE0,0xF0,0xF8,0xFC,0xFC,
        0xFE,0xFE,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,
        0xF7,0xEF,0x7F,0x5F,0x7F,0x3F,0x3F,0x1F,0x1F,0x83,0x47,0x03,0x01,0x00,0x00,0x00,
        0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
        0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x08,0x30,0x70,0xE0,0xE0,
        0x60,0x60,0x40,0x80,0x80,0xC0,0xC0,0xC1,0xC3,0xE3,0xE3,0xE3,0xF2,0xF7,0xFE,0xFF,
        0xFF,0x7F,0x4F,0xBF,0xE7,0x77,0x63,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0x3F,0x0F,
        0x01,0x01,0x01,0x03,0x0F,0x1F,0x7C,0xF8,0xF1,0xE7,0xCC,0xDC,0x9C,0xBE,0xBE,0xBE,
        0xBE,0xBE,0xBC,0x9C,0xCC,0xE6,0xE3,0xF8,0x7C,0x3E,0x0F,0x07,0x03,0x01,0x01,0x03,
        0x3F,0x7F,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xEB,0x77,0xE7,0xFF,0x1F,0x77,0xFF,0xFF,
        0xFE,0xF6,0xF2,0xE0,0xE3,0xE3,0xC3,0xC1,0xC0,0xC0,0xC0,0x80,0xC0,0x40,0x60,0x60,
        0xE0,0x70,0x30,0x18,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
        0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
        0x03,0x33,0x67,0x67,0xE7,0xE7,0xE7,0xE7,0xE7,0xF7,0xF7,0xF3,0x7B,0x39,0x3D,0x1C,
        0x0E,0x06,0x03,0x01,0x00,0x02,0x03,0x03,0x03,0x03,0x01,0x01,0x00,0x00,0x00,0x00,
        0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x03,0x07,0x0F,0x1D,0x1B,0x1B,0x19,0x1B,
        0x19,0x1B,0x1B,0x19,0x0F,0x07,0x03,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
        0x00,0x00,0x00,0x01,0x01,0x01,0x03,0x03,0x03,0x02,0x00,0x01,0x03,0x07,0x0E,0x1C,
        0x3D,0x39,0x7B,0x73,0xF7,0xF7,0xE7,0xE7,0xE7,0xE7,0xE7,0xE7,0x67,0x33,0x13,0x00,
        0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,/*"D:\Download\DaMingHu.bmp",0*/

};
char str[30];
uint8_t num=1;

void Mask_Gray(uint8_t xStart,uint8_t yStart){
    uint8_t x,y;
    bool z;
    for(y=yStart;y<64;y+=2){
        for(x=xStart;x<128;x+=3){
            z=FOX[y/8][x]&(0x01<<(y%8));
            if(z==1){
            OLED_DrawPoint(x,y);
        }
            
        }
        
    }OLED_Refresh();
}

void Mask_Gray_f(uint8_t xStart,uint8_t yStart){
    uint8_t x,y;
    bool z;
    for(y=yStart;y<64;y+=2){
        for(x=xStart;x<128;x+=3){
            z=FOX[y/8][x]&(0x01<<(y%8));
            if(z==1){
            OLED_ClearPoint(x,y);
        }
            
        }
        
    }OLED_Refresh();
}
int main(void)
{
    SYSCFG_DL_init();
    OLED_Init();
    OLED_Clear();

    // OLED_GClear();OLED_Refresh();delay_ms(200);
     
    // Mask_Gray(0,0);OLED_Refresh();delay_ms(200);
    // Mask_Gray(1,1);OLED_Refresh();delay_ms(200);
    // Mask_Gray(2,0);OLED_Refresh();delay_ms(200);
    // Mask_Gray(0,1);OLED_Refresh();delay_ms(200);
    // Mask_Gray(1,0);OLED_Refresh();delay_ms(200);
    // Mask_Gray(2,1);OLED_Refresh();delay_ms(200);

    // Mask_Gray_f(0,0);OLED_Refresh();delay_ms(200);
    // Mask_Gray_f(1,1);OLED_Refresh();delay_ms(200);
    // Mask_Gray_f(2,0);OLED_Refresh();delay_ms(200);
    // Mask_Gray_f(0,1);OLED_Refresh();delay_ms(200);
    // Mask_Gray_f(1,0);OLED_Refresh();delay_ms(200);
    // Mask_Gray_f(2,1);OLED_Refresh();delay_ms(200);



    while (1) {
        
        //sprintf(str,"NUM:%d",num);
        //OLED_ShowString(10,10,(uint8_t *)str,16);
        //OLED_ShowChinese(16,32,2,16);
        yanshi();
        //yanshi1();
        delay_ms(100);
    }
}
