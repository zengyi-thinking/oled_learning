################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Each subdirectory must supply rules for building sources it contributes
Hardware/oled/%.o: ../Hardware/oled/%.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: Arm Compiler'
	"D:/TI/CCS/ccs/tools/compiler/ti-cgt-armllvm_4.0.0.LTS/bin/tiarmclang.exe" -c @"device.opt"  -march=thumbv6m -mcpu=cortex-m0plus -mfloat-abi=soft -mlittle-endian -mthumb -O2 -I"C:/Users/33552/workspace_ccstheia/empty_LP_MSPM0G3507_nortos_ticlang" -I"C:/Users/33552/workspace_ccstheia/empty_LP_MSPM0G3507_nortos_ticlang/Hardware" -I"C:/Users/33552/workspace_ccstheia/empty_LP_MSPM0G3507_nortos_ticlang/Hardware/oled" -I"C:/Users/33552/workspace_ccstheia/empty_LP_MSPM0G3507_nortos_ticlang/Debug" -I"D:/TI/CCS/mspm0_sdk_2_03_00_07/source/third_party/CMSIS/Core/Include" -I"D:/TI/CCS/mspm0_sdk_2_03_00_07/source" -gdwarf-3 -MMD -MP -MF"Hardware/oled/$(basename $(<F)).d_raw" -MT"$(@)"  $(GEN_OPTS__FLAG) -o"$@" "$<"
	@echo 'Finished building: "$<"'
	@echo ' '


