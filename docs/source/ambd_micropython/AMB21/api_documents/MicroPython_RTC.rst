####
RTC
####

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#0070C0; font-size:26px">`
**API Documents**
:raw-html:`</p>`

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Constructors**
:raw-html:`</p>`

| **RTC()**
| Create a RTC object.


:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Methods**
:raw-html:`</p>`

| **RTC.datetime(**\ *array_8*\ [optional]\ **)**
| This method works in 2 ways

-  | Return the local date and time if NOT passing any argument into it. 
   | The returned format is as follows:
   | (year, month, date, hour, minute, second, weekday[0-6 for Mon to Sun], yearday[1-366])
-  | Update the local date and time if passing an eight-elements array into it, the array format is same as above