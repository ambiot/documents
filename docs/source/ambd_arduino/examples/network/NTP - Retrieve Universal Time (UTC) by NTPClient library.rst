##########################################################################
NTP - Retrieve Universal Time (UTC) by NTPClient library
##########################################################################

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Preparation**
:raw-html:`</p>`

  - AmebaD [AMB21 / AMB22 / AMB23 / BW16] x 1

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Example**
:raw-html:`</p>`


In this example, we use an NTP client to sync with NTP 
servers using UDP and keep track of time locally. 
Open the example. 
``“File” → “Examples”→ “NTPClient” → “Advanced”``

  |image1|

| Modify the highlighted code section (ssid, password) to connect to your WiFi network.

  |image2|

| Compile the code and upload it to Ameba. After pressing the Reset button, Ameba
  connects to WiFi, gets the UTC time from the NTP server, and prints out
  the current time with time zone offset to the serial monitor.

  |image3|

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Code Reference**
:raw-html:`</p>`

| Configure NTP client: 
| The NTPClient needs to use a UDP client for
  communications. A WiFiUDP client is declared and passed to the NTPClient
  constructor, along with an NTP server address, time zone offset in
  seconds, and update interval in milliseconds. If detailed configuration
  is not needed, just passing in the UDP client is also sufficient, refer
  to the “NTPClient” → “Basic” example.

.. code-block:: c

   WiFiUDP ntpUDP;
   NTPClient timeClient(ntpUDP, "europe.pool.ntp.org", 3600, 60000);

| Start NTP client: 
| After connecting to WiFi, the NTPClient is started
  using the ``begin()`` function, which causes the client to sync with the NTP
  server and get the UTC time.

.. code-block:: C

   WiFiUDP ntpUDP;
   timeClient.begin();

| Get local time: 
| ``getFormattedTime()`` is used to format the received UTC
  time into the local time zone. ``update()`` is called every loop so that the
  NTPClient will sync with the NTP server once every update interval.

.. code-block:: C

   timeClient.update();
   timeClient.getFormattedTime();

.. |image1| image:: /media/ambd_arduino/NTP_Retrieve_Universal_Time_By_NTPClient_Library/image1.png
   :width: 730
   :height: 1170
   :scale: 70 %
.. |image2| image:: /media/ambd_arduino/NTP_Retrieve_Universal_Time_By_NTPClient_Library/image2.png
   :width: 731
   :height: 944
   :scale: 70 %
.. |image3| image:: /media/ambd_arduino/NTP_Retrieve_Universal_Time_By_NTPClient_Library/image3.png
   :width: 779
   :height: 619
   :scale: 70 %