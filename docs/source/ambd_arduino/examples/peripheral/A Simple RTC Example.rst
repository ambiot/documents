##############################################
A Simple RTC Example
##############################################

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Materials**
:raw-html:`</p>`

   - AmebaD [RTL8722DM / RTL8722CSM / RTL8722DM MINI] x 1

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Example**
:raw-html:`</p>`

This example demonstrates how to use the RTC library methods. This
function describes how to use the RTC API. The RTC function is
implemented by an independent BCD timer/counter.

| Select the correct Ameba development board from the Arduino IDE:
  "Tools" -> "Board". 
| Then open the “RTC” example from:
| ``"File" -> "Examples" -> "AmebaRTC" -> "RTC"``:

  |1|

Upon successfully upload the sample code and press the reset button,
this example will print out time information since the user initialized
time every second in the Serial Monitor.

  |2|

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Code Reference**
:raw-html:`</p>`

| [1] Simple RTC example from Arduino Tutorials:
| https://www.arduino.cc/en/Tutorial/SimpleRTC

.. |1| image:: /ambd_arduino/media/A_Simple_RTC_Example/image1.png
   :width: 549
   :height: 462
   :scale: 100 %
.. |2| image:: /ambd_arduino/media/A_Simple_RTC_Example/image2.png
   :width: 597
   :height: 325
   :scale: 100 %