RTC
===



**Constructors**

**RTC()**

Create a RTC object.

**Methods**

**RTC.datetime(**\ *array_8*\ [optional]\ **)**

This method works in 2 ways

-  Return the local date and time if NOT passing any argument into it.
   The returned format is as follows,

(year, month, date, hour, minute, second, weekday[0-6 for Mon to Sun],
yearday[1-366])

-  Update the local date and time if passing an eight-elements array
   into it, the array format is same as above
