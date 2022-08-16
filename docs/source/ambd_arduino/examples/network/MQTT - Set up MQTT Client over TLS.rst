###################################
MQTT - Set up MQTT Client over TLS
###################################

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Preparation**
:raw-html:`</p>`

- AmebaD [AMB21 / AMB22 / AMB23 / BW16] x 1

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Example**
:raw-html:`</p>`

| In this example, we connect Ameba to a MQTT broker using TLS
  authentication. Then send messages as a publisher and receive messages
  from as a subscriber. Open the MQTT example ``“File” → “Examples” →
  “AmebaMQTTClient” → “MQTT_TLS”`` 

  |1|

| Please modify the WiFi-related parameters to connect to your WiFi network. 
| Modify the MQTT parameters to fit your application:

  |2|

| The “mqttServer” refers to the MQTT-Broker, we use the free MQTT sandbox 
  “test.mosquitto.org” for testing.
| “clientId” is an identifier for MQTT-Broker to identify the connected device. 
| “publishTopic” is the topic of the published message, we use “outTopic” in the 
  example. The devices subscribe to “outTopic” will receive the message. 
| “publishPayload” is the content to be published. 
| “subscribeTopic” is to tell MQTT-broker which topic we want to subscribe to. 

| Next, compile the code and upload it to Ameba. Press the reset button, then 
  open the serial monitor 

  |3| 

| After Ameba is connected to MQTT server, it sends the message “hello world” to
  “outTopic”. To see the message, use another MQTT client. Refer to the
  MQTT_Basic example guide on how to setup a PC-based MQTT client. 
  
| If you wish to use TLS client authentication in addition to server
  authentication, you will need to generate an OpenSSL private key and
  obtain a signed certificate from the server. For testing purposes,
  signed certificates can be obtained from test.mosquitto.org by following
  the guide at https://test.mosquitto.org/ssl/. 
  
| Replace the character strings “certificateBuff” and “privateKeyBuff” with your 
  signed certificate and OpenSSL private key, ensuring that they are formatted
  the same way as the shown in the example code. Also uncomment the highlighted 
  code to enable client authentication, and to change the MQTT port number.

  |4|
  
  |5|

.. |1| image:: /media/ambd_arduino/MQTT_Set_Up_MQTT_Client_Over_TLS/image1.png
   :width: 668
   :height: 1028
   :scale: 70 %
.. |2| image:: /media/ambd_arduino/MQTT_Set_Up_MQTT_Client_Over_TLS/image2.png
   :width: 645
   :height: 846
   :scale: 90 %
.. |3| image:: /media/ambd_arduino/MQTT_Set_Up_MQTT_Client_Over_TLS/image3.png
   :width: 633
   :height: 476
   :scale: 100 %
.. |4| image:: /media/ambd_arduino/MQTT_Set_Up_MQTT_Client_Over_TLS/image4.png
   :width: 645
   :height: 846
   :scale: 100 %
.. |5| image:: /media/ambd_arduino/MQTT_Set_Up_MQTT_Client_Over_TLS/image5.png
   :width: 791
   :height: 846
   :scale: 80 %