##########################################################################
GTimer - Using the One-Time Gtimer
##########################################################################

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Preparation**
:raw-html:`</p>`

 - AmebaD [AMB21 / AMB22 / AMB23 / BW16] x 1

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Example**
:raw-html:`</p>`

In this example, we will use 4 One-Time GTimer, and pass user data to each timer.

Open the example ``“File” → “Examples” → “AmebaGTimer” → “TimerOneshot”``. 
Compile and upload to Ameba, and press reset. 
Then you can see the 4 timer log printed to the serial monitor in series.

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Code Reference**
:raw-html:`</p>`

The first argument of begin() is the Timer ID (0~3). The second argument is the value of the timer (in microseconds).
In the example, we fill in 1000000us = 1s. The third argument specifies the function to call when the time is up.
The fourth argument is to set whether this timer is a periodic timer, we use “false” here to begin a single-use timer.
The fifth argument is the user data, we give 0 here to represent that this is timer 0.

.. code-block:: c
    
    GTimer.begin(0, 1 * 1000 * 1000, myhandler, false, 0);

Next, we set up the second timer, which has timer value 2 seconds, and
user data 1. And other timers are set similarly.

.. code-block:: c
    
    GTimer.begin(1, 2 * 1000 * 1000, myhandler, false, 1);

In myhandler function, we print the user data to serial monitor. 
Since the 4 timers are separately set to count for 1, 2, 3, 4 seconds, 
from 1 second to 4 second, the user data of each timer are printed on 
the serial monitor in order. After 4 second, no log will be printed.