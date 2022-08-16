######################
USB - CDC Serial Port
######################

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Materials**
:raw-html:`</p>`

-  AmebaD [ AMB21 / AMB22 / AMB23 ] x 1

-  USB host device [ Windows / Linux / MacOS ]

-  USB cable x 2

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Example**
:raw-html:`</p>`

Introduction
------------

In this example, the RTL8722 board emulates a CDC ACM virtual COM-port
connected using USB.

USB connection
--------------

Two USB ports will be used simultaneously, thus two USB cables are
required for this example. In addition to the regular USB port used for
uploading code, the second USB cable should be connected to the USB OTG
port as shown below.

For AMB23, connect the second USB cable to the USB port in the red box.

|1|

For AMB21 / AMB22, a modification needs to be made to enable the USB OTG
port. The two zero-ohm resistors in the red box should be resoldered and
moved into the green position. This will disable pins 16 and 17
(GPIOA_25 and GPIOA_26) on the pin headers and enable the middle USB
port.

|2|

|3|

Alternatively, if you do not wish to risk damaging the board in the
process of soldering, an external USB breakout board may be used.
Connect the USB pins as shown.

|4|

Procedure
---------

Open the example, ``"Files" → "Examples" → “AmebaUSB” → “USBCDCSerial”``.

|5|

Upload the code and press the reset button once the upload is finished.
Open the Arduino serial monitor.

Immediately after reset, a second COM port should become available. On
your host device, open a terminal application (e.g., Teraterm) and
connect to this new COM port.

Any message sent on the Arduino serial monitor should appear on the
terminal application. Similarly, any message sent on the terminal
application should appear in Arduino serial monitor.

|6|

|7|

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Code Reference**
:raw-html:`</p>`

The SerialUSB class can be used in the same way as the familiar Serial
class, and supports all the same print features.

.. |1| image:: /media/ambd_arduino/USB_CDC_Serial/image1.png
   :width: 2190
   :height: 3532
   :scale: 15 %

.. |2| image:: /media/ambd_arduino/USB_CDC_Serial/image2.png
   :width: 3468
   :height: 2872
   :scale: 15 %

.. |3| image:: /media/ambd_arduino/USB_CDC_Serial/image3.png
   :width: 682
   :height: 528
   :scale: 70 %

.. |4| image:: /media/ambd_arduino/USB_CDC_Serial/image4.png
   :width: 1008
   :height: 925
   :scale: 50 %

.. |5| image:: /media/ambd_arduino/USB_CDC_Serial/image5.png
   :width: 640
   :height: 950
   :scale: 70 %

.. |6| image:: /media/ambd_arduino/USB_CDC_Serial/image6.png
   :width: 671
   :height: 357
   :scale: 100 %

.. |7| image:: /media/ambd_arduino/USB_CDC_Serial/image7.png
   :width: 619
   :height: 354
   :scale: 100 %

