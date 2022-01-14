# DShot
STM32F722 DShot Driver without Libraries

This uses TIM5 on PA0, PA1, PA2, PA3.

I recommend creating a project with STM32CubeIDE and the CubeMX. Then copy these files in.

It is obviously not the most portable code due to the lack of libraries. However, changing it to be used with different timers shouldn't require too much rewriting.
