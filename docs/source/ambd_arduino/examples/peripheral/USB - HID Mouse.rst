##################
USB - HID Mouse
##################

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Materials**
:raw-html:`</p>`

-  Ameba D [ AMB21 / AMB22 / AMB23 ] x 1

-  USB capable host device [ Windows / Linux / MacOS ]

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Example**
:raw-html:`</p>`

Introduction
------------

In this example, the RTL8722 board emulates a HID mouse connected using
USB.

Procedure
---------

Open the example, ``"Files" → "Examples" → “AmebaUSB” → “USBHIDMouse”``.

|1|

Upload the code and press the reset button once the upload is finished.

Connect the USB OTG port on the board to the host device. Refer to the
example guide for USB CDC Serial for connection instructions.

The board is ready to send mouse input to the host device. 

.. note:: 

    Connect digital pin 8 to 3.3V to start sending input, connect to GND to stop.

You should see the mouse cursor move around four points in a square,
performing right and left clicks, and scrolling up and down

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Code Reference**
:raw-html:`</p>`

How the mouse input is interpreted is dependent on the host system. Some
systems, such as mobile operating systems, may not support all mouse
button input functions.

.. |1| image:: /media/ambd_arduino/USB_HID_Mouse/image1.png
   :width: 640
   :height: 938
   :scale: 70 %
