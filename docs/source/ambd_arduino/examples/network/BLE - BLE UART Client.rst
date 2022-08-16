#################################################
BLE – BLE UART Client
#################################################

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Materials**
:raw-html:`</p>`

  - AmebaD [AMB21 / AMB22 / AMB23 / BW16] x 2

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Example**
:raw-html:`</p>`

**Introduction**

In this example, two RTL8722 boards are connected using BLE. One board
runs a BLE UART service, while the other connects to the service using a
client and both boards are able to communicate with text messages over
the UART service.

**Procedure**

On the first board, upload the BLE UART service example code. Refer to
the example guide for detailed instructions.

For the second board, open the example, ``“Files” → “Examples” →
“AmebaBLE” → “BLEUartClient”``.

.. image::  /media/ambd_arduino/BLE_UART_Client/image1.png
   :align: center
   :width: 682
   :height: 1202
   :scale: 83 %

Upload the code and press the reset button on Ameba once the upload is
finished.
Reset the UART service board first, wait for the BLE advertisement
process to begin, and reset the UART client board. The client board
should scan, discover, and connect to the service board. After
connecting, the client board will verify that the correct UART service
exists on the service board, before enabling notifications on the TX
characteristic. Any message typed in the serial terminal will be sent
to the other board using the UART service.
  
.. image::  /media/ambd_arduino/BLE_UART_Client/image2.png
   :align: center
   :width: 779
   :height: 619

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Code Reference**
:raw-html:`</p>`

The BLEClient class is used to discover the services that exist on a
connected BLE device. The discovery process will create
BLERemoteService, BLERemoteCharacteristic and BLERemoteDescriptor
objects corresponding to the services, characteristics and descriptors
that exist on the connected device. These objects can then be used to
read and write data to the connected device.

