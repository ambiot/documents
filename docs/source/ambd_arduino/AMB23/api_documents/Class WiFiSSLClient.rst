Class WiFiSSLClient
========================
**WiFiSSLClient Class**

| **Description**
| Defines a class of WiFi Secure Socket Layer Client implementation for
  Ameba.

| **Syntax**
| class WiFiSSLClient

**Members**

+----------------------------------+----------------------------------+
| **Public Constructors**          |                                  |
+==================================+==================================+
| WiFiSSLClient::WiFiSSLClient     | Constructs a WiFiSSLClient       |
|                                  | instance that always connects in |
|                                  | SSL to the specified IP address  |
|                                  | and port                         |
+----------------------------------+----------------------------------+
| **Public Methods**               |                                  |
+----------------------------------+----------------------------------+
| WiFiSSLClient::connect           | Connect to the IP address and    |
|                                  | port                             |
+----------------------------------+----------------------------------+
| WiFiSSLClient::write             | Write a single byte into the     |
|                                  | packet                           |
+----------------------------------+----------------------------------+
| WiFiSSLClient::available         | Number of bytes remaining in the |
|                                  | current packet                   |
+----------------------------------+----------------------------------+
| WiFiSSLClient::read              | Read a single byte from the      |
|                                  | current packet                   |
+----------------------------------+----------------------------------+
| WiFiSSLClient:: peek             | Return the next byte from the    |
|                                  | current packet without moving on |
|                                  | to the next byte                 |
+----------------------------------+----------------------------------+
| WiFiSSLClient:: flush            | Finish reading the current       |
|                                  | packet                           |
+----------------------------------+----------------------------------+
| WiFiSSLClient::stop              | Stop SSL client connection       |
+----------------------------------+----------------------------------+
| WiFiSSLClient::connected         | Check if SSL client is           |
|                                  | connected, return 1 if           |
|                                  | connected, 0 if not              |
+----------------------------------+----------------------------------+
| WiFiSSLClient:: setRootCA        | Set Root CA for authentication   |
+----------------------------------+----------------------------------+
| WiFiSSLClient::                  | Set certificate of the client    |
| setClientCertificate             |                                  |
+----------------------------------+----------------------------------+
| WiFiSSLClient::setRecvTimeout    | Set receiving timeout            |
+----------------------------------+----------------------------------+
| WiFiSSLClient::setPreSharedKey   | Set the pre shared key (PSK) to  |
|                                  | use for authentication           |
+----------------------------------+----------------------------------+

**WiFiSSLClient::WiFiSSLClient**

| **Description**
| Constructs a WiFiSSLClient instance that always connects in SSL to the
  specified IP address and port.

| **Syntax**
| WiFiSSLClient::WiFiSSLClient(void)
| WiFiSSLClient::WiFiSSLClient(uint8_t sock)

| **Parameters**
| sock: socket state, default -1

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: WiFiSSLClient

**#include**

**char** ssid[] = "yourNetwork"; // your network SSID (name)

**char** pass[] = "secretPassword";// your network password (use for
WPA, or WEP)

**int** keyIndex = 0; // your network key Index number (needed only for
WEP)

**int** status = WL_IDLE_STATUS;

**char** server[] = "www.google.com"; // name address for Google (using
DNS)

//unsigned char test_client_key[] = ""; //For the usage of verifying
client

//unsigned char test_client_cert[] = ""; //For the usage of verifying
client

//unsigned char test_ca_cert[] = ""; //For the usage of verifying server

WiFiSSLClient client;

**void** setup() {

//Initialize serial and wait for port to open:

Serial.begin(9600);

**while** (!Serial) {

; // wait for serial port to connect. Needed for native USB port only

}

// check for the presence of the shield:

**if** (WiFi.status() == WL_NO_SHIELD) {

Serial.println("WiFi shield not present");

// don't continue:

**while** (**true**);

}

// attempt to connect to Wifi network:

**while** (status != WL_CONNECTED) {

Serial.print("Attempting to connect to SSID: ");

Serial.println(ssid);

// Connect to WPA/WPA2 network. Change this line if using open or WEP
network:

status = WiFi.begin(ssid,pass);

// wait 10 seconds for connection:

delay(10000);

}

Serial.println("Connected to wifi");

printWifiStatus();

Serial.println("\nStarting connection to server...");

// if you get a connection, report back via serial:

**if** (client.connect(server, 443)) { //client.connect(server, 443,
test_ca_cert, test_client_cert, test_client_key)

Serial.println("connected to server");

// Make a HTTP request:

client.println("GET /search?q=realtek HTTP/1.0");

client.println("Host: www.google.com");

client.println("Connection: close");

client.println();

}

**else**

Serial.println("connected to server failed");

}

**void** loop() {

// if there are incoming bytes available

// from the server, read them and print them:

**while** (client.available()) {

**char** c = client.read();

Serial.write(c);

}

// if the server's disconnected, stop the client:

**if** (!client.connected()) {

Serial.println();

Serial.println("disconnecting from server.");

client.stop();

// do nothing forevermore:

**while** (**true**);

}

}

**void** printWifiStatus() {

// print the SSID of the network you're attached to:

Serial.print("SSID: ");

Serial.println(WiFi.SSID());

// print your WiFi shield's IP address:

IPAddress ip = WiFi.localIP();

Serial.print("IP Address: ");

Serial.println(ip);

// print your MAC address:

byte mac[6];

WiFi.macAddress(mac);

Serial.print("MAC address: ");

Serial.print(mac[0], HEX);

Serial.print(":");

Serial.print(mac[1], HEX);

Serial.print(":");

Serial.print(mac[2], HEX);

Serial.print(":");

Serial.print(mac[3], HEX);

Serial.print(":");

Serial.print(mac[4], HEX);

Serial.print(":");

Serial.println(mac[5], HEX);

// print the received signal strength:

**long** rssi = WiFi.RSSI();

Serial.print("signal strength (RSSI):");

Serial.print(rssi);

Serial.println(" dBm");

}

