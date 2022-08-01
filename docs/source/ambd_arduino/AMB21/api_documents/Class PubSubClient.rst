######################
Class PubSubClient
######################


**Description**

Defines a class of MQTT implementation for Ameba.

**Syntax**

.. code:: cpp

  class PubSubClient

**Members**

+----------------------------+----------------------------------------+
| **Public Constructors**    |                                        |
+============================+========================================+
| PubSubClient::PubSubClient | Constructs a PubSubClient object       |
+----------------------------+----------------------------------------+


+----------------------------+----------------------------------------+
| **Public Methods**         |                                        |
+============================+========================================+
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

-----

.. method:: PubSubClient::PubSubClient


**Description**

Constructs a PubSubClient object and, if applicable, sets server
address, port, callback function, data stream and wifi client.

**Syntax**

.. code:: cpp

  PubSubClient::PubSubClient();

.. code:: cpp
  
  PubSubClient::PubSubClient(Client& client);

.. code:: cpp
  
  PubSubClient::PubSubClient(IPAddress, uint16_t, Client& client);

.. code:: cpp
  
  PubSubClient::PubSubClient(IPAddress, uint16_t, Client& client, Stream&);

.. code:: cpp
  
  PubSubClient::PubSubClient(IPAddress, uint16_t, MQTT_CALLBACK_SIGNATURE, Client& client);

.. code:: cpp

  PubSubClient::PubSubClient(IPAddress, uint16_t,MQTT_CALLBACK_SIGNATURE, Client& client, Stream&);

.. code:: cpp
  
  PubSubClient::PubSubClient(uint8_t*, uint16_t, Client& client);

.. code:: cpp
  
  PubSubClient::PubSubClient(uint8_t*, uint16_t, Client& client, Stream&);

.. code:: cpp

  PubSubClient::PubSubClient(uint8_t*, uint16_t, MQTT_CALLBACK_SIGNATURE, Client& client);

.. code:: cpp

  PubSubClient::PubSubClient(uint8_t*, uint16_t,MQTT_CALLBACK_SIGNATURE, Client& client, Stream&);

.. code:: cpp

  PubSubClient::PubSubClient(const char*, uint16_t, Client& client);

.. code:: cpp

  PubSubClient::PubSubClient(const char*, uint16_t, Client& client, Stream&);

.. code:: cpp

  PubSubClient::PubSubClient(const char*, uint16_t, MQTT_CALLBACK_SIGNATURE, Client& client);

.. code:: cpp

  PubSubClient::PubSubClient(const char*, uint16_t, MQTT_CALLBACK_SIGNATURE, Client& client, Stream&);

**Parameters**

``client`` : the network client to use, for example WiFiClient

``IPAddress`` : MQTT server address

``port`` : port for MQTT, usually 1883 for unencrypted connection

``MQTT_CALLBACK_SIGNATURE`` : callback function for MQTT

``Stream`` : a stream to write received messages to

**Returns**

The function returns nothing.

**Example Code**

Example: MQTT_Basic

**Notes and Warnings**

PubSubClient::PubSubClient(Client& client) would suffice for normal
MQTT connection 

-----

.. method:: PubSubClient::setServer

**Description**

Sets the server details.

**Syntax**

.. code:: cpp

  PubSubClient& PubSubClient::setServer(uint8_t * ip, uint16_t port)

.. code:: cpp

  PubSubClient& PubSubClient::setServer(IPAddress ip, uint16_t port)

.. code:: cpp

  PubSubClient& PubSubClient::setServer(const char* domain, uint16_t
  port)


**Parameters**

``ip`` : the address of the server

``port`` : the port to connect to, default 1883

``domain`` : the address of the server

**Returns**

The client instance, allowing the function to be chained

**Example Code**

Example: MQTT_Basic

**Notes and Warnings**

NA 

-----

.. method:: PubSubClient::setCallback


**Description**

Sets the message callback function.

**Syntax**

.. code:: cpp

  PubSubClient& PubSubClient::setCallback(MQTT_CALLBACK_SIGNATURE)

**Parameters**

``MQTT_CALLBACK_SIGNATURE`` : a pointer to a message callback function
called when a message arrives for a subscription created by this
client.

**Returns**

The client instance, allowing the function to be chained.

**Example Code**

Example: MQTT_Basic

**Notes and Warnings**

NA 

-----

.. method:: PubSubClient::setClient


**Description**

Sets the network client instance to use.

**Syntax**

.. code:: cpp

  PubSubClient& PubSubClient::setClient(Client& client)

**Parameters**

``client`` : the network client to use, for example WiFiClient

**Returns**

The client instance, allowing the function to be chained

**Example Code**

NA

**Notes and Warnings**

NA 

-----

.. method:: PubSubClient::setStream


**Description**

Sets the stream to write received messages to.

**Syntax**

.. code:: cpp

  PubSubClient& PubSubClient::setStream(Stream& stream)

**Parameters**

``stream`` : a stream to write received messages to

**Returns**

The client instance, allowing the function to be chained.

**Example Code**

NA

**Notes and Warnings**

NA 

-----

.. method:: PubSubClient::connect


**Description**

Connects the client to the server.

**Syntax**

.. code:: cpp

  boolean PubSubClient::connect(const char *id)

.. code:: cpp

  boolean PubSubClient::connect(const char *id, const char *user, const char *pass)

.. code:: cpp

  boolean PubSubClient::connect(const char *id, const char* willTopic, uint8_t willQos, boolean willRetain, const char* willMessage)

.. code:: cpp

  boolean PubSubClient::connect(const char *id, const char *user, const char *pass, const char* willTopic, uint8_t willQos, boolean willRetain, const char* willMessage)

