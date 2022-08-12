#####################
USB - HID Keyboard
#####################

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

In this example, the RTL8722 board emulates a HID keyboard connected
using USB.

Procedure
---------

Open the example, ``"Files" → "Examples" → “AmebaUSB” →
“USBHIDKeyboard”``.

|1|

Upload the code and press the reset button once the upload is finished.

Connect the USB OTG port on the board to the host device. Refer to the
example guide for USB CDC Serial for connection instructions.

The board is ready to send keyboard input to the host device. Select a
text input field, such as in the Serial Monitor or a text document.

.. note:: 

    Connect digital pin 8 to 3.3V to start sending keystrokes, connect to
    GND to stop.

You should see the text ``Hello World!`` typed out and deleted repeatedly.


|2|

.. |1| image:: /media/ambd_arduino/USB_HID_Keyboard/image1.png
   :width: 598
   :height: 905
   :scale: 70 %

.. |2| image:: /media/ambd_arduino/USB_HID_Keyboard/image2.png
   :width: 677
   :height: 363
   :scale: 60 %
