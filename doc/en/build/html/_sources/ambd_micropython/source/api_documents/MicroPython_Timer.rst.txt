Timer
======



**Constructors**

**Timer(**\ *unit*\ [optional]\ **)**

Create a timer object with given unit ID.

-  **unit**: can be 1 / 2 / 3 for timer 1 / 2 / 3

**Methods**

**Timer.start(**\ *microseconds*\ [required], *type*\ [required]\ **)**

This method will start a given type of timer, either one-shot or
periodical, at duration of given microseconds.

-  **microseconds**: number of microseconds interval, must be an integer

-  **type**: either Timer. PERIODICAL or Timer.ONESHOT

**Timer.deinit()**

This method will de-initialize the Timer object created and stop the
timer.

**Timer.stop()**

This method will stop the timer and its timer interrupt handler.

**Timer.us ()**

This method will return the current timer tick in microsecond.

**Timer.tick ()**

This method will return the current timer tick in Gtimer clock(0~32768).

**Timer.reload (**\ *duration_us*\ [required]\ **)**

This method will reload the timer with given duration in microsecond.

-  **duration_us**: duration in microsecond
