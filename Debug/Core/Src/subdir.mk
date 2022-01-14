################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/dshot.c \
../Core/Src/dwt.c \
../Core/Src/main.c \
../Core/Src/rcc.c \
../Core/Src/stm32f7xx_it.c \
../Core/Src/syscalls.c \
../Core/Src/sysmem.c \
../Core/Src/system_stm32f7xx.c 

OBJS += \
./Core/Src/dshot.o \
./Core/Src/dwt.o \
./Core/Src/main.o \
./Core/Src/rcc.o \
./Core/Src/stm32f7xx_it.o \
./Core/Src/syscalls.o \
./Core/Src/sysmem.o \
./Core/Src/system_stm32f7xx.o 

C_DEPS += \
./Core/Src/dshot.d \
./Core/Src/dwt.d \
./Core/Src/main.d \
./Core/Src/rcc.d \
./Core/Src/stm32f7xx_it.d \
./Core/Src/syscalls.d \
./Core/Src/sysmem.d \
./Core/Src/system_stm32f7xx.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/%.o: ../Core/Src/%.c Core/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -c -I"/Users/jeremywolfe/Documents/STM32CubeIDE/DShot/Drivers/CMSIS/Device/ST/STM32F7xx/Include" -I"/Users/jeremywolfe/Documents/STM32CubeIDE/DShot/Drivers/CMSIS/Include" -I"/Users/jeremywolfe/Documents/STM32CubeIDE/DShot/Core/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

