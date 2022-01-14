#include "stm32f7xx.h"
#include "stm32f7xx_it.h"
#include "rcc.h"
#include "dwt.h"
#include "dshot.h"

uint16_t motor_value[4] = {0, 0, 0, 0};

int main(void){
	RCC_216MHz_Init();
	DWT_Init();

	dshot_init(DSHOT600);

	while(1){
		dshot_write(motor_value);
		delay(1);

	}
}

