#################################################
WiFi - Set up UDP Server to Communicate
#################################################

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Preparation**
:raw-html:`</p>`

  - AmebaD [AMB21 / AMB22 / AMB23 / BW16] x 1

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Example**
:raw-html:`</p>`

| In this example, we connect Ameba to WiFi and use Ameba to be an UDP
  server. When Ameba receives a message from UDP client, it replies
  “acknowledged” message to client.

| Open the WiFi Web Server example. ``“File” → “Examples” → “WiFi”
  → “WiFiUdpSendReceiveString”``
| |1|
| Modify the highlighted code section (ssid, password, keyindex) to
  connect to your WiFi network.
| |2|


Compile the code and upload it to Ameba. After pressing the Reset
button, Ameba connects to WiFi and starts the UDP server with port 2390.
After the UDP server starts service, Ameba prints the “Starting
connection to server” message and waits for client connection.

| |3|
| As to the UDP client, we use “sokit” program in the computer to
  connect to UDP server.

| Choose client mode and fill in the IP of UDP server (which is the IP of
  Ameba) and port 2390, then click “UDP Connect”.

| After the connection is established, fill in “Hello World” in the Buf 0
  field in sokit and click “Send”. Then you can see the Ameba UDP server
  replies “acknowledged”.
| |4|

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Code Reference**
:raw-html:`</p>`

| Refer to the Arduino tutorial for detailed information about this
  example.
| https://www.arduino.cc/en/Tutorial/WiFiSendReceiveUDPString

| First, use ``begin()`` to open an UDP port on Ameba.
| https://www.arduino.cc/en/Reference/WiFiUDPBegin

| Use ``parsePacket()`` to wait for data from client.
| https://www.arduino.cc/en/Reference/WiFiUDPParsePacket

| When a connection is established, use ``remoteIP()`` and ``remotePort()`` to
  get the IP and port of the client.
| https://www.arduino.cc/en/Reference/WiFiUDPRemoteIP

| Then use ``read()`` to read the data sent by client.
| https://www.arduino.cc/en/Reference/WiFiUDPRead

| To send reply, use ``beginPacket()``, ``write()``, ``end()``.
| https://www.arduino.cc/en/Reference/WiFiUDPBeginPacket
| https://www.arduino.cc/en/Reference/WiFiUDPWrite
| https://www.arduino.cc/en/Reference/WiFiUDPEndPacket

.. |1| image:: /media/ambd_arduino/WiFi_Set_Up_UDP_Server_To_Communicate/image1.png
   :width: 898
   :height: 961
   :scale: 70 %
.. |2| image:: /media/ambd_arduino/WiFi_Set_Up_UDP_Server_To_Communicate/image2.png
   :width: 716
   :height: 867
   :scale: 80 %
.. |3| image:: /media/ambd_arduino/WiFi_Set_Up_UDP_Server_To_Communicate/image3.png
   :width: 649
   :height: 410
   :scale: 100 %
.. |4| image:: /media/ambd_arduino/WiFi_Set_Up_UDP_Server_To_Communicate/image4.png
   :width: 804
   :height: 575
   :scale: 100 %