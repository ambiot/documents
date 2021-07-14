[RTL8722CSM] [RTL8722DM] Timer - Using The Periodic GTimer
===========================================================
Preparation

-  Ameba x 1

Example

Ameba provides 5 hardware GTimer for users to use. The timers’
resolution are at microseconds scale. Note that the timers may have
overlapped pin with other peripherals. For example, the timer with ID 0
overlaps with PWM_3. Therefore, when we use Time 0, we cannot use the
PWM_3 on D12.

=========== =======================
**Time ID** **Note**
=========== =======================
0           Share with PWM_3
1           Share with PWM_0
2           Share with PWM_1
3           Share with PWM_2
4           Share with software RTC
=========== =======================

The timer can be set to be periodic or for single use. The periodic
timers reset periodically, and the single-use timers do not. Open the
example, "File" -> "Examples" -> "AmebaGTimer" -> "TimerPeriodical".
Compile and upload to Ameba, and press reset. In the Serial Monitor, you
can see the counter value is increased periodically.

Code Reference

The first argument of begin() is the timer id (0~5). The second argument
is the value of the timer (in microseconds). In the example, we fill in
1000000us = 1s. The third argument specifies the function to call when
the time is up. In the example, we call the "myhandler" function to
increase the counter value by 1 and print the counter value to serial
monitor.

GTimer.begin(0, 1 \* 1000 \* 1000, myhandler);

The GTimer is periodic by default, therefore "myhandler" function is
called every second. When we want to stop the GTimer, use "stop()":

GTimer.stop(0);
