time
=====



**Constructors**

**N.A.**

**Methods**

**time.sleep(**\ *seconds*\ [required]\ **)**

This method will stop the microcontroller from what it is doing and
delay for the given time.

-  **seconds**: number of seconds, must be an integer

**time.sleep_ms(**\ *milliseconds*\ [required]\ **)**

This method will stop the microcontroller from what it is doing and
delay for the given time.

-  **milliseconds**: number of milliseconds, must be an integer

**time.sleep_us(**\ *microseconds*\ [required]\ **)**

This method will stop the microcontroller from what it is doing and
delay for the given time.

-  **microseconds**: number of microseconds, must be an integer

**time.time()**

This method will return the total number of seconds elapsed since Epoch
(1970-01-01).

**time.localtime()**

This method will return RTC’s local time in the following format,

(year, month, date, hour, minute, second, weekday[0-6 for Mon to Sun],
yearday[1-366])

**time.mktime(**\ *tuple*\ [required]\ **)**

This is inverse function of localtime. Its argument is a full 8-tuple
which expresses a time as per localtime. It returns an integer which is
the number of seconds since Jan 1, 2000.

-  **tuple**: an 8-element tuple

**time.ticks_ms()**

This method returns an increasing millisecond counter with an arbitrary
reference point. Normally used together with ticks_add() and
ticks_diff()

**time.ticks_add(**\ *starting_ticks*\ [required],
*ticks_added*\ [required]\ **)**

This method add given number of ticks to the starting_ticks.

-  **starting_ticks**: millisecond counter obtained from ticks_ms()

-  **ticks_added**: number of ticks to add

**time.ticks_diff(**\ *end_ticks*\ [required],
starting\_\ *ticks*\ [required]\ **)**

This method perform subtraction on parameters given and return the
difference of end_ticks minus starting_ticks.

-  **end_ticks**: millisecond counter obtained from ticks_ms()

-  **starting_ticks**: millisecond counter obtained from ticks_ms()
