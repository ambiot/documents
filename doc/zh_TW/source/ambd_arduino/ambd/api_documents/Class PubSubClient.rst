Class PMUClass
================
**PubSubClient Class**

| **Description**
| Defines a class of MQTT implementation for Ameba.

| **Syntax**
| class PubSubClient

**Members**

+----------------------------+----------------------------------------+
| **Public Constructors**    |                                        |
+============================+========================================+
| PubSubClient::PubSubClient | Constructs a PubSubClient object       |
+----------------------------+----------------------------------------+
| **Public Methods**         |                                        |
+----------------------------+----------------------------------------+
| PubSubClient::setServer    | Set MQTT server address and port       |
+----------------------------+----------------------------------------+
| PubSubClient::setCallback  | Set callback function                  |
+----------------------------+----------------------------------------+
| PubSubClient::setClient    | Set WiFi client                        |
+----------------------------+----------------------------------------+
| PubSubClient::setStream    | Set data stream                        |
+----------------------------+----------------------------------------+
| PubSubClient::connect      | Attempt to connect to server           |
+----------------------------+----------------------------------------+
| PubSubClient::disconnect   | Disconnect from current session        |
+----------------------------+----------------------------------------+
| PubSubClient::publish      | Publish a message to server            |
+----------------------------+----------------------------------------+
| PubSubClient::publish_P    | Same as above                          |
+----------------------------+----------------------------------------+
| PubSubClient::subscribe    | Subscribe to a topic                   |
+----------------------------+----------------------------------------+
| PubSubClient::unsubscribe  | Unsubscribe to a topic                 |
+----------------------------+----------------------------------------+
| PubSubClient::loop         | Keep MQTT session alive and process    |
|                            | any queuing tasks                      |
+----------------------------+----------------------------------------+
| PubSubClient::connected    | Check if client still connected        |
+----------------------------+----------------------------------------+
| PubSubClient::state        | Return connection state                |
+----------------------------+----------------------------------------+

**PubSubClient::PubSubClient**

| **Description**
| Constructs a PubSubClient object and, if applicable, sets server
  address, port, callback function, data stream and wifi client.

| **Syntax**
| PubSubClient::PubSubClient();
| PubSubClient::PubSubClient(Client& client);
| PubSubClient::PubSubClient(IPAddress, uint16_t, Client& client);
| PubSubClient::PubSubClient(IPAddress, uint16_t, Client& client,
  Stream&);
| PubSubClient::PubSubClient(IPAddress, uint16_t,
  MQTT_CALLBACK_SIGNATURE, Client& client);
| PubSubClient::PubSubClient(IPAddress, uint16_t,
  MQTT_CALLBACK_SIGNATURE, Client& client, Stream&);
| PubSubClient::PubSubClient(uint8_t \*, uint16_t, Client& client);
| PubSubClient::PubSubClient(uint8_t \*, uint16_t, Client& client,
  Stream&);
| PubSubClient::PubSubClient(uint8_t \*, uint16_t,
  MQTT_CALLBACK_SIGNATURE, Client& client);
| PubSubClient::PubSubClient(uint8_t \*, uint16_t,
  MQTT_CALLBACK_SIGNATURE, Client& client, Stream&);
| PubSubClient::PubSubClient(const char*, uint16_t, Client& client);
| PubSubClient::PubSubClient(const char*, uint16_t, Client& client,
  Stream&);
| PubSubClient::PubSubClient(const char*, uint16_t,
  MQTT_CALLBACK_SIGNATURE, Client& client);
| PubSubClient::PubSubClient(const char*, uint16_t,
  MQTT_CALLBACK_SIGNATURE, Client& client, Stream&);

| **Parameters**
| client: the network client to use, for example WiFiClient
| IPAddress: MQTT server address
| port: port for MQTT, usually 1883 for unencrypted connection
| MQTT_CALLBACK_SIGNATURE: callback function for MQTT
| Stream: a stream to write received messages to

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: MQTT_Basic

**#include <WiFi.h>**

**#include <PubSubClient.h>**

// Update these with values suitable for your network.

**char** ssid[] = "yourNetwork"; // your network SSID (name)

**char** pass[] = "secretPassword"; // your network password

**int** status = WL_IDLE_STATUS; // the Wifi radio's status

**char** mqttServer[] = "test.mosquitto.org";

**char** clientId[] = "amebaClient";

**char** publishTopic[] = "outTopic";

**char** publishPayload[] = "hello world";

**char** subscribeTopic[] = "inTopic";

