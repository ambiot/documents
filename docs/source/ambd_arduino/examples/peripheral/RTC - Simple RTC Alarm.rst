##########################################
RTC - Simple RTC Alarm
##########################################

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Materials**
:raw-html:`</p>`

   - AmebaD [AMB21 / AMB22 / AMB23 / BW16] x 1

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Example**
:raw-html:`</p>`

This example demonstrates how to use the RTC library methods to create a RTC Alarm, 
so that to do some tasks when an alarm is matched. In particular, the RTC time is 
set at 16:00:00 and an alarm at 16:00:10. When the time matches, “Alarm Match” 
information will be printed on the serial monitor.

First, select the correct Ameba development board from the Arduino IDE: 
“Tools” → “Board”.

Then open the "RTCAlarm" example from: 
``“File” → “Examples” → “RTC” → “RTCAlarm”``:

  |1|

In the example, the RTC time is set at 16:00:00 and an alarm is set at 16:00:10. 
Upon successfully upload the sample code and press the reset button. 
When the alarm time (10 seconds) is reached the attached interrupt function 
will print the following information: “Alarm Matched!” showing in this figure below.

  |2|

.. |1| image:: /media/ambd_arduino/RTC_Simple_RTC_Alarm/image1.png
   :width: 543
   :height: 489
   :scale: 70 %
.. |2| image:: /media/ambd_arduino/RTC_Simple_RTC_Alarm/image2.png
   :width: 598
   :height: 318
   :scale: 80 %