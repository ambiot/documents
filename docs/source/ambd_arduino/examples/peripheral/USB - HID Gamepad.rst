###################
USB - HID Gamepad
###################

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Materials**
:raw-html:`</p>`


-  AmebaD [ AMB21 / AMB22 / AMB23 ] x 1

-  USB host device [ Windows / Linux / MacOS ]

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Example**
:raw-html:`</p>`

Introduction
------------

In this example, the RTL8722 board emulates a HID gamepad connected
using USB.

Procedure
---------

Open the example, ``"Files" → "Examples" → “AmebaUSB” →
“USBHIDGamepad”``.

|1|

Upload the code and press the reset button once the upload is finished.

Connect the USB OTG port on the board to the host device. Refer to the
example guide for  USB CDC Serial for connection instructions.

.. note:: 

    Connect digital pin 8 to 3.3V to start sending input, connect to GND to
    stop.

To view the input, open a browser window and go to
https://gamepad-tester.com/. The connected gamepad device should show up
here, and some of the buttons and axes should show changing values.

|2|

On Windows, gamepad input can also be viewed by going to 

**“Control Panel”→ “Devices and Printers” → “Realtek USB HID” → “Game Controller
Settings” → “Properties”**

The buttons and axes should also show
changing values here.

|3|

|4|

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Code Reference**
:raw-html:`</p>`

By default, the board emulates a gamepad with an 8-direction hat switch
(d-pad), 6 analog axes and 16 buttons. How the inputs are interpreted is
dependent on the host device, and the button ordering may differ between
devices. Also, some axes or buttons may be disabled or missing on
certain host devices.

.. |1| image:: /media/ambd_arduino/USB_HID_Gamepad/image1.png
   :width: 640
   :height: 950
   :scale: 70 %

.. |2| image:: /media/ambd_arduino/USB_HID_Gamepad/image2.png
   :width: 1143
   :height: 690
   :scale: 60 %

.. |3| image:: /media/ambd_arduino/USB_HID_Gamepad/image3.png
   :width: 927
   :height: 716
   :scale: 50 %

.. |4| image:: /media/ambd_arduino/USB_HID_Gamepad/image4.png
   :width: 927
   :height: 716
   :scale: 50 %

