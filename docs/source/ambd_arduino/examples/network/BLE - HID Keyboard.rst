#################################################
BLE - HID Keyboard
#################################################

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Materials**
:raw-html:`</p>`

   - AmebaD [AMB21 / AMB22 / AMB23 / BW16] x 1
   - BLE capable host device [Windows / Linux / MacOS / Android

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Example**
:raw-html:`</p>`

**Introduction**

In this example, the RTL8722 board emulates a HID keyboard connected using BLE.

**Procedure**

Open the example, ``“Files” -> “Examples” -> “AmebaBLE” -> BLEHIDKeyboard``.

    |1|

Upload the code and press the reset button once the upload is finished.
Immediately after reset, the board will begin BLE advertising as “AMEBA_BLE_HID”. 
On your host device, go to the Bluetooth settings menu, scan, and connect to the board.
You should ensure that the connection process is completed before proceeding.
On Windows, ensure that any driver installation is finished, and the board shows up 
in the Bluetooth menu under the “Mouse, keyboard & pen” category.

   |2|

On Android, ensure that “Input device” is enabled for the board.

   |3|

After the Bluetooth connection process is completed, the board is ready to send 
mouse input to the host device. Connect digital pin 8 to 3.3V to start sending input, 
and connect to GND to stop.
You should see the text “Hello World !” typed out and deleted repeatedly.

   |4|

.. |1| image:: /media/ambd_arduino/BLE_HID_Keyboard/1.png
   :width: 637
   :height: 1202
   :scale: 100 %
.. |2| image:: /media/ambd_arduino/BLE_HID_Keyboard/2.png
   :width: 2560
   :height: 1397
   :scale: 30 %
.. |3| image:: /media/ambd_arduino/BLE_HID_Keyboard/3.png
   :width: 1440
   :height: 2880
   :scale: 25 %
.. |4| image:: /media/ambd_arduino/BLE_HID_Keyboard/4.png
   :width: 753
   :height: 596
   :scale: 100 %