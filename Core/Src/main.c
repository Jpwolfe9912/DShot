#include "board.h"

uint32_t j = 48;
uint16_t motor_value[4] = {0, 0, 0, 0};

int main(void){

	RCC_216MHz_Init();
	DWT_Init();

	dshot_init(DSHOT600);



	for(int i = 0; i < 30000; i++){
		dshot_write(motor_value);
		delayMicroseconds(100);
	}
	uint32_t count = 0;
	uint8_t dir = 1;
	while (1)
	{
		if (dir){
			if(!(count %= 10))
				motor_value[1] = ++j;
			if(j > 547)
				dir = 0;
		}
		else{
			if(!(count %= 10))
				motor_value[1] = --j;
			if(j < 48)
				dir = 1;
		}
		dshot_write(motor_value);
		delay(1);
		count++;
	}
}
