[RTL8722CSM] [RTL8722DM] Use Ameba as server to send Ameba status
===================================================================
Materials

-  Ameba x 1

 

Example

| In this example, we connect Ameba to WiFi and use Ameba as server to
  send message to connected client.
| First, open "File" -> "Examples" -> "AmebaWiFi" -> "WiFiWebServer"

 

.. image:: ../media/[RTL8722CSM]_[RTL8722DM]_Use_Ameba_as_server_to_send_Ameba_status/image1.png
   :alt: 6-1
   :width: 6.30556in
   :height: 7.29861in

In the sample code, modify the highlighted snippet and enter the
required information (ssid, password, key index) required to connect to
your WiFi network.

.. image:: ../media/[RTL8722CSM]_[RTL8722DM]_Use_Ameba_as_server_to_send_Ameba_status/image2.png
   :alt: 6-2
   :width: 6.5in
   :height: 6.22708in

 

Upload the code and press the reset button on Ameba. After connecting to
WiFi, Ameba starts to run as server. The IP of the server is shown in
the serial monitor, and port is 80.

| |6-3|
| We connect to the server in a browser, and we can see the data sent
  from the server.

.. image:: ../media/[RTL8722CSM]_[RTL8722DM]_Use_Ameba_as_server_to_send_Ameba_status/image4.png
   :alt: 6-4
   :width: 6.5in
   :height: 4.39167in

| Code Reference
| Use WiFi.begin() to establish WiFi connection.
| https://www.arduino.cc/en/Reference/WiFiBegin
| To get the information of a WiFi connection:
| Use WiFi.SSID() to get SSID of the current connected network.
| https://www.arduino.cc/en/Reference/WiFiSSID
| Use WiFi.RSSI() to get the signal strength of the connection.
| https://www.arduino.cc/en/Reference/WiFiRSSI
| se WiFi.localIP() to get the IP address of Ameba.
| https://www.arduino.cc/en/Reference/WiFiLocalIP
| Use WiFiServer server() to create a server that listens on the
  specified port.
| https://www.arduino.cc/en/Reference/WiFiServer
| Use server.begin() to tell the server to begin listening for incoming
  connections.
| `https://www.arduino.cc/en/Reference/WiFiServerBegin <https://www.arduino.cc/en/Reference/WiFiClientConnect>`__
| Use server.available() to get a client that is connected to the server
  and has data available for reading.
| https://www.arduino.cc/en/Reference/WiFiServerAvailable
| Use client.connected to check whether or not the client is connected.
| https://www.arduino.cc/en/Reference/WiFiClientConnected
| Use client.println() to print data followed by a carriage return and
  newline.
| https://www.arduino.cc/en/Reference/WiFiClientPrintln
| Use client.print() to print data to the server that a client is
  connected to.
| https://www.arduino.cc/en/Reference/WiFiClientPrint
| Use client.available() to return the number of bytes available for
  reading.
| https://www.arduino.cc/en/Reference/WiFiClientAvailable
| Use client.read() to read the next byte received from the server the
  client is connected to.
| https://www.arduino.cc/en/Reference/WiFiClientRead

| Use client.stop() to disconnect from the server the client is
  connected to.
| https://www.arduino.cc/en/Reference/WiFIClientStop

.. |6-3| image:: ../media/[RTL8722CSM]_[RTL8722DM]_Use_Ameba_as_server_to_send_Ameba_status/image3.png
   :width: 6.5in
   :height: 4.85347in
