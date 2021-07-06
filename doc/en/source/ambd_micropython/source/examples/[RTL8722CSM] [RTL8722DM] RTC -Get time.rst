.. amebaDocs documentation master file, created by
   sphinx-quickstart on Fri Dec 18 01:57:15 2020.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

==========================================
[RTL8722CSM] [RTL8722DM] RTC -Get time
==========================================

**Materials**

* Ameba x 1

**Steps**

RTC module help microcontroller to keep track of time and is essential to our time module. Here we an example to demonstrate how to get local time and update the time.

Copy and paste the following code line by line into REPL to see its effect.

.. code-block:: html
   :linenos:
   
   rtc = RTC()
   rtc.datetime() # get date and time 
   rtc.datetime((2020, 12, 31, 4, 23, 58, 59, 0)) # set a specific date and time (year, month, day, weekday(0 for Monday), hour, minute, second, total seconds)
   rtc.datetime() # check the updated date and time


