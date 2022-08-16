##########################################################################
GTimer - Using The Periodic GTimer
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

| Ameba provides 4 hardware GTimer for users to use. The timers’ resolutions are at microseconds scale.
| The timer can be set to be periodic or for single use. The periodic timers reset periodically, and the single-use timers do not.

| Open the example, ``“File” → “Examples” → “AmebaGTimer” → “TimerPeriodical”``. Compile and upload to Ameba, and press reset.
| In the Serial Monitor, you can see the counter value is increased periodically.

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Code Reference**
:raw-html:`</p>`

| The first argument of begin() is the timer id (0~3).
| The second argument is the value of the timer (in microseconds). 
  In the example, we fill in 1000000us = 1s.
| The third argument specifies the function to call when the time is up. 
  In the example, we call the “myhandler” function to increase the counter value by 1 
  and print the counter value to serial monitor.

.. code-block:: c

    GTimer.begin(0, 1 * 1000 * 1000, myhandler);

The GTimer is periodic by default, therefore “myhandler” function is
called every second. When we want to stop the GTimer, use ``stop()``:

.. code-block:: c
    
    GTimer.stop(0);