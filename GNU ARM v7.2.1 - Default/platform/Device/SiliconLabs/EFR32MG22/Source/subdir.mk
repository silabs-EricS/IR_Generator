################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../platform/Device/SiliconLabs/EFR32MG22/Source/system_efr32mg22.c 

OBJS += \
./platform/Device/SiliconLabs/EFR32MG22/Source/system_efr32mg22.o 

C_DEPS += \
./platform/Device/SiliconLabs/EFR32MG22/Source/system_efr32mg22.d 


# Each subdirectory must supply rules for building sources it contributes
platform/Device/SiliconLabs/EFR32MG22/Source/system_efr32mg22.o: ../platform/Device/SiliconLabs/EFR32MG22/Source/system_efr32mg22.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DHAL_CONFIG=1' '-DNVM3_DEFAULT_NVM_SIZE=24576' '-D__StackLimit=0x20000000' '-D__HEAP_SIZE=0xD00' '-D__STACK_SIZE=0x800' '-DEFR32MG22C224F512IM40=1' -I"C:\Users\ersu\Silabs\v4_workspace\BRD4182A_ir_generator" -I"C:\Users\ersu\Silabs\v4_workspace\BRD4182A_ir_generator\platform\radio\rail_lib\common" -I"C:\Users\ersu\Silabs\v4_workspace\BRD4182A_ir_generator\platform\CMSIS\Include" -I"C:\Users\ersu\Silabs\v4_workspace\BRD4182A_ir_generator\hardware\kit\EFR32MG22_BRD4182A\config" -I"C:\Users\ersu\Silabs\v4_workspace\BRD4182A_ir_generator\platform\Device\SiliconLabs\EFR32MG22\Include" -I"C:\Users\ersu\Silabs\v4_workspace\BRD4182A_ir_generator\platform\halconfig\inc\hal-config" -I"C:\Users\ersu\Silabs\v4_workspace\BRD4182A_ir_generator\platform\emlib\src" -I"C:\Users\ersu\Silabs\v4_workspace\BRD4182A_ir_generator\platform\service\sleeptimer\src" -I"C:\Users\ersu\Silabs\v4_workspace\BRD4182A_ir_generator\platform\emdrv\nvm3\inc" -I"C:\Users\ersu\Silabs\v4_workspace\BRD4182A_ir_generator\platform\bootloader\api" -I"C:\Users\ersu\Silabs\v4_workspace\BRD4182A_ir_generator\hardware\kit\common\drivers" -I"C:\Users\ersu\Silabs\v4_workspace\BRD4182A_ir_generator\hardware\kit\common\bsp" -I"C:\Users\ersu\Silabs\v4_workspace\BRD4182A_ir_generator\protocol\bluetooth\ble_stack\inc\soc" -I"C:\Users\ersu\Silabs\v4_workspace\BRD4182A_ir_generator\platform\emdrv\sleep\inc" -I"C:\Users\ersu\Silabs\v4_workspace\BRD4182A_ir_generator\platform\emlib\inc" -I"C:\Users\ersu\Silabs\v4_workspace\BRD4182A_ir_generator\app\bluetooth\common\util" -I"C:\Users\ersu\Silabs\v4_workspace\BRD4182A_ir_generator\protocol\bluetooth\ble_stack\inc\common" -I"C:\Users\ersu\Silabs\v4_workspace\BRD4182A_ir_generator\platform\service\sleeptimer\inc" -I"C:\Users\ersu\Silabs\v4_workspace\BRD4182A_ir_generator\platform\radio\rail_lib\protocol\ieee802154" -I"C:\Users\ersu\Silabs\v4_workspace\BRD4182A_ir_generator\platform\emdrv\gpiointerrupt\inc" -I"C:\Users\ersu\Silabs\v4_workspace\BRD4182A_ir_generator\platform\emdrv\sleep\src" -I"C:\Users\ersu\Silabs\v4_workspace\BRD4182A_ir_generator\hardware\kit\common\halconfig" -I"C:\Users\ersu\Silabs\v4_workspace\BRD4182A_ir_generator\platform\Device\SiliconLabs\EFR32MG22\Source" -I"C:\Users\ersu\Silabs\v4_workspace\BRD4182A_ir_generator\platform\radio\rail_lib\chip\efr32\efr32xg2x" -I"C:\Users\ersu\Silabs\v4_workspace\BRD4182A_ir_generator\platform\emdrv\nvm3\src" -I"C:\Users\ersu\Silabs\v4_workspace\BRD4182A_ir_generator\platform\emdrv\uartdrv\inc" -I"C:\Users\ersu\Silabs\v4_workspace\BRD4182A_ir_generator\platform\Device\SiliconLabs\EFR32MG22\Source\GCC" -I"C:\Users\ersu\Silabs\v4_workspace\BRD4182A_ir_generator\platform\radio\rail_lib\protocol\ble" -I"C:\Users\ersu\Silabs\v4_workspace\BRD4182A_ir_generator\platform\common\inc" -I"C:\Users\ersu\Silabs\v4_workspace\BRD4182A_ir_generator\platform\service\sleeptimer\config" -I"C:\Users\ersu\Silabs\v4_workspace\BRD4182A_ir_generator\platform\emdrv\common\inc" -I"C:\Users\ersu\Silabs\v4_workspace\BRD4182A_ir_generator\platform\bootloader" -O0 -Wall -c -fmessage-length=0 -ffunction-sections -fdata-sections -mfpu=fpv5-sp-d16 -mfloat-abi=hard -MMD -MP -MF"platform/Device/SiliconLabs/EFR32MG22/Source/system_efr32mg22.d" -MT"platform/Device/SiliconLabs/EFR32MG22/Source/system_efr32mg22.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


