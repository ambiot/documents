.. amebaDocs documentation master file, created by
   sphinx-quickstart on Fri Dec 18 01:57:15 2020.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

=====================================
[RTL8722CSM] [RTL8722DM] Time - Delay and Timing
=====================================

**Materials**

* Ameba x 1

**Steps**

MicroPython has provided rich functions to deal with time and delay, here are some examples.

Copy and paste the following code line by line into REPL to see its effect.



.. code-block:: html
   :linenos:
   
   import time
   time.sleep(1) # sleep for 1 second
   time.sleep_ms(500) # sleep for 500 milliseconds
   time.sleep_us(10) # sleep for 10 microseconds
   start = time.ticks_ms() # get millisecond counter