**Parameters**

``id`` : Client ID, a unique string identifier

``user``: Username for authentication, default NULL

``pass`` : Password for authentication, default NULL

``willTopic`` : the topic to be used by the will message

``willQoS`` : the quality of service to be used by the will message

``willRetain`` : whether the will should be published with the retain flag

``willMessage`` : the payload of the will message

**Returns**

True – connection succeeded

False – connection failed

**Example Code**

Example: MQTT_Basic

**Notes and Warnings**

Client ID is required and should always be unique else connection
might be rejected by the server. 

-----

.. method:: PubSubClient::disconnect

**Description**

Disconnect the client

**Syntax**

.. code:: cpp

  void PubSubClient::disconnect(void)

**Parameters**

The function requires no input parameter.

**Returns**

The function returns nothing.

**Example Code**

NA

**Notes and Warnings**

NA 

-----

.. method:: PubSubClient::publish

**Description**

Publishes a message to the specified topic.

**Syntax**

.. code:: cpp

  boolean PubSubClient::publish(const char* topic, const char* payload)

.. code:: cpp

  boolean PubSubClient::publish(const char* topic, const char* payload, boolean retained)

.. code:: cpp

  boolean PubSubClient::publish(const char* topic, const uint8_t* payload, unsigned int plength)

.. code:: cpp

  boolean PubSubClient::publish(const char* topic, const uint8_t* payload, unsigned int plength, boolean retained)

**Parameters**

``topic`` : the topic to publish to

``payload`` : the message to publish

``plength`` : the length of the payload. Required if payload is a byte[]

``retained`` : whether the message should be retained

– false – not retained

– true – retained

**Returns**

False – publish failed, either connection lost or message too large

True – publish succeeded

**Example Code**

Example: MQTT_Basic

**Notes and Warnings**

Default max packet size is 128 bytes. 

------

.. method:: PubSubClient::publish_P


**Description**

Publishes a message stored in PROGMEM to the specified topic.

**Syntax**

.. code:: cpp

  boolean PubSubClient::publish_P(const char* topic, const uint8_t* payload, unsigned int plength, boolean retained)

**Parameters**

``topic`` : the topic to publish to

``payload`` : the message to publish

``plength`` : the length of the payload. Required if payload is a byte[]

``retained`` : whether the message should be retained

– false – not retained

– true – retained

**Returns**

False – publish failed, either connection lost or message too large

True – publish succeeded

**Example Code**

NA

**Notes and Warnings**

NA 

-----

.. method:: PubSubClient::subscribe


**Description**

Subscribes to messages published to the specified topic.

**Syntax**

.. code:: cpp

  boolean PubSubClient::subscribe(const char* topic)

.. code:: cpp
  
  boolean PubSubClient::subscribe(const char* topic, uint8_t qos)

**Parameters**

``topic`` : the topic to subscribe to

``qos`` : the qos to subscribe at

**Returns**

False – sending the subscribe failed, either connection lost or
message too large

True – sending the subscribe succeeded

**Example Code**

Example: MQTT_Basic

**Notes and Warnings**

NA 

-----

.. method:: PubSubClient::unsubscribe


**Description**

Unsubscribes from the specified topic.

**Syntax**

.. code:: cpp

  boolean PubSubClient::unsubscribe(const char* topic)

**Parameters**

``topic`` : the topic to unsubscribe to

**Returns**

False – sending the unsubscribe failed, either connection lost or
message too large

True – sending the unsubscribe succeeded

**Example Code**

NA

**Notes and Warnings**

NA 

-----

.. method:: PubSubClient::loop


**Description**

A must method called regularly to allow the client to process incoming
messages and maintain its connection to the server.

**Syntax**

.. code:: cpp

  boolean PubSubClient::loop(void)

**Parameters**

The function requires no input parameter.

**Returns**

False – the client is no longer connected

True – the client is still connected

**Example Code**

Example: MQTT_Basic

**Notes and Warnings**

A required method that should not be blocked for too long. 

-----

.. method:: PubSubClient::connected


**Description**

Checks whether the client is connected to the server.

**Syntax**

.. code:: cpp

  boolean PubSubClient::connected(void)

**Parameters**

The function requires no input parameter.

**Returns**

False – the client is not connected

True – the client is connected

**Example Code**

Example: MQTT_Basic

**Notes and Warnings**

NA 

-----

.. method:: PubSubClient::state


**Description**

Returns the current state of the client. If a connection attempt
fails, this can be used to get more information about the failure.
All of the values have corresponding constants defined in
PubSubClient.h.

**Syntax**

.. code:: cpp

  int PubSubClient::state(void)

**Parameters**

The function requires no input parameter.

**Returns**

-4 : MQTT_CONNECTION_TIMEOUT – the server didn’t respond within the

keepalive time

-3 : MQTT_CONNECTION_LOST – the network connection was broken

-2 : MQTT_CONNECT_FAILED – the network connection failed

-1 : MQTT_DISCONNECTED – the client is disconnected cleanly

0 : MQTT_CONNECTED – the client is connected

1 : MQTT_CONNECT_BAD_PROTOCOL – the server doesn’t support the
requested version of MQTT

2 : MQTT_CONNECT_BAD_CLIENT_ID – the server rejected the client
identifier

3 : MQTT_CONNECT_UNAVAILABLE – the server was unable to accept the
connection

4 : MQTT_CONNECT_BAD_CREDENTIALS – the username/password were rejected

5 : MQTT_CONNECT_UNAUTHORIZED – the client was not authorized to
connect

**Example Code**

Example: MQTT_Basic

**Notes and Warnings**

NA 

