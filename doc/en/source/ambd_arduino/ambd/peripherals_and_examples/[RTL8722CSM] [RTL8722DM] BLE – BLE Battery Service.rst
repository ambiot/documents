[RTL8722CSM] [RTL8722DM] BLE – BLE Battery Service
===================================================
Materials

-  Ameba D [RTL8722 CSM/DM] x 1

-  Android / iOS mobile phone

Example

**Introduction**

BLE connections use a server client model. The server contains the data
of interest, while the client connects to the server to read the data.
Commonly, a Bluetooth peripheral device acts as a server, while a
Bluetooth central device acts as a client. Servers can contain many
services, with each service containing a some set of data. Clients can
send requests to read or write some data and can also subscribe to
notifications so that the server can send data updates to a client.

In this example, a basic battery service is set up on the Ameba
Bluetooth stack. A mobile phone is used to connect to the Ameba
peripheral device and read the battery data.

**Procedure**

Ensure that the following Bluetooth apps are installed on your mobile
phone. These apps will show you the raw data sent by Ameba and allow you
to interact with the data.

The recommended application is nRF connect, and is available at the
links below:

-  Android
      : https://play.google.com/store/apps/details?id=no.nordicsemi.android.mcp

-  iOS :*https://apps.apple.com/us/app/nrf-connect/id1054362403*

LightBlue is an alternative application that can also be used, but has
less features:

-  Android
      : https://play.google.com/store/apps/details?id=com.punchthrough.lightblueexplorer

-  iOS :*https://apps.apple.com/us/app/lightblue/id557428110*

Open the example, "Files" -> "Examples" -> "AmebaBLE" ->
"BLEBatteryService"

.. image:: ../media/[RTL8722CSM]_[RTL8722DM]_BLE_BLE_Battery_Service/image1.png
   :alt: 2
   :width: 6.02778in
   :height: 3.45833in

| Upload the code and press the reset button on Ameba once the upload is
  finished.
| On your mobile phone, open the Bluetooth app and scan for the
  Bluetooth signal broadcast by Ameba, it should appear as a device
  named "AMEBA_BLE_DEV".

.. image:: ../media/[RTL8722CSM]_[RTL8722DM]_BLE_BLE_Battery_Service/image2.png
   :alt: 3
   :width: 5.20833in
   :height: 5.20833in

Connect to the Ameba Bluetooth device, and a list of available services
should appear. Click on the battery service to expand it, and you can
see the battery level data value. The arrows highlighted in the box on
the right are used to read data and subscribe to notifications. Click on
the single arrow to read the battery level value, and a 90% value will
appear.

.. image:: ../media/[RTL8722CSM]_[RTL8722DM]_BLE_BLE_Battery_Service/image3.png
   :alt: 3
   :width: 5.20833in
   :height: 5.20833in

Click on the triple arrow to subscribe to updates on the battery level
value, and the battery value will start updating by itself.

.. image:: ../media/[RTL8722CSM]_[RTL8722DM]_BLE_BLE_Battery_Service/image4.png
   :alt: 4
   :width: 5.20833in
   :height: 5.20833in

The serial monitor will show the sketch increasing the battery level
every second. When you click on either of the arrows, the sketch running
on the Ameba will be notified, and will print out the action taken.

.. image:: ../media/[RTL8722CSM]_[RTL8722DM]_BLE_BLE_Battery_Service/image5.png
   :alt: 4
   :width: 6.5in
   :height: 4.10903in

Code Reference

BLEService and BLECharacteristic classes are used to create and define
the battery service to run on the Bluetooth device.

BLE.configAdvert()->setAdvType(GAP_ADTYPE_ADV_IND) is used to set the
advertisement type to a general undirected advertisement that allows for
connections.

setReadCallback() and setCCCDCallback() is used to register functions
that will be called when the battery level data is read, or notification
is enabled by the user.

BLE.configServer(1) is used to tell the Bluetooth stack that there will
be one service running.

addService() registers the battery service to the Bluetooth stack.