**void** callback(**char**\ \* topic, byte\* payload, unsigned **int**
length) {

Serial.print("Message arrived [");

Serial.print(topic);

Serial.print("] ");

**for** (**int** i=0;i<length;i++) {

Serial.print((**char**)payload[i]);

}

Serial.println();

}

WiFiClient wifiClient;

PubSubClient client(wifiClient);

**void** reconnect() {

// Loop until we're reconnected

**while** (!client.connected()) {

Serial.print("Attempting MQTT connection...");

// Attempt to connect

**if** (client.connect(clientId)) {

Serial.println("connected");

// Once connected, publish an announcement...

client.publish(publishTopic, publishPayload);

// ... and resubscribe

client.subscribe(subscribeTopic);

} **else** {

Serial.print("failed, rc=");

Serial.print(client.state());

Serial.println(" try again in 5 seconds");

// Wait 5 seconds before retrying

delay(5000);

}

}

}

**void** setup()

{

Serial.begin(38400);

**while** (status != WL_CONNECTED) {

Serial.print("Attempting to connect to SSID: ");

Serial.println(ssid);

// Connect to WPA/WPA2 network. Change this line if using open or WEP
network:

status = WiFi.begin(ssid, pass);

// wait 10 seconds for connection:

delay(10000);

}

client.setServer(mqttServer, 1883);

client.setCallback(callback);

// Allow the hardware to sort itself out

delay(1500);

}

**void** loop()

{

**if** (!client.connected()) {

reconnect();

}

client.loop();

}

| **Notes and Warnings**
| PubSubClient::PubSubClient(Client& client) would suffice for normal
  MQTT connection 

**PubSubClient::setServer**

| **Description**
| Sets the server details.

| **Syntax**
| PubSubClient& PubSubClient::setServer(uint8_t \* ip, uint16_t port)
| PubSubClient& PubSubClient::setServer(IPAddress ip, uint16_t port)
| PubSubClient& PubSubClient::setServer(const char \* domain, uint16_t
  port)

| **Parameters**
| ip: the address of the server
| port: the port to connect to, default 1883
| domain: the address of the server

| **Returns**
| The client instance, allowing the function to be chained

| **Example Code**
| Example: MQTT_Basic

| **Notes and Warnings**
| NA 

**PubSubClient::setCallback**

| **Description**
| Sets the message callback function.

| **Syntax**
| PubSubClient& PubSubClient::setCallback(MQTT_CALLBACK_SIGNATURE)

| **Parameters**
| MQTT_CALLBACK_SIGNATURE: a pointer to a message callback function
  called when a message arrives for a subscription created by this
  client.

| **Returns**
| The client instance, allowing the function to be chained.

| **Example Code**
| Example: MQTT_Basic

| **Notes and Warnings**
| NA 

**PubSubClient::setClient**

| **Description**
| Sets the network client instance to use.

| **Syntax**
| PubSubClient& PubSubClient::setClient(Client& client)

| **Parameters**
| client: the network client to use, for example WiFiClient

| **Returns**
| The client instance, allowing the function to be chained

| **Example Code**
| NA

| **Notes and Warnings**
| NA 

**PubSubClient::setStream**

| **Description**
| Sets the stream to write received messages to.

| **Syntax**
| PubSubClient& PubSubClient::setStream(Stream& stream)

| **Parameters**
| stream: a stream to write received messages to

| **Returns**
| The client instance, allowing the function to be chained.

| **Example Code**
| NA

| **Notes and Warnings**
| NA 

**PubSubClient::connect**

| **Description**
| Connects the client to the server.

| **Syntax**
| boolean PubSubClient::connect(const char \*id)
| boolean PubSubClient::connect(const char \*id, const char \*user,
  const char \*pass)
| boolean PubSubClient::connect(const char \*id, const char\* willTopic,
  uint8_t willQos, boolean willRetain, const char\* willMessage)
| boolean PubSubClient::connect(const char \*id, const char \*user,
  const char \*pass, const char\* willTopic, uint8_t willQos, boolean
  willRetain, const char\* willMessage)

| **Parameters**
| id: Client ID, a unique string identifier
| user: Username for authentication, default NULL
| pass: Password for authentication, default NULL
| willTopic: the topic to be used by the will message
| willQoS: the quality of service to be used by the will message
| willRetain: whether the will should be published with the retain flag
| willMessage: the payload of the will message

| **Returns**
| True – connection succeeded
| False – connection failed

| **Example Code**
| Example: MQTT_Basic

| **Notes and Warnings**
| Client ID is required and should always be unique else connection
  might be rejected by the server. 

**PubSubClient::disconnect**

| **Description**
| Disconnect the client

| **Syntax**
| void PubSubClient::disconnect(void)

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| NA 

**PubSubClient::publish**

| **Description**
| Publishes a message to the specified topic.

| **Syntax**
| boolean PubSubClient::publish(const char\* topic, const char\*
  payload)
| boolean PubSubClient::publish(const char\* topic, const char\*
  payload, boolean retained)
| boolean PubSubClient::publish(const char\* topic, const uint8_t\*
  payload, unsigned int plength)
| boolean PubSubClient::publish(const char\* topic, const uint8_t\*
  payload, unsigned int plength, boolean retained)

| **Parameters**
| topic: the topic to publish to
| payload: the message to publish
| plength: the length of the payload. Required if payload is a byte[]
| retained: whether the message should be retained
| – false – not retained
| – true – retained

| **Returns**
| False – publish failed, either connection lost or message too large
| True – publish succeeded

| **Example Code**
| Example: MQTT_Basic

| **Notes and Warnings**
| Default max packet size is 128 bytes. 

**PubSubClient::publish_P**

| **Description**
| Publishes a message stored in PROGMEM to the specified topic.

| **Syntax**
| boolean PubSubClient::publish_P(const char\* topic, const uint8_t\*
  payload, unsigned int plength, boolean retained)

| **Parameters**
| topic: the topic to publish to
| payload: the message to publish
| plength: the length of the payload. Required if payload is a byte[]
| retained: whether the message should be retained
| – false – not retained
| – true – retained

| **Returns**
| False – publish failed, either connection lost or message too large
| True – publish succeeded

| **Example Code**
| NA

| **Notes and Warnings**
| NA 

**PubSubClient::subscribe**

| **Description**
| Subscribes to messages published to the specified topic.

| **Syntax**
| boolean PubSubClient::subscribe(const char\* topic)
| boolean PubSubClient::subscribe(const char\* topic, uint8_t qos)

| **Parameters**
| topic: the topic to subscribe to
| qos: the qos to subscribe at

| **Returns**
| False – sending the subscribe failed, either connection lost or
  message too large
| True – sending the subscribe succeeded

| **Example Code**
| Example: MQTT_Basic

| **Notes and Warnings**
| NA 

**PubSubClient::unsubscribe**

| **Description**
| Unsubscribes from the specified topic.

| **Syntax**
| boolean PubSubClient::unsubscribe(const char\* topic)

| **Parameters**
| topic: the topic to unsubscribe to

| **Returns**
| False – sending the unsubscribe failed, either connection lost or
  message too large
| True – sending the unsubscribe succeeded

| **Example Code**
| NA

| **Notes and Warnings**
| NA 

**PubSubClient::loop**

| **Description**
| A must method called regularly to allow the client to process incoming
  messages and maintain its connection to the server.

| **Syntax**
| boolean PubSubClient::loop(void)

| **Parameters**
| The function requires no input parameter.

| **Returns**
| False – the client is no longer connected
| True – the client is still connected

| **Example Code**
| Example: MQTT_Basic

| **Notes and Warnings**
| A required method that should not be blocked for too long. 

**PubSubClient::connected**

| **Description**
| Checks whether the client is connected to the server.

| **Syntax**
| boolean PubSubClient::connected(void)

| **Parameters**
| The function requires no input parameter.

| **Returns**
| False – the client is not connected
| True – the client is connected

| **Example Code**
| Example: MQTT_Basic

| **Notes and Warnings**
| NA 

**PubSubClient::state**

| **Description**
| Returns the current state of the client. If a connection attempt
  fails, this can be used to get more information about the failure.
| All of the values have corresponding constants defined in
  PubSubClient.h.

| **Syntax**
| int PubSubClient::state(void)

| **Parameters**
| The function requires no input parameter.

| **Returns**
| -4 : MQTT_CONNECTION_TIMEOUT – the server didn’t respond within the
  keepalive time
| -3 : MQTT_CONNECTION_LOST – the network connection was broken
| -2 : MQTT_CONNECT_FAILED – the network connection failed
| -1 : MQTT_DISCONNECTED – the client is disconnected cleanly
| 0 : MQTT_CONNECTED – the client is connected
| 1 : MQTT_CONNECT_BAD_PROTOCOL – the server doesn’t support the
  requested version of MQTT
| 2 : MQTT_CONNECT_BAD_CLIENT_ID – the server rejected the client
  identifier
| 3 : MQTT_CONNECT_UNAVAILABLE – the server was unable to accept the
  connection
| 4 : MQTT_CONNECT_BAD_CREDENTIALS – the username/password were rejected
| 5 : MQTT_CONNECT_UNAUTHORIZED – the client was not authorized to
  connect

| **Example Code**
| Example: MQTT_Basic

| **Notes and Warnings**
| NA 
