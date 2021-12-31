##########################################################################
Use Ameba as Server to control LED
##########################################################################

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Materials**
:raw-html:`</p>`

  - AmebaD [RTL8722DM / RTL8722CSM / RTL8722DM MINI] x 1
  - Breadboard x 1
  - LED x 1
  - 1KΩ Resistor x 1

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Procedure**
:raw-html:`</p>`

| In this example, we connect Ameba to WiFi and use Ameba as server, the
  user can control the LED on/off through a webpage.
| First, connect Ameba with the LED.
| In a LED, the longer pin is the positive pole, and the shorter pin is
  the negative pole. So, we connect the shorter pin to GND and connect the
  longer pin to D13. Additionally, to avoid the electric current exceeds
  the tolerance of the LED and causes damage, we connect a resistance on
  the positive pole.

**RTL8722DM / RTL8722CSM** Wiring Diagram:

  |1|

**RTL8722DM MINI** Wiring Diagram:

  |1-1|

| Then open ``“File” -> “Examples” -> “AmebaWiFi” -> “SimpleWebServerWiFi”``
  
  |2|

| In the sample code, modify the highlighted snippet to corresponding
  information.
  
  |3|



Upload the code and press the reset button on Ameba. When the connection
is established, you will see the message::
   
   “To see this page in action, open a browser to http://xxx.xxx.xxx.xxx” 

in the Arduino IDE as shown in the figure:

  |4|

Next, open the browser of a computer or a cell phone under the same WiFi
domain, enter the address in the message.

  |5|

In the webpage, you can turn on/off the LED.

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Code Reference**
:raw-html:`</p>`

| Use ``WiFi.begin()`` to establish WiFi connection.
| https://www.arduino.cc/en/Reference/WiFiBegin
| To get the information of a WiFi connection:
| Use ``WiFi.SSID()`` to get SSID of the current connected network.
| https://www.arduino.cc/en/Reference/WiFiSSID
| Use WiFi.RSSI() to get the signal strength of the connection.
| https://www.arduino.cc/en/Reference/WiFiRSSI
| Use ``WiFi.localIP()`` to get the IP address of Ameba.
| https://www.arduino.cc/en/Reference/WiFiLocalIP
| Use ``WiFiServer server()`` to create a server that listens on the
  specified port.
| https://www.arduino.cc/en/Reference/WiFiServer
| Use ``server.begin()`` to tell the server to begin listening for incoming
  connections.
| https://www.arduino.cc/en/Reference/WiFiServerBegin
| Use ``server.available()`` to get a client that is connected to the server
  and has data available for reading.
| https://www.arduino.cc/en/Reference/WiFiServerAvailable
| Use ``client.connected()`` to get whether or not the client is connected.
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

.. |1| image:: /ambd_arduino/media/Use_Ameba_as_Server_to_control_LED/image1.png
   :width: 1598
   :height: 1126
   :scale: 30 %
.. |1-1| image:: /ambd_arduino/media/Use_Ameba_as_Server_to_control_LED/image1-1.png
   :width: 814
   :height: 758
   :scale: 50 %
.. |2| image:: /ambd_arduino/media/Use_Ameba_as_Server_to_control_LED/image2.png
   :width: 716
   :height: 867
   :scale: 100 %
.. |3| image:: /ambd_arduino/media/Use_Ameba_as_Server_to_control_LED/image3.png
   :width: 716
   :height: 867
   :scale: 100 %
.. |4| image:: /ambd_arduino/media/Use_Ameba_as_Server_to_control_LED/image4.png
   :width: 704
   :height: 355
   :scale: 100 %
.. |5| image:: /ambd_arduino/media/Use_Ameba_as_Server_to_control_LED/image5.png
   :width: 1208
   :height: 940
   :scale: 50 %
