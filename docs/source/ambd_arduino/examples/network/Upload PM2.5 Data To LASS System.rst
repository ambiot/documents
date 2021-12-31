#################################################
Upload PM2.5 Data to LASS System
#################################################

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Intro to LASS**
:raw-html:`</p>`

| The LASS stands for “Location Aware Sensor System”. It is an open
  project and was started only for the interest of public welfare. Find
  detailed
  introduction `here <http://makerpro.cc/2015/09/projectplus-lass/>`__.
| Practically, LASS is based on MQTT protocol to collect all kinds of
  uploaded data, and for those who need these data can subscribe top as
  well. 
| Find more LASS information at their `official hackpad <https://lass.hackpad.com/>`__.

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Preparation**
:raw-html:`</p>`

   - AmebaD [RTL8722DM / RTL8722CSM / RTL8722DM MINI] x 1
   - PlanTower PMS3003 or PMS5003 x1

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Example**
:raw-html:`</p>`

In this example, we use applications mentioned at our website,
including:

-  `MQTT <https://www.amebaiot.com/amebad-arduino-mqtt-upload-listen/>`__:
   a MQTT-Broker to connect to LASS. The Client is “FT1_0XXXX”, the
   XXXX are the four last digits of Ameba’s Wi-Fi MAC, and the
   outTopic is “LASS/Test/Pm25Ameba/**clientID**\ “, where clientID
   is the actual Ameba’s MQTT client ID.

-  `NTP <https://www.amebaiot.com/amebad-arduino-utc-time/>`__: uploaded
   data must have time notation

-  `PM2.5 <https://www.amebaiot.com/amebad-arduino-pm25/>`__: uploaded
   data includes PM2.5 information

| Open the example. ``“File” -> “Examples” -> “AmebaMQTTClient” ->
  “lass_basic”``
| |1| 
| This example requires internet connection, so make sure you fill in SSID 
  and PASS into AP information that you wish to connect. 

| Also, LASS requires GPS information. There is no GPS sensor
  included in this example, so you must manually provide GPS information.
  Use Google Map to find the coordinates you plan to place your Ameba. You
  can see in this example that the latitude is 24.7814033, and the
  longitude is 120.9933676 
| |2| 
| Fill in GPS info at ``gps_lat`` and ``gps_lon``. 
| |3| 

| Then connect sensors according to UART-PlanTower PMS3003 wiring example. 
| **RTL8722DM / RTL8722CSM**:
| |4| 
| **RTL8722DM MINI**:
| |4-1|
| Compile the code and upload it to Ameba. After pressing the Reset button, 
  Ameba will attempt to read PM2.5 data every minute and upload it to LASS
  MQTT-Broker. Open Serial Monitor to see the uploaded data, including client 
  id, topic, and current PM2.5 status.
| |5|

| We can also use MQTTlens to verify if the data is properly uploaded. 

| Enter “gpssensor.ddns.net” as the MQTT-Broker server and “LASS/Test/PM25/live”
  as the subscribe topic to receive data. 
  
| The time uses UTC format, and the PM2.5 data stores in s-d0. In the figure, 
  s_d0 = 9 represents that the PM2.5 is 9, meaning that the entire publish/subscribe 
  process is working successfully.
| |6|

.. |1| image:: /ambd_arduino/media/Upload_PM2/image1.png
   :width: 712
   :height: 1066
   :scale: 50 %
.. |2| image:: /ambd_arduino/media/Upload_PM2/image2.png
   :width: 959
   :height: 668
   :scale: 100 %
.. |3| image:: /ambd_arduino/media/Upload_PM2/image3.png
   :width: 679
   :height: 843
   :scale: 100 %
.. |4| image:: /ambd_arduino/media/Upload_PM2/image4.png
   :width: 928
   :height: 481
   :scale: 80 %
.. |4-1| image:: /ambd_arduino/media/Upload_PM2/image4-1.png
   :width: 697
   :height: 653
   :scale: 80 %
.. |5| image:: /ambd_arduino/media/Upload_PM2/image5.png
   :width: 1217
   :height: 839
   :scale: 50 %
.. |6| image:: /ambd_arduino/media/Upload_PM2/image6.png
   :width: 1217
   :height: 839
   :scale: 50 %