##########################################################################
WiFi - Set up Client to Retrieve Google Search Informations
##########################################################################

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Materials**
:raw-html:`</p>`

  - AmebaD [AMB21 / AMB22 / AMB23 / BW16] x 1

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Example**
:raw-html:`</p>`

| In this example, we use Ameba to be a web client to retrieve
  Informations from the Internet.
| First, make sure the correct Ameba development board is selected in
  “Tools” → “Board”

| Then open ``“File” → “Examples” → “WiFi” → “WiFiWebClient”``

  |1|

In the sample code, modify the highlighted snippet and enter the
required Informations (ssid, password, key index) required to connect to
your WiFi network.

  |2|

Upload the code and press the reset button on Ameba. Then you can see
the Informations retrieved from Google is shown in the Arduino serial
monitor.

  |3|

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Code Reference**
:raw-html:`</p>`

| https://www.arduino.cc/en/Reference/WiFiBegin
| To get the Informations of a WiFi connection: Use ``WiFi.SSID()`` to get
  SSID of the current connected network.
| https://www.arduino.cc/en/Reference/WiFiSSID
| Use ``WiFi.RSSI()`` to get the signal strength of the connection.
| https://www.arduino.cc/en/Reference/WiFiRSSI
| Use ``WiFi.localIP()`` to get the IP address of Ameba.
| https://www.arduino.cc/en/Reference/WiFiLocalIP
| Use ``WiFiClient()`` to create a client.
| https://www.arduino.cc/en/Reference/WiFiClient
| Use ``client.connect()`` to connect to the IP address and port specified.
| https://www.arduino.cc/en/Reference/WiFiClientConnect
| Use ``client.println()`` to print data followed by a carriage return and
  newline.
| https://www.arduino.cc/en/Reference/WiFiClientPrintln
| Use ``client.available()`` to return the number of bytes available for
  reading.
| https://www.arduino.cc/en/Reference/WiFiClientAvailable
| Use ``client.read()`` to read the next byte received from the server the
  client is connected to.
| https://www.arduino.cc/en/Reference/WiFiClientRead
| Use ``client.stop()`` to disconnect from the server the client is
  connected to.
| https://www.arduino.cc/en/Reference/WiFIClientStop

.. |1| image:: /media/ambd_arduino/WiFi_Set_Up_Client_To_Retrieve_Google_Search_Informations/image1.png
   :width: 1155
   :height: 961
   :scale: 70 %
.. |2| image:: /media/ambd_arduino/WiFi_Set_Up_Client_To_Retrieve_Google_Search_Informations/image2.png
   :width: 716
   :height: 867
   :scale: 70 %
.. |3| image:: /media/ambd_arduino/WiFi_Set_Up_Client_To_Retrieve_Google_Search_Informations/image3.png
   :width: 941
   :height: 703
   :scale: 70 %