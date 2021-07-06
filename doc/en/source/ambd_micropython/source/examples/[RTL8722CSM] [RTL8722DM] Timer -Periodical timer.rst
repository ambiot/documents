.. amebaDocs documentation master file, created by
   sphinx-quickstart on Fri Dec 18 01:57:15 2020.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

===================================================
[RTL8722CSM] [RTL8722DM] Timer -Periodical timer
===================================================

**Materials**

* Ameba x 1

**Steps**

There are 3 sets of general timers available to user, each at 32KHz, they are timer 1/2/3.
Here we use timer 1 as example to demonstrate how a periodical timer works.

Copy and paste the first 3 lines of code into REPL to see its effect.


.. code-block:: html
   :linenos:
   
   from machine import Timer
   t = Timer(1) # Use Timer 1/2/3 only
   t.start(2000000, t.PERIODICAL) # Set GTimer fired periodically at duration of 2 seconds, printing text on the terminal
   # To stop the periodical timer, type
   t.stop()

A text of “–timer triggered. to stop: type t.stop()–” will be printed on the terminal every 2 seconds.To stop the timer, simply type t.stop().