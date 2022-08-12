##########################################################################
Watchdog - Simple WDG Timer
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

In this example, we will use this simple watchdog timer example runs on
the Ameba RTL8722 module to illustrate how to use the watchdog API.
Before we get into the details of the example, let’s briefly go through
the definition of Watchdog as well as it’s working principles.

**Watchdog**

Watchdog Timer (WDT) is a hardware timer that is used to detect the
occurrence of a software fault, then automatically generates a system
reset or a watchdog interrupt on the expiry of a programmed period.

In layman terms, imagine in the situation while your micro-controller is
confused in an infinity loop, or any case like the micro-controller hang
while performing some tasks. The normal troubleshooting method would be
to press the reset button and jump out of the infinity loop. However, is
it practically impossible to do press on the button all time, therefore,
the watchdog timer that embedded inside the micro-controller would help
with this situation.

  |1|

**Feed the Dog**

| If you have a dog in your home. You need to feed that dog at a regular
  interval. if you can’t feed one day, it will bite you! And likewise,
  this is the working logic behind the watchdog timer.

| In our example, we created 2 tasks that contain some loop that runs repeatedly, 
  one is called “Small_Task” and the other is called “Big_Task”. 
  We are enabling the watchdog timer is loaded with an initial value (5 seconds) 
  greater than the total delay in the “Small_Task”, but shorter than the “Big_Task”.
| For the successful case, the watchdog is being refreshed/feed within 5 seconds, 
  however, for the failed case, the loop is under processing and the watchdog is 
  not being fresh after 5 seconds, which triggers the watchdog (dog barks), 
  an interrupt is generated to reset the processor. Likewise, the watchdog timer 
  protects the micro-controller from the hanging case.

| Then we move to the coding part for this example, for this example, 
  you will only need the RTL8722CSM/RTL8722DM/RTL8722DM MINI Board itself.

| Firstly, make sure the correct Ameba development board is selected in
  Arduino IDE: ``“Tools” → “Board” → “RTL8722CSM/RTL8722DM” (or “RTL8722DM MINI”)``. 
  Then open the “Watchdog Timer” example in ``“File” → “Examples” → “AmebaWatchdog” →
  “Watchdog Timer”``:

  |2|

| Upon successfully upload the sample code, open the serial monitor, 
  and press the reset button. You will find that the “Small_Task” can refresh the 
  watchdog within the 5 seconds (initialized in the watchdog timer). 
  However, the “Big_Task” will not be able to refresh the watchdog within 5 seconds, 
  which the watchdog “barks” then the microcontroller reset.

  |3|

  |4|

.. |1| image:: /media/ambd_arduino/Watchdog_Simple_WDG_Timer/image1.png
   :width: 907
   :height: 552
   :scale: 60 %
.. |2| image:: /media/ambd_arduino/Watchdog_Simple_WDG_Timer/image2.png
   :width: 595
   :height: 740
   :scale: 60 %
.. |3| image:: /media/ambd_arduino/Watchdog_Simple_WDG_Timer/image3.png
   :width: 383
   :height: 628
   :scale: 100 %
.. |4| image:: /media/ambd_arduino/Watchdog_Simple_WDG_Timer/image4.png
   :width: 379
   :height: 419
   :scale: 100 %