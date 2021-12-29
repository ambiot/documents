#################################################
BLE – Battery Client
#################################################

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Materials**
:raw-html:`</p>`

   - AmebaD [RTL8722DM / RTL8722CSM / RTL8722DM MINI] x 1

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Example**
:raw-html:`</p>`

**Introduction**

BLE connections use a server client model. The server contains the data
of interest, while the client connects to the server to read the data.
Commonly, a Bluetooth peripheral device acts as a server, while a
Bluetooth central device acts as a client. Servers can contain many
services, with each service containing a some set of data. Clients can
send requests to read or write some data and can also subscribe to
notifications so that the server can send data updates to a client.

In this example, a basic battery client is set up on the Ameba Bluetooth
stack. The client connects to another Ameba board running the
corresponding BLE battery service to read the battery level data.

**Procedure**

On the first Ameba board, upload the BLEBatteryService example code and
let it run.

For the second Ameba board, open the example ``“Files” -> “Examples” ->
“AmebaBLE” -> “BLEBatteryClient”``.

   |1|
   
Upload the code and press the reset button on Ameba once the upload is
finished.

Open the serial monitor and observe the log messages as the Ameba board
with the battery client scans, connects, and reads data from the Ameba
board with the battery service.

   |2|

Highlighted in yellow, the Ameba board with the battery client first
scans for advertising BLE devices with the advertised device name
“AMEBA_BLE_DEV” and the advertised service UUID of 0x180F representing
the battery service.

After finding the target device, the Ameba board with the battery client
forms a BLE connection and searches for a battery service on the
connected device, highlighted in blue.

With the client connected to the service, the battery client begins to
read data using both regular data reads and notifications, highlighted
in green.

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Code Reference**
:raw-html:`</p>`

BLEClient is used to create a client object to discover services and
characteristics on the connected device.
 
 - ``setNotifyCallback()`` is used to register a function that will be called
   when a battery level notification is received.
 - ``BLE.configClient()`` is used to configure the Bluetooth stack for client
   operation.
 - ``addClient(connID)`` creates a new BLEClient object that corresponds to the
   connected device.

.. |1| image:: /ambd_arduino/media/BLE_Battery_Client/image1.png
   :width: 832
   :height: 1006
   :scale: 50 %
.. |2| image:: /ambd_arduino/media/BLE_Battery_Client/image2.png
   :width: 741
   :height: 588
   :scale: 50 %