#########################################
MQTT - Use Amazon AWS IoT Shadow Service
#########################################

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Preparation**
:raw-html:`</p>`

  - AmebaD [AMB21 / AMB22 / AMB23 / BW16] x 1

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Example**
:raw-html:`</p>`

| **Introduction**
| Amazon AWS IoT is a cloud IoT service platform:
| Amazon AWS IoT is a platform that enables you to connect devices to AWS
  Services and other devices, secure data and interactions, process and
  act upon device data, and enable applications to interact with devices
  even when they are offline. (https://aws.amazon.com/iot/how-it-works/)
| The service architecture of AWS IoT:
| |1|
| (Picture from http://docs.aws.amazon.com/iot/latest/developerguide/aws-iot-how-it-works.html )
| In the architecture, Ameba belongs to the upper-left “Things” block. A
  TLS secure channel will be established between “Things” and the MQTT
  Message Broker. Afterwards, “Things” and “Message Broker” communicate
  using MQTT Protocol via this secure channel. Behind the “Message
  Broker”, the “Thing Shadows” keeps messages temporarily when Ameba is
  offline, and sends the control message to Ameba next time it is
  connected. The “Rules Engine” allows you to place restrictions to the
  behavior of Things or to connect Things to other services of Amazon.

| **AWS Management Console**

| First, create an account and sign up for AWS IoT service:https://aws.amazon.com/
| Afterwards, log in to the Amazon Management Console and click “IoT Core” found under services → 
  Internet of Things.

  |2|

| Then you will enter the home page of AWS IoT. To offer the best service quality, 
  Amazon offers servers in different regions for users to choose from.
| Click the region dropdown menu at the upper-right:

  |3|

| Choose a nearby region.

  |4|

| Then from Services, go to Onboard then Get Started.

  |6|

| Enter the main page of AWS IoT. Under the Onboard a device, click Get started.

  |5|

| Click Create single thing

  |7|

| Fill in “ameba” on the name field. Attributes represent the status of Ameba.

  |8|

| Under the searchable thing attributes. The value of the attributes can be updated 
  directly by Ameba or by the control side and control side can request Ameba to 
  set the attribute to desired value.
| Here we add an attribute named “led” with value “0” and click “Next”.

  |9|

| Click Skip creating a certificate at this time and then Create thing

  |10|

| Next, click Policy¸ and create a policy. Policy is used to restrict the functions 
  that a “thing” can do, it can limit the MQTT actions or specific topic that can 
  be performed. Learn more about policy:
| http://docs.aws.amazon.com/iot/latest/developerguide/authorization.html
| Here we do not place policy on Ameba. Fill in “amebaPolicy” in the Name field, 
  “iot:*” in Action field and “*” in resources field. Then “Allow”. Finally, 
  click “Create”.

  |11|

| Next, we have to setup the TLS certificate. You can choose to user-defined or generate a 
  certificate by AWS IoT. In this example we click Create Certificate to generate a TLS 
  certificate.

  |12|

| You can see 4 Links. Please download each of the link, “public key”, “private key”, 
  “Certificate” and “rootCA”. After downloading the 4 files, click Done and go back to 
  the certificate main page.

  |13|

| Click Attach a policy in the Actions dropdown menu.

  |14|

| Choose amebaPolicy and click attach.

  |15|

| Then go back to the “Actions” drop-down menu at the top right of the
  certificates homepage, click on “Attach thing”, select the thing
  “ameba” you just created when the window below appears, then click on
  “Attach”

  |16|

| Go back to certificate main page and click Certificate and click Activate 
  in the Actions drop down menu.

  |17|

| Next, click Manage, and click Things, then click “ameba” the thing we created just now.
| Click on Interact and View settings.

  |18|

| Find out the information of Rest API Endpoint to set Amazon Alexa:

  - REST API endpoint: In the value “https://a1a7oo4baosgyy.iot.us-east-1.amazonaws.com/things/ameba/shadow”, 
    the part “a1a7oo4baosgyy.iot.us-east-1.amazonaws.com” is the MQTT Broker server address.
  - MQTT topic：The value “$aws/things/ameba/shadow/update” represents the MQTT topic we will use in the AWS
    IoT Shadow service (if we use MQTT only, without AWS IoT Shadow service, then we can specify other topic 
    name). It is recommended to use “$aws/things/ameba/shadow/update” here.

**Ameba setting**

| Open ``“File” → “Examples” → “AmebaMQTTClient” → “Amazon_AWS_IoT_Basic”``
| In the sample code, modify the highlighted snippet to reflect your WiFi 
  network settings.

  |19|

| Then fill in the “thing” name “ameba”.

  |20|

| And the MQTT Broker server address we found earlier in AWS IoT.

  |21|

| Next, fill in the root CA used in TLS. Download and make sure the
  downloaded root CA contents conforms to the root CA used in the
  sketch.

  |22|

| Next, fill in the certificate we created in the AWS IoT Console (i.e.,
  client certificate), usually its file name ends with
  “-certificate.pem.crt” (e.g., “efae24a533-certificate.pem.crt”). Open
  the certificate with a text editor, and adjust its format as follows
  to use in the sketch:
| – Add the new line character “\n” at the end of each line.
| – Add double-quote at the beginning and the end of each line.
| – To concatenate each line as a string, add “\” at the end of each
  line.
| – The last line ends with semicolon.
| Adjust the format of the private key in the same way and add it to
  privateKeyBuff.

  |23|

**Compile and run**

| Upload the code and press the reset button on Ameba once the upload is
  finished.
| Open the serial monitor in the Arduino IDE and observe as Ameba
  connects to the AWS IoT server and sends updates on the LED state
  variable.

  |24|

**Alternatives**

Ameba can also retrieve the current LED status variable from the AWS
shadow. This is done by sending a message to the “shadow/get” topic.
Refer to the Amazon_AWS_IoT_with_ACK example code for more information.

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Code Reference**
:raw-html:`</p>`

| Change led state:
| In this example, we use GPIO interface to control the led. We set
  led_pin to 10 and led_state to 1 by default in the sample code.

.. code-block:: C
  
  pinMode(led_pin, OUTPUT);
  digitalWrite(led_pin, led_state);

| Set up certificate:
| Note that we use the WiFiSSLClient type of wifiClient.

.. code-block:: C
  
  WiFiSSLClient wifiClient;

| WiFiSSLClient inherits Client, so it can be passed as the parameter of
  PubSubClient constructor.
| Next, set up TLS certificate required in connection.

.. code-block:: C

  wifiClient.setRootCA((unsigned char*)rootCABuff);
  wifiClient.setClientCertificate((unsigned char*)certificateBuff,(unsigned char*)privateKeyBuff);

| Configure MQTT Broker server
| Then MQTT PubClient set MQTT Broker server to connect

.. code-block:: C

  client.setServer(mqttServer, 8883);
  client.setCallback(callback);

| Connect to MQTT Broker server:
| In ``loop()``, call ``reconnect()`` function and try to connect to MQTT Broker
  server and do the certificate verification.

.. code-block:: C

  while (!client.connected()) {

| Subscribe & Publish
| Next, subscribe to topics.

.. code-block:: C

  for (int i=0; i<5; i++) {
    client.subscribe(subscribeTopic[i]);
  }

| There are some common topics:
| “$aws/things/ameba/shadow/update/accepted”,
| “$aws/things/ameba/shadow/update/rejected”,
| “$aws/things/ameba/shadow/update/delta”,
| “$aws/things/ameba/shadow/get/accepted”,
| “$aws/things/ameba/shadow/get/rejected”
| Related documentation:
| http://docs.aws.amazon.com/iot/latest/developerguide/thing-shadow-data-flow.html

| Then publish current status::

.. code-block:: C

  sprintf(publishPayload,
  "{\"state\":{\"reported\":{\"led\":%d}},\"clientToken\":\"%s\"}",
  led_state, clientId);

.. code-block:: C

  client.publish(publishTopic, publishPayload);

| Listen to topic and make response:
| In the callback function, we listen to the 5 subscribed topics and
  check if there are messages of “/shadow/get/accepted”:

.. code-block:: C

  if (strstr(topic, "/shadow/get/accepted") != NULL) {

If there is, the message is from the control side. If the attribute
state in the message is different from current state, publish the new
state.

.. code-block:: C
  
  updateLedState(desired_led_state);

.. |1| image:: /media/ambd_arduino/MQTT_Use_Amazon_AWS_IoT_Shadow_Service/image1.png
   :width: 900
   :height: 400
   :scale: 90 %
.. |2| image:: /media/ambd_arduino/MQTT_Use_Amazon_AWS_IoT_Shadow_Service/image2.png
   :width: 1898
   :height: 9
   :scale: 50 %
.. |3| image:: /media/ambd_arduino/MQTT_Use_Amazon_AWS_IoT_Shadow_Service/image3.png
   :width: 1279
   :height: 984
   :scale: 50 %
.. |4| image:: /media/ambd_arduino/MQTT_Use_Amazon_AWS_IoT_Shadow_Service/image4.png
   :width: 1279
   :height: 984
   :scale: 50 %
.. |5| image:: /media/ambd_arduino/MQTT_Use_Amazon_AWS_IoT_Shadow_Service/image5.png
   :width: 1898
   :height: 830
   :scale: 50 %
.. |6| image:: /media/ambd_arduino/MQTT_Use_Amazon_AWS_IoT_Shadow_Service/image6.png
   :width: 1279
   :height: 986
   :scale: 50 %
.. |7| image:: /media/ambd_arduino/MQTT_Use_Amazon_AWS_IoT_Shadow_Service/image7.png
   :width: 1898
   :height: 830
   :scale: 50 %
.. |8| image:: /media/ambd_arduino/MQTT_Use_Amazon_AWS_IoT_Shadow_Service/image8.png
   :width: 1898
   :height: 830
   :scale: 50 %
.. |9| image:: /media/ambd_arduino/MQTT_Use_Amazon_AWS_IoT_Shadow_Service/image9.png
   :width: 1898
   :height: 830
   :scale: 50 %
.. |10| image:: /media/ambd_arduino/MQTT_Use_Amazon_AWS_IoT_Shadow_Service/image10.png
   :width: 1898
   :height: 830
   :scale: 50 %
.. |11| image:: /media/ambd_arduino/MQTT_Use_Amazon_AWS_IoT_Shadow_Service/image11.png
   :width: 1898
   :height: 830
   :scale: 50 %
.. |12| image:: /media/ambd_arduino/MQTT_Use_Amazon_AWS_IoT_Shadow_Service/image12.png
   :width: 1599
   :height: 800
   :scale: 50 %
.. |13| image:: /media/ambd_arduino/MQTT_Use_Amazon_AWS_IoT_Shadow_Service/image13.png
   :width: 1269
   :height: 616
   :scale: 50 %
.. |14| image:: /media/ambd_arduino/MQTT_Use_Amazon_AWS_IoT_Shadow_Service/image19.png
   :width: 1898
   :height: 830
   :scale: 50 %
.. |15| image:: /media/ambd_arduino/MQTT_Use_Amazon_AWS_IoT_Shadow_Service/image20.png
   :width: 1898
   :height: 830
   :scale: 50 %
.. |16| image:: /media/ambd_arduino/MQTT_Use_Amazon_AWS_IoT_Shadow_Service/image21.png
   :width: 1898
   :height: 902
   :scale: 50 %
.. |17| image:: /media/ambd_arduino/MQTT_Use_Amazon_AWS_IoT_Shadow_Service/image18.png
   :width: 1279
   :height: 435
   :scale: 50 %
.. |18| image:: /media/ambd_arduino/MQTT_Use_Amazon_AWS_IoT_Shadow_Service/image22.png
   :width: 1920
   :height: 753
   :scale: 50 %
.. |19| image:: /media/ambd_arduino/MQTT_Use_Amazon_AWS_IoT_Shadow_Service/image24.png
   :width: 639
   :height: 846
   :scale: 70 %
.. |20| image:: /media/ambd_arduino/MQTT_Use_Amazon_AWS_IoT_Shadow_Service/image25.png
   :width: 639
   :height: 846
   :scale: 100 %
.. |21| image:: /media/ambd_arduino/MQTT_Use_Amazon_AWS_IoT_Shadow_Service/image26.png
   :width: 639
   :height: 846
   :scale: 100 %
.. |22| image:: /media/ambd_arduino/MQTT_Use_Amazon_AWS_IoT_Shadow_Service/image27.png
   :width: 639
   :height: 846
   :scale: 100 %
.. |23| image:: /media/ambd_arduino/MQTT_Use_Amazon_AWS_IoT_Shadow_Service/image28.png
   :width: 639
   :height: 846
   :scale: 100 %
.. |24| image:: /media/ambd_arduino/MQTT_Use_Amazon_AWS_IoT_Shadow_Service/image29.png
   :width: 851
   :height: 546
   :scale: 50 %