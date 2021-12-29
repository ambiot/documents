#################################################
Scan Available WiFi Hotspots in The Surroundings
#################################################

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Materials**
:raw-html:`</p>`

  - AmebaD [RTL8722DM / RTL8722CSM / RTL8722DM MINI] x 1
  - Antenna x 1

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Example**
:raw-html:`</p>`

| In this example, we use Ameba to scan available WiFi hotspots in the
  surroundings, and prints the SSID, encryption type, signal strength
  information of each detected hotspot.
| First, make sure the correct Ameba development board is selected in
  Arduino IDE: ``“Tools” -> “Board”``
| Open the “ScanNetworks” example in 
  ``“File” -> “Examples” -> “AmebaWiFi” -> “ScanNetworks”``:

  |image1|

Then upload the sample code and press the reset button on Ameba.
Afterwards, you can see “\*\*Scan Networks\*\*” message appears, with the
detected WiFi hotspots and the information of each hotspot.

  |image2|

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Code Reference**
:raw-html:`</p>`

- First we use ``WiFi.macAddress(mac)`` to get the MAC address of Ameba:
  https://www.arduino.cc/en/Reference/WiFiMACAddress
- Then we use ``WiFi.scanNetworks()`` to detect WiFi hotspots:
  https://www.arduino.cc/en/Reference/WiFiScanNetworks
- To get information of detected WiFi hotspot:
  We use ``WiFi.SSID(thisNet)`` to retrieve SSID of a network:
  https://www.arduino.cc/en/Reference/WiFiSSID
  We use ``WiFi.RSSI(thisNet)`` to get the signal strength of the connection to the router:
  https://www.arduino.cc/en/Reference/WiFiRSSI
- We use ``WiFi.encryptionType(thisNet)`` to get the encryption type of the network:
  https://www.arduino.cc/en/Reference/WiFiEncryptionType

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Comparison with Arduino**
:raw-html:`</p>`

| In the Arduino platform, we need to add an extra WiFi shield to be the
  WiFi module to realize the WiFi connection. And we must ``#include`` to
  use SPI to communicate with WiFi module.
| However, Ameba is already equipped with WiFi module. Therefore,
  ``#include`` is not needed.

.. |image1| image:: /ambd_arduino/media/Scan_available_WiFi_hotspots_in_the_surroundings/image1.png
   :width: 716
   :height: 1006
   :scale: 50 %
.. |image2| image:: /ambd_arduino/media/Scan_available_WiFi_hotspots_in_the_surroundings/image2.png
   :width: 704
   :height: 530
   :scale: 50 %