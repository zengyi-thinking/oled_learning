# FIXED

board.o: ../board.c ../board.h \
 ti_msp_dl_config.h \
 D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/devices/msp/msp.h \
 D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/devices/DeviceFamily.h \
 D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/devices/msp/m0p/mspm0g350x.h \
 D:/TI/CCS/mspm0_sdk_2_03_00_07/source/third_party/CMSIS/Core/Include/core_cm0plus.h \
 D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/devices/msp/peripherals/hw_adc12.h \
 D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/devices/msp/peripherals/hw_aes.h \
 D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/devices/msp/peripherals/hw_comp.h \
 D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/devices/msp/peripherals/hw_crc.h \
 D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/devices/msp/peripherals/hw_dac12.h \
 D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/devices/msp/peripherals/hw_dma.h \
 D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/devices/msp/peripherals/hw_flashctl.h \
 D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/devices/msp/peripherals/hw_gpio.h \
 D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/devices/msp/peripherals/hw_gptimer.h \
 D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/devices/msp/peripherals/hw_i2c.h \
 D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/devices/msp/peripherals/hw_iomux.h \
 D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/devices/msp/peripherals/hw_mathacl.h \
 D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/devices/msp/peripherals/hw_mcan.h \
 D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/devices/msp/peripherals/hw_oa.h \
 D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/devices/msp/peripherals/hw_rtc.h \
 D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/devices/msp/peripherals/hw_spi.h \
 D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/devices/msp/peripherals/hw_trng.h \
 D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/devices/msp/peripherals/hw_uart.h \
 D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/devices/msp/peripherals/hw_vref.h \
 D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/devices/msp/peripherals/hw_wuc.h \
 D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/devices/msp/peripherals/hw_wwdt.h \
 D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/devices/msp/peripherals/m0p/hw_factoryregion.h \
 D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/devices/msp/peripherals/m0p/hw_cpuss.h \
 D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/devices/msp/peripherals/m0p/hw_debugss.h \
 D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/devices/msp/peripherals/m0p/hw_sysctl.h \
 D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/devices/msp/peripherals/m0p/sysctl/hw_sysctl_mspm0g1x0x_g3x0x.h \
 D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/driverlib/driverlib.h \
 D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/driverlib/dl_adc12.h \
 D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/driverlib/dl_common.h \
 D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/driverlib/m0p/dl_factoryregion.h \
 D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/driverlib/m0p/dl_core.h \
 D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/driverlib/dl_aes.h \
 D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/driverlib/dl_aesadv.h \
 D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/driverlib/dl_comp.h \
 D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/driverlib/dl_crc.h \
 D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/driverlib/dl_crcp.h \
 D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/driverlib/dl_dac12.h \
 D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/driverlib/dl_dma.h \
 D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/driverlib/dl_flashctl.h \
 D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/driverlib/m0p/dl_sysctl.h \
 D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/driverlib/m0p/sysctl/dl_sysctl_mspm0g1x0x_g3x0x.h \
 D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/driverlib/dl_gpamp.h \
 D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/driverlib/dl_gpio.h \
 D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/driverlib/dl_i2c.h \
 D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/driverlib/dl_iwdt.h \
 D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/driverlib/dl_lfss.h \
 D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/driverlib/dl_keystorectl.h \
 D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/driverlib/dl_lcd.h \
 D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/driverlib/dl_mathacl.h \
 D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/driverlib/dl_mcan.h \
 D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/driverlib/dl_opa.h \
 D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/driverlib/dl_rtc.h \
 D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/driverlib/dl_rtc_common.h \
 D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/driverlib/dl_rtc_a.h \
 D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/driverlib/dl_rtc_b.h \
 D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/driverlib/dl_scratchpad.h \
 D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/driverlib/dl_spi.h \
 D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/driverlib/dl_tamperio.h \
 D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/driverlib/dl_timera.h \
 D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/driverlib/dl_timer.h \
 D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/driverlib/dl_timerg.h \
 D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/driverlib/dl_trng.h \
 D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/driverlib/dl_uart_extend.h \
 D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/driverlib/dl_uart.h \
 D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/driverlib/dl_uart_main.h \
 D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/driverlib/dl_vref.h \
 D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/driverlib/dl_wwdt.h \
 D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/driverlib/m0p/dl_interrupt.h \
 D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/driverlib/m0p/dl_systick.h
../board.h:
ti_msp_dl_config.h:
D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/devices/msp/msp.h:
D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/devices/DeviceFamily.h:
D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/devices/msp/m0p/mspm0g350x.h:
D:/TI/CCS/mspm0_sdk_2_03_00_07/source/third_party/CMSIS/Core/Include/core_cm0plus.h:
D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/devices/msp/peripherals/hw_adc12.h:
D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/devices/msp/peripherals/hw_aes.h:
D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/devices/msp/peripherals/hw_comp.h:
D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/devices/msp/peripherals/hw_crc.h:
D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/devices/msp/peripherals/hw_dac12.h:
D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/devices/msp/peripherals/hw_dma.h:
D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/devices/msp/peripherals/hw_flashctl.h:
D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/devices/msp/peripherals/hw_gpio.h:
D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/devices/msp/peripherals/hw_gptimer.h:
D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/devices/msp/peripherals/hw_i2c.h:
D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/devices/msp/peripherals/hw_iomux.h:
D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/devices/msp/peripherals/hw_mathacl.h:
D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/devices/msp/peripherals/hw_mcan.h:
D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/devices/msp/peripherals/hw_oa.h:
D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/devices/msp/peripherals/hw_rtc.h:
D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/devices/msp/peripherals/hw_spi.h:
D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/devices/msp/peripherals/hw_trng.h:
D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/devices/msp/peripherals/hw_uart.h:
D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/devices/msp/peripherals/hw_vref.h:
D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/devices/msp/peripherals/hw_wuc.h:
D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/devices/msp/peripherals/hw_wwdt.h:
D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/devices/msp/peripherals/m0p/hw_factoryregion.h:
D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/devices/msp/peripherals/m0p/hw_cpuss.h:
D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/devices/msp/peripherals/m0p/hw_debugss.h:
D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/devices/msp/peripherals/m0p/hw_sysctl.h:
D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/devices/msp/peripherals/m0p/sysctl/hw_sysctl_mspm0g1x0x_g3x0x.h:
D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/driverlib/driverlib.h:
D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/driverlib/dl_adc12.h:
D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/driverlib/dl_common.h:
D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/driverlib/m0p/dl_factoryregion.h:
D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/driverlib/m0p/dl_core.h:
D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/driverlib/dl_aes.h:
D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/driverlib/dl_aesadv.h:
D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/driverlib/dl_comp.h:
D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/driverlib/dl_crc.h:
D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/driverlib/dl_crcp.h:
D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/driverlib/dl_dac12.h:
D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/driverlib/dl_dma.h:
D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/driverlib/dl_flashctl.h:
D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/driverlib/m0p/dl_sysctl.h:
D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/driverlib/m0p/sysctl/dl_sysctl_mspm0g1x0x_g3x0x.h:
D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/driverlib/dl_gpamp.h:
D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/driverlib/dl_gpio.h:
D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/driverlib/dl_i2c.h:
D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/driverlib/dl_iwdt.h:
D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/driverlib/dl_lfss.h:
D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/driverlib/dl_keystorectl.h:
D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/driverlib/dl_lcd.h:
D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/driverlib/dl_mathacl.h:
D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/driverlib/dl_mcan.h:
D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/driverlib/dl_opa.h:
D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/driverlib/dl_rtc.h:
D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/driverlib/dl_rtc_common.h:
D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/driverlib/dl_rtc_a.h:
D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/driverlib/dl_rtc_b.h:
D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/driverlib/dl_scratchpad.h:
D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/driverlib/dl_spi.h:
D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/driverlib/dl_tamperio.h:
D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/driverlib/dl_timera.h:
D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/driverlib/dl_timer.h:
D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/driverlib/dl_timerg.h:
D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/driverlib/dl_trng.h:
D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/driverlib/dl_uart_extend.h:
D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/driverlib/dl_uart.h:
D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/driverlib/dl_uart_main.h:
D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/driverlib/dl_vref.h:
D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/driverlib/dl_wwdt.h:
D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/driverlib/m0p/dl_interrupt.h:
D:/TI/CCS/mspm0_sdk_2_03_00_07/source/ti/driverlib/m0p/dl_systick.h:
