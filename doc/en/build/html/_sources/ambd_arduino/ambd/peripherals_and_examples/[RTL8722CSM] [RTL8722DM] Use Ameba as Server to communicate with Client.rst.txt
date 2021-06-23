[RTL8722CSM] [RTL8722DM] Use Ameba as Server to communicate with Client
==========================================================================
Materials

-  Ameba x 1

-  Laptop（Make sure it is connected to the same network domain as
      Ameba, and tcp tools are installed.）

Example

In this example, we first connect Ameba to WiFi, then we use Ameba as
server to communicate with client.

First, we make sure the correct Ameba development board is set in
“Tools” -> “Board”

Then, open the Simple WiFi Server example in “File” -> “Examples” ->
“AmebaWiFi” -> “SimpleServerWiFi”

.. image:: ../media/[RTL8722CSM]_[RTL8722DM]_Use_Ameba_as_Server_to_communicate_with_Client/image1.png
   :alt: 3-1
   :width: 6.5in
   :height: 7.38333in

In the sample code, modify the highlighted parameters and enter the ssid
and password for your WiFi connection.

Next, upload the code, then press the reset button on Ameba. At this
moment, you will see the connection information is displayed in the
console.

| |3-3|
| Next, we use the socket tool in the laptop to be the client and
  connect to the IP address of the Ameba board shown in the connection
  information at port 5000. (Note: The socket tool we used in this
  example is “sokit”)

.. image:: ../media/[RTL8722CSM]_[RTL8722DM]_Use_Ameba_as_Server_to_communicate_with_Client/image3.png
   :alt: 3-4
   :width: 6.5in
   :height: 5.27569in

Click on the “Client” tab to choose the client mode, specify the IP and
port of the server, then click “TCP Connect”.

If the connection is established successfully, the server shows a
message: “A client connected to this Server”, and the IP and port of the
connected client.

In this example, when the client and server are connected and the client
sends a string to Ameba server, the Ameba server returns the identical
string back to the client.

.. image:: ../media/[RTL8722CSM]_[RTL8722DM]_Use_Ameba_as_Server_to_communicate_with_Client/image4.png
   :alt: 3-5
   :width: 6.5in
   :height: 5.30764in

The string sent to server is returned and showed at the client side.

Code reference

| Use WiFi.begin() to establish WiFi connection;
| https://www.arduino.cc/en/Reference/WiFiBegin
| To get the information of a WiFi connection:
| Use WiFi.SSID() to get SSID of the current connected network.
| https://www.arduino.cc/en/Reference/WiFiSSID
| Use WiFi.RSSI() to get the signal strength of the connection.
| https://www.arduino.cc/en/Reference/WiFiRSSI
| Use WiFi.localIP() to get the Ameba WiFi shield’s IP address.
| https://www.arduino.cc/en/Reference/WiFiLocalIP
| Create server and transmitting data:
| Use Server(port) to create a server that listens on the specified
  port.
| https://www.arduino.cc/en/Reference/WiFiServer
| Use server.begin() to tell the server to begin listening for incoming
  connections.
| https://www.arduino.cc/en/Reference/WiFiServerBegin
| Use server.available() to get a client that is connected to the server
  and has data available for reading.
| https://www.arduino.cc/en/Reference/WiFiServerAvailable
| Use client.read() to read the next byte received from the server.
| https://www.arduino.cc/en/Reference/WiFiClientRead
| Use client.write() to write data to the server.
| https://www.arduino.cc/en/Reference/WiFiClientWrite
| Use client.stop() to disconnect from the server.
| https://www.arduino.cc/en/Reference/WiFIClientStop

.. |3-3| image:: ../media/[RTL8722CSM]_[RTL8722DM]_Use_Ameba_as_Server_to_communicate_with_Client/image2.png
   :width: 6.5in
   :height: 5.30764in
