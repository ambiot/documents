[RTL8722CSM] [RTL8722DM] Timer - Using The Single-Use GTimer
===============================================================
Preparation

-  Ameba x 1

Example

In this example, we use five single-use GTimer, and carry user data in
eac timer. Open the example “File” -> “Examples” -> “AmebaGTimer” ->
“TimerOneshot”. Compile and upload to Ameba, and press reset. Then you
can see the 5 timers print out log to the serial monitor in series.

Code Reference

The first argument of begin() is the Timer ID (0~4). The second argument
is the value of the timer (in microseconds). In the example, we fill in
1000000us = 1s. The third argument specifies the function to call when
the time is up. The fourth argument is to set whether this timer is a
periodic timer, we use “false” here to begin a single-use timer. The
fifth argument is the user data, we give 0 here to represent that this
is timer 0.

GTimer.begin(0, 1 \* 1000 \* 1000, myhandler, false, 0);

Next, we set up the second timer, which has timer value 2 seconds, and
user data 1. And other timers are set similarly.

GTimer.begin(1, 2 \* 1000 \* 1000, myhandler, false, 1);

In myhandler function, we print the user data to serial monitor. Since
the five timers are separately set to count for 1, 2, 3, 4, 5 seconds,
from 1 second to 5 second, the user data of each timer are printed on
the serial monitor in order. After 5 second, no log will be printed.
