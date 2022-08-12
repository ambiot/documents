####################################################
MQTT - Set up MQTT Client to Communicate with Broker
####################################################

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Intro to MQTT**
:raw-html:`</p>`

MQTT (Message Queuing Telemetry Transport) is a protocol proposed by IBM
and Eurotech. The introduction in `MQTT Official
Website <http://mqtt.org/>`__: MQTT is a machine-to-machine
(M2M)/”Internet of Things” connectivity protocol. It was designed as an
extremely lightweight publish/subscribe messaging transport. We can say
MQTT is a protocol designed for IoT. MQTT is based on TCP/IP and
transmits/receives data via publish/subscribe. Please refer to the
figure below:

   |1|

In the operation of MQTT, there are several roles:

-  **Publisher**: Usually publishers are the devices equipped with sensors
   (ex. Ameba). Publishers uploads the data of the sensors to
   MQTT-Broker, which serves as a database with MQTT service.

-  **Subscriber**: Subscribers are referred to the devices which receive and
   observe messages, such as a laptop or a mobile phone.

-  **Topic**: Topic is used to categorized the messages, for example the
   topic of a message can be “PM2.5” or “Temperature”. Subscribers
   can choose messages of which topics they want to receive.

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Preparation**
:raw-html:`</p>`

- AmebaD [AMB21 / AMB22 / AMB23 / BW16] x 1

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Example**
:raw-html:`</p>`

| In this example, we connect Ameba to MQTT-Broker. Then send messages as
  publisher and receive messages from MQTT-Broker as subscriber.
| Open the MQTT example ``“File” → “Examples” → “AmebaMQTTClient” →
  “MQTT_Basic”``

  |2|

| Please modify some WiFi-related parameters. 
| And some information related to MQTT:

  |3|

The “mqttServer” refers to the MQTT-Broker, we use the free MQTT sandbox 
“test.mosquitto.org” for testing. 
  
  - “clientId” is an identifier for MQTT-Broker to identify the connected device. 
  - “publishTopic” is the topic of the published message, we use “outTopic” in the example. The devices subscribe to “outTopic”
    will receive the message. 
  - “publishPayload” is the content to be published. 
  - “subscribeTopic” is to tell MQTT-broker which topic we want to subscribe to. 

| Next, compile the code and upload it to Ameba. Press the reset button, then open the serial monitor

  |4|  

| After Ameba is connected to MQTT server, it sends the message “hello world” to “outTopic”. 
| To see the message, we need another MQTT client. 
| Here we use a chrome plugin “MQTTLens” to be the MQTT client. You can find it in google webstore.

  |5|


Install and open the MQTTLens, click “+” next
to “Connection” on the left, and fill in the required information

  - **Connection Name**: Used to identify the connection, you can choose a
    name you like.
  - **Hostname**: The MQTT-Broker server, here we use “iot.eclipse.org”
  - **Client ID**: We use the default randomly generated ID.

| Then click “CREATE CONNECTION”.

  |6|

| Since we have not registered the topic we want to listen to, we would not receive any messages now. 
| Fill in “outTopic” in the “Topic” field and click “Subscribe”. 
| Wait for Ameba to send next message (or you can press the reset button). Then you can see the 
  “hello world” message show up.

  |7|

.. |1| image:: /media/ambd_arduino/MQTT_Set_Up_MQTT_Client_To_Communicate_With_Broker/image1.png
   :width: 1144
   :height: 751
   :scale: 50 %
.. |2| image:: /media/ambd_arduino/MQTT_Set_Up_MQTT_Client_To_Communicate_With_Broker/image2.png
   :width: 683
   :height: 1006
   :scale: 70 %
.. |3| image:: /media/ambd_arduino/MQTT_Set_Up_MQTT_Client_To_Communicate_With_Broker/image3.png
   :width: 683
   :height: 856
   :scale: 70 %
.. |4| image:: /media/ambd_arduino/MQTT_Set_Up_MQTT_Client_To_Communicate_With_Broker/image4.png
   :width: 704
   :height: 355
   :scale: 100 %
.. |5| image:: /media/ambd_arduino/MQTT_Set_Up_MQTT_Client_To_Communicate_With_Broker/image5.png
   :width: 1010
   :height: 744
   :scale: 70 %
.. |6| image:: /media/ambd_arduino/MQTT_Set_Up_MQTT_Client_To_Communicate_With_Broker/image6.png
   :width: 1208
   :height: 834
   :scale: 60 %
.. |7| image:: /media/ambd_arduino/MQTT_Set_Up_MQTT_Client_To_Communicate_With_Broker/image7.png
   :width: 1217
   :height: 845
   :scale: 60 %