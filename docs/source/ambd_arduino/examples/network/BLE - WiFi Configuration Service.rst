#################################################
BLE – WiFi Configuration Service
#################################################

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Materials**
:raw-html:`</p>`

   - AmebaD [AMB21 / AMB22 / AMB23 / BW16] x 1
   - Android / iOS mobile phone

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Example**
:raw-html:`</p>`

**Introduction**

In this example, a WiFi configuration service is set up on the Ameba
Bluetooth stack. A mobile phone with the configuration app connects to
the Ameba device using BLE and configures the Ameba to connect to the
correct WiFi access point.

**Procedure**

Ensure that the Realtek WiFi configuration app is installed on your
mobile phone, it is available at:

– Google Play
Store: https://play.google.com/store/apps/details?id=com.rtk.btconfig

– Apple App
Store: https://apps.apple.com/sg/app/easy-wifi-config/id1194919510

Open the example, ``“Files” -> “Examples” -> “AmebaBLE” ->
“BLEWifiConfigService”``.

|1|

   
Upload the code and press the reset button on Ameba once the upload is
finished.

On your mobile phone, open the Realtek WiFiConfig app and tap the round
button to scan for Ameba boards.

|2|

Select the correct Ameba board from the scan results. The app will
connect to the Ameba board and ask the board to scan for WiFi networks
and send the scan results back to the app using BLE.

|3|

|4|

|5|

If your phone is currently connected to a WiFi network, the app will ask
for the WiFi password to connect the Ameba board to the same WiFi
network. Tap “Select AP” to choose another WiFi network, or enter the
password and tap continue to connect Ameba to the selected WiFi network.

|6|

After the Ameba board connects to the WiFi network, the following
message will be shown. Tap “Try another AP” to connect to another WiFi
network or tap “Confirm” to keep the current WiFi network and disconnect
BLE from the Ameba board.

|7|

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Code Reference**
:raw-html:`</p>`

BLEWifiConfigService is used to create an instance of the WiFi
configuration service to run on the Bluetooth device.

``BLE.configAdvert()->setAdvType(configService.advData())`` is used to set
the correct advertisement data necessary for the phone app to find the
Ameba Bluetooth device.

.. |1| image:: /media/ambd_arduino/BLE_WiFi_Configuration_Service/image1.png
   :width: 832
   :height: 1016
   :scale: 60 %
.. |2| image:: /media/ambd_arduino/BLE_WiFi_Configuration_Service/image2.png
   :width: 1440
   :height: 2880
   :scale: 25 %
.. |3| image:: /media/ambd_arduino/BLE_WiFi_Configuration_Service/image3.png
   :width: 1440
   :height: 2880
   :scale: 25 %
.. |4| image:: /media/ambd_arduino/BLE_WiFi_Configuration_Service/image4.png
   :width: 1440
   :height: 2880
   :scale: 25 %
.. |5| image:: /media/ambd_arduino/BLE_WiFi_Configuration_Service/image5.png
   :width: 1440
   :height: 2880
   :scale: 25 %
.. |6| image:: /media/ambd_arduino/BLE_WiFi_Configuration_Service/image6.png
   :width: 1440
   :height: 2880
   :scale: 25 %
.. |7| image:: /media/ambd_arduino/BLE_WiFi_Configuration_Service/image7.png
   :width: 1440
   :height: 2880
   :scale: 25 %