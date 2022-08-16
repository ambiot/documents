#################################################
BLE - HID Gamepad
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

In this example, the RTL8722 board emulates a HID gamepad connected using BLE.

**Procedure**

Open the example, ``“Files” → “Examples” → “AmebaBLE” → BLEHIDGamepad``.

.. image:: /media/ambd_arduino/BLE_HID_Gamepad/1.png
   :align: center
   :width: 637
   :height: 1202
   :scale: 83 %


Upload the code and press the reset button once the upload is finished.
Immediately after reset, the board will begin BLE advertising as “AMEBA_BLE_HID”. 
On your host device, go to the Bluetooth settings menu, scan, and connect to the board.
You should ensure that the connection process is completed before proceeding.
On Windows, ensure that any driver installation is finished, and the board shows up 
in the Bluetooth menu under the “Mouse, keyboard & pen” category.

.. image:: /media/ambd_arduino/BLE_HID_Gamepad/2.png
   :align: center
   :width: 2560
   :height: 1397
   :scale: 50 %

On Android, ensure that “Input device” is enabled for the board.

.. image:: /media/ambd_arduino/BLE_HID_Gamepad/3.png
   :align: center
   :width: 1440
   :height: 2880
   :scale: 34 %

After the Bluetooth connection process is completed, the board is ready to send 
gamepad input to the host device. Connect digital pin 8 to 3.3V to start sending input, 
and connect to GND to stop.
To view the input, open a browser window and go to `Gamepad Tester <https://gamepad-tester.com/>`_. 
The connected gamepad device should show up here, and some of the buttons and axes should show changing values.

.. image:: /media/ambd_arduino/BLE_HID_Gamepad/4.png
   :align: center
   :width: 1006
   :height: 585

On Windows, gamepad input can also be viewed by going to 
“Control Panel” -> “Devices and Printers” -> “AMEBA_BLE_HID” -> “Game Controller Settings” -> “Properties”. 
The buttons and axes should also show changing values here.

.. image:: /media/ambd_arduino/BLE_HID_Gamepad/5.png
   :align: center
   :width: 952
   :height: 658

.. image:: /media/ambd_arduino/BLE_HID_Gamepad/6.png
   :align: center
   :width: 952
   :height: 658

On Android, gamepad testing apps such as `Andriod Gamepad Tester <https://play.google.com/store/apps/details?id=com.chimera.saturday.evogamepadtester>`_  
can also be used to view the gamepad input.

.. image:: /media/ambd_arduino/BLE_HID_Gamepad/7.png
   :align: center
   :width: 2880
   :height: 1440
   :scale: 34 %

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Code Reference**
:raw-html:`</p>`

By default, the board emulates a gamepad with an 8-direction hat switch (d-pad), 6 analog axes and 16 buttons. How the inputs are interpreted is 
dependent on the host device, and the button ordering may differ between devices. 
Also, some axes or buttons may be disabled or missing on certain host devices.

