#################################################
WiFi - Retrieve Universal Time (UTC) by UDP
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

| In this example, we connect Ameba to WiFi. Then send NTP (Network Time
  Protocol, RFC 1305) request to NTP server using UDP. After receiving the
  NTP request, the NTP server replies current UTC (Coordinated Universal
  Time) packet. We will parse the UTC packet to show current UTC time in
  the serial monitor.
| Open the example: ``“File” → “Examples” → “WiFi” → “WiFiUdpNtpClient”``
| |1|
| Modify the highlighted code section (ssid, password, keyindex) to connect 
  to your WiFi network.
| |2|
| Compile the code and upload it to Ameba. After pressing the Reset button, 
  Ameba connects to WiFi and sends NTP request packet to NTP server 
  “129.6.15.28”.
| We parse the replied packet and show UTC time in serial monitor:
| |3|

.. |1| image:: /media/ambd_arduino/WiFi_Retrieve_universal_time_(UTC)_by_UDP/image1.png
   :width: 897
   :height: 957
   :scale: 70 %
.. |2| image:: /media/ambd_arduino/WiFi_Retrieve_universal_time_(UTC)_by_UDP/image2.png
   :width: 716
   :height: 867
   :scale: 60 %
.. |3| image:: /media/ambd_arduino/WiFi_Retrieve_universal_time_(UTC)_by_UDP/image3.png
   :width: 704
   :height: 423
   :scale: 70 %