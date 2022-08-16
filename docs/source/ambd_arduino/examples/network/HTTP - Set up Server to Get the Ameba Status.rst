##########################################################################
HTTP - Set up Server to Get the Ameba Status
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

| In this example, we connect Ameba to WiFi and use Ameba as server to
  send message to connected client.
| First, open ``“File” → “Examples” → “WiFi” → “WiFiWebServer”``

  |1|

| In the sample code, modify the highlighted snippet and enter the
  required information (ssid, password, key index) required to connect to
  your WiFi network.

  |2|

| Upload the code and press the reset button on Ameba. After connecting to
  WiFi, Ameba starts to run as server. The IP of the server is shown in
  the serial monitor, and port is 80.

  |3|

| We connect to the server in a browser, and we can see the data sent
  from the server.

  |4|

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Code Reference**
:raw-html:`</p>`

| Use ``WiFi.begin()`` to establish WiFi connection.
| https://www.arduino.cc/en/Reference/WiFiBegin
| To get the information of a WiFi connection:
| Use ``WiFi.SSID()`` to get SSID of the current connected network.
| https://www.arduino.cc/en/Reference/WiFiSSID
| Use ``WiFi.RSSI()`` to get the signal strength of the connection.
| https://www.arduino.cc/en/Reference/WiFiRSSI
| se ``WiFi.localIP()`` to get the IP address of Ameba.
| https://www.arduino.cc/en/Reference/WiFiLocalIP
| Use ``WiFiServer server()`` to create a server that listens on the
  specified port.
| https://www.arduino.cc/en/Reference/WiFiServer
| Use ``server.begin()`` to tell the server to begin listening for incoming
  connections.
| `https://www.arduino.cc/en/Reference/WiFiServerBegin <https://www.arduino.cc/en/Reference/WiFiClientConnect>`__
| Use ``server.available()`` to get a client that is connected to the server
  and has data available for reading.
| https://www.arduino.cc/en/Reference/WiFiServerAvailable
| Use ``client.connected()`` to check whether or not the client is connected.
| https://www.arduino.cc/en/Reference/WiFiClientConnected
| Use ``client.println()`` to print data followed by a carriage return and
  newline.
| https://www.arduino.cc/en/Reference/WiFiClientPrintln
| Use ``client.print()`` to print data to the server that a client is
  connected to.
| https://www.arduino.cc/en/Reference/WiFiClientPrint
| Use ``client.available()`` to return the number of bytes available for
  reading.
| https://www.arduino.cc/en/Reference/WiFiClientAvailable
| Use ``client.read()`` to read the next byte received from the server the
  client is connected to.
| https://www.arduino.cc/en/Reference/WiFiClientRead
| Use ``client.stop()`` to disconnect from the server the client is
  connected to.
| https://www.arduino.cc/en/Reference/WiFIClientStop



.. |1| image:: /media/ambd_arduino/HTTP_Set_Up_Server_To_Get_The_Ameba_Status/image1.png
   :width: 1156
   :height: 958
   :scale: 70 %
.. |2| image:: /media/ambd_arduino/HTTP_Set_Up_Server_To_Get_The_Ameba_Status/image2.png
   :width: 716
   :height: 867
   :scale: 80 %
.. |3| image:: /media/ambd_arduino/HTTP_Set_Up_Server_To_Get_The_Ameba_Status/image3.png
   :width: 704
   :height: 355
   :scale: 90 %
.. |4| image:: /media/ambd_arduino/HTTP_Set_Up_Server_To_Get_The_Ameba_Status/image4.png
   :width: 1208
   :height: 940
   :scale: 50 %