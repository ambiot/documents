#################################################
BLE - HID Gamepad
#################################################

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Materials**
:raw-html:`</p>`

   - AmebaD [RTL8722DM/RTL8722CSM/RTL8722DM MINI] x 1
   - BLE capable host device [Windows / Linux / MacOS / Android

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Example**
:raw-html:`</p>`

**Introduction**

In this example, the RTL8722 board emulates a HID gamepad connected using BLE.

**Procedure**

Open the example, ``“Files” -> “Examples” -> “AmebaBLE” -> BLEHIDGamepad``.

    |1|

| Upload the code and press the reset button once the upload is finished.
| Immediately after reset, the board will begin BLE advertising as “AMEBA_BLE_HID”. 
  On your host device, go to the Bluetooth settings menu, scan, and connect to the board.
| You should ensure that the connection process is completed before proceeding.
| On Windows, ensure that any driver installation is finished, and the board shows up 
  in the Bluetooth menu under the “Mouse, keyboard & pen” category.
|  |2|
|
| On Android, ensure that “Input device” is enabled for the board.
|  |3|
| After the Bluetooth connection process is completed, the board is ready to send 
  gamepad input to the host device. Connect digital pin 8 to 3.3V to start sending input, 
  and connect to GND to stop.
| To view the input, open a browser window and go to `Gamepad Tester <https://gamepad-tester.com/>`_. 
  The connected gamepad device should show up here, and some of the buttons and axes should show changing values.
|  |4|
|
| On Windows, gamepad input can also be viewed by going to 
  “Control Panel” -> “Devices and Printers” -> “AMEBA_BLE_HID” -> “Game Controller Settings” -> “Properties”. 
  The buttons and axes should also show changing values here.
|  |5|
|
|  |6|
|
| On Android, gamepad testing apps such as `Andriod Gamepad Tester <https://play.google.com/store/apps/details?id=com.chimera.saturday.evogamepadtester>`_  
  can also be used to view the gamepad input.
|  |7|

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Code Reference**
:raw-html:`</p>`

By default, the board emulates a gamepad with an 8-direction hat switch (d-pad), 6 analog axes and 16 buttons. How the inputs are interpreted is 
dependent on the host device, and the button ordering may differ between devices. 
Also, some axes or buttons may be disabled or missing on certain host devices.

.. |1| image:: /ambd_arduino/media/BLE_HID_Gamepad/1.png
   :width: 637
   :height: 1202
   :scale: 100 %
.. |2| image:: /ambd_arduino/media/BLE_HID_Gamepad/2.png
   :width: 2560
   :height: 1397
   :scale: 25 %
.. |3| image:: /ambd_arduino/media/BLE_HID_Gamepad/3.png
   :width: 1440
   :height: 2880
   :scale: 25 %
.. |4| image:: /ambd_arduino/media/BLE_HID_Gamepad/4.png
   :width: 1006
   :height: 585
   :scale: 50 %
.. |5| image:: /ambd_arduino/media/BLE_HID_Gamepad/5.png
   :width: 952
   :height: 658
   :scale: 50 %
.. |6| image:: /ambd_arduino/media/BLE_HID_Gamepad/6.png
   :width: 952
   :height: 658
   :scale: 50 %
.. |7| image:: /ambd_arduino/media/BLE_HID_Gamepad/7.png
   :width: 2880
   :height: 1440
   :scale: 25 %