[RTL8722CSM] [RTL8722DM] BLE – WiFi Configuration Service
===========================================================
Materials

-  AmebaD [RTL8722 CSM/DM] x 1

-  Android / iOS mobile phone

Example

**Introduction**

In this example, a WiFi configuration service is set up on the Ameba
Bluetooth stack. A mobile phone with the configuration app connects to
the Ameba device using BLE and configures the Ameba to connect to the
correct WiFi access point.

**Procedure**

Ensure that the Realtek WiFi configuration app is installed on your
mobile phone, it is available at:

| – Google Play
  Store: https://play.google.com/store/apps/details?id=com.rtk.btconfig
| – Apple App
  Store: https://apps.apple.com/sg/app/easy-wifi-config/id1194919510

Open the example, "Files" -> "Examples" -> "AmebaBLE" ->
"BLEWifiConfigService".

.. image:: ../media/[RTL8722CSM]_[RTL8722DM]_BLE_WiFi_Configuration_Service/image1.png
   :alt: 2
   :width: 6.02778in
   :height: 3.45833in

Upload the code and press the reset button on Ameba once the upload is
finished.

On your mobile phone, open the Realtek WiFiConfig app and tap the round
button to scan for Ameba boards.

.. image:: ../media/[RTL8722CSM]_[RTL8722DM]_BLE_WiFi_Configuration_Service/image2.png
   :alt: 3
   :width: 2.60417in
   :height: 2.60417in

Select the correct Ameba board from the scan results. The app will
connect to the Ameba board and ask the board to scan for WiFi networks
and send the scan results back to the app using BLE.

.. image:: ../media/[RTL8722CSM]_[RTL8722DM]_BLE_WiFi_Configuration_Service/image3.png
   :alt: 3
   :width: 2.60417in
   :height: 2.60417in

.. image:: ../media/[RTL8722CSM]_[RTL8722DM]_BLE_WiFi_Configuration_Service/image4.png
   :alt: 3
   :width: 2.60417in
   :height: 2.60417in

.. image:: ../media/[RTL8722CSM]_[RTL8722DM]_BLE_WiFi_Configuration_Service/image5.jpeg
   :alt: 3
   :width: 2.60417in
   :height: 2.60417in

If your phone is currently connected to a WiFi network, the app will ask
for the WiFi password to connect the Ameba board to the same WiFi
network. Tap "Select AP" to choose another WiFi network, or enter the
password and tap continue to connect Ameba to the selected WiFi network.

.. image:: ../media/[RTL8722CSM]_[RTL8722DM]_BLE_WiFi_Configuration_Service/image6.png
   :alt: 3
   :width: 2.60417in
   :height: 2.60417in

After the Ameba board connects to the WiFi network, the following
message will be shown. Tap "Try another AP" to connect to another WiFi
network or tap "Confirm" to keep the current WiFi network and disconnect
BLE from the Ameba board.

.. image:: ../media/[RTL8722CSM]_[RTL8722DM]_BLE_WiFi_Configuration_Service/image7.png
   :alt: 3
   :width: 2.60417in
   :height: 2.60417in

Code Reference

BLEWifiConfigService is used to create an instance of the WiFi
configuration service to run on the Bluetooth device.

BLE.configAdvert()->setAdvType(configService.advData()) is used to set
the correct advertisement data necessary for the phone app to find the
Ameba Bluetooth device.