| **Notes and Warnings**
| NA

**WiFiSSLClient::connect**

| **Description**
| Connect to the IP address and port.

| **Syntax**
| int WiFiSSLClient::connect(IPAddress ip, uint16_t port)
| int WiFiSSLClient::connect(const char \*host, uint16_t port)
| int WiFiSSLClient::connect(const char\* host, uint16_t port, unsigned
  char\* rootCABuff, unsigned char\* cli_cert, unsigned char\* cli_key)
| int WiFiSSLClient::connect(IPAddress ip, uint16_t port, unsigned
  char\* rootCABuff, unsigned char\* cli_cert, unsigned char\* cli_key)

| **Parameters**
| ip: IP address
| host: Host name
| port: the port to listen on
| rootCABuff: buffer that store root CA
| cli_cert: buffer that store client certificate
| cli_key buffer that store client key pair

| **Returns**
| 1: if successful
| 0: if failed

| **Example Code**
| Example: WiFiSSLClient
| Details of the code can be found in the previous section of
  WiFiSSLClient:: WiFiSSLClient.

| **Notes and Warnings**
| NA

**WiFiSSLClient::write**

| **Description**
| Write a single byte into the packet

| **Syntax**
| size_t WiFiSSLClient::write(uint8_t byte)
| size_t WiFiSSLClient::write(const uint8_t \*buf, size_t size)

| **Parameters**
| byte: the outgoing byte
| buf: the outgoing message
| size: the size of the buffer

| **Returns**
| The function returns single -byte into the packet or turns bytes size
  from the buffer into the packet.

| **Example Code**
| NA

| **Notes and Warnings**
| NA

**WiFiSSLClient::available**

| **Description**
| Number of bytes remaining in the current packet

| **Syntax**
| int WiFiSSLClient::available(void)

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns the number of bytes available in the current
  packet; else return “0:” if no data available.

| **Example Code**
| Example: WiFiSSLClient
| Details of the code can be found in the previous section of
  WiFiSSLClient:: WiFiSSLClient.

| **Notes and Warnings**
| NA

**WiFiSSLClient::read**

| **Description**
| Read a single byte from the current packet

| **Syntax**
| int WiFiSSLClient::read()
| int WiFiSSLClient::read(unsigned char\* buf, size_t size)

| **Parameters**
| buf: buffer to hold incoming packets (char*)
| size: maximum size of the buffer (int)

| **Returns**
| size: the size of the buffer
| -1: if no buffer is available

| **Example Code**
| Example: WiFiSSLClient
| Details of the code can be found in the previous section of
  WiFiSSLClient:: WiFiSSLClient.

| **Notes and Warnings**
| NA

**WiFiSSLClient::peek**

| **Description**
| Return the next byte from the current packet without moving on to the
  next byte.

| **Syntax**
| int WiFiSSLClient::peek(void)

| **Parameters**
| The function requires no input parameter.

| **Returns**
| b: the next byte or character
| -1: if none is available

| **Example Code**
| NA

| **Notes and Warnings**
| NA

**WiFiSSLClient::flush**

| **Description**
| Finish reading the current packet

| **Syntax**
| void WiFiSSLClient::flush(void)

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| NA

**WiFiSSLClient::stop**

| **Description**
| Disconnect from the server. Stop SSL client connection

| **Syntax**
| void WiFiSSLClient::stop(void)

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: WiFiSSLClient
| Details of the code can be found in the previous section of
  WiFiSSLClient:: WiFiSSLClient.

| **Notes and Warnings**
| NA

**WiFiSSLClient::connected**

| **Description**
| Check if SSL client is connected, return 1 if connected, 0 if not.

| **Syntax**
| uint8_t WiFiSSLClient::connected(void)

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns “1” if connected, returns “0” if not connected.

| **Example Code**
| Example: WiFiSSLClient
| Details of the code can be found in the previous section of
  WiFiSSLClient:: WiFiSSLClient.

| **Notes and Warnings**
| NA

**WiFiSSLClient::setRootCA**

| **Description**
| Set Root CA for authentication

| **Syntax**
| void WiFiSSLClient::setRootCA(unsigned char \*rootCA)

| **Parameters**
| rootCA: a string of rootCA

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| NA

**WiFiSSLClient::setClientCertificate**

| **Description**
| Set certificate of client

| **Syntax**
| void WiFiSSLClient::setClientCertificate(unsigned char \*client_ca,
  unsigned char \*private_key)

| **Parameters**
| client_ca: Client certificate
| private_key: client’s private key pair

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| NA

**WiFiSSLClient::setRecvTimeout**

| **Description**
| Set receiving timeout

| **Syntax**
| int WiFiSSLClient::setRecvTimeout(int timeout)

| **Parameters**
| timeout: timeout in seconds

| **Returns**
| The function returns “0”.

| **Example Code**
| NA

| **Notes and Warnings**
| NA

**WiFiSSLClient::setPreSharedKey**

| **Description**
| Set the pre shared key (PSK) to use for authentication

| **Syntax**
| void WiFiSSLClient::setPreSharedKey(unsigned char \*pskIdent, unsigned
  char \*psKey)

| **Parameters**
| pskIdent: identity for PSK
| psKey: Pre shared key

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| Do not set a root CA and client certificate if PSK should be used for
  authentication. If root CA, client certificate and PSK are all set,
  certificate based authentication will be used.
