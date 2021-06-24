Class WiFiClient
==================
**WiFiClient Class**

| **Description**
| Defines a class of WiFi Client implementation for Ameba.

| **Syntax**
| class WiFiClient

**Members**

+----------------------------+----------------------------------------+
| **Public Constructors**    |                                        |
+============================+========================================+
| WiFiClient::WiFiClient     | Constructs a WiFiClient instance that  |
|                            | connects to the specified IP address   |
|                            | and port.                              |
+----------------------------+----------------------------------------+
| **Public Methods**         |                                        |
+----------------------------+----------------------------------------+
| WiFiClient::connect        | Connect to the IP address and port     |
+----------------------------+----------------------------------------+
| WiFiClient::write          | Write a single byte into the packet    |
+----------------------------+----------------------------------------+
| WiFiClient::available      | Number of bytes remaining in the       |
|                            | current packet                         |
+----------------------------+----------------------------------------+
| WiFiClient::read           | Read a single byte from the current    |
|                            | packet                                 |
+----------------------------+----------------------------------------+
| WiFiClient:: peek          | Return the next byte from the current  |
|                            | packet without moving on to the next   |
|                            | byte                                   |
+----------------------------+----------------------------------------+
| WiFiClient:: flush         | Finish reading the current packet      |
+----------------------------+----------------------------------------+
| WiFiClient::stop           | Stop client connection                 |
+----------------------------+----------------------------------------+
| WiFiClient::connected      | Check if client is connected, return 1 |
|                            | if connected, 0 if not                 |
+----------------------------+----------------------------------------+
| WiFiClient::setRecvTimeout | Set receiving timeout                  |
+----------------------------+----------------------------------------+

**WiFiClient::WiFiClient**

| **Description**
| Constructs a WiFiClient instance that connects to the specified IP
  address and port.

| **Syntax**
| WiFiClient::WiFiClient()
| WiFiClient::WiFiClient(uint8_t sock)

| **Parameters**
| sock: socket state, default -1.

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: WiFiWebClient

**#include <WiFi.h>**

**char** ssid[] = "yourNetwork"; // your network SSID (name)

**char** pass[] = "password"; // your network password (use for WPA, or
use as key for WEP)

**int** keyIndex = 0; // your network key Index number (needed only for
WEP)

**int** status = WL_IDLE_STATUS;

//IPAddress server(64,233,189,94); // numeric IP for Google (no DNS)

**char** server[] = "www.google.com"; // name address for Google (using
DNS)

WiFiClient client;

**void** setup() {

//Initialize serial and wait for port to open:

Serial.begin(9600);

**while** (!Serial) {

;

}

// check for the presence of the shield:

**if** (WiFi.status() == WL_NO_SHIELD) {

Serial.println("WiFi shield not present");

// don't continue:

**while** (**true**);

}

String fv = WiFi.firmwareVersion();

**if** (fv != "1.1.0") {

Serial.println("Please upgrade the firmware");

}

// attempt to connect to Wifi network:

**while** (status != WL_CONNECTED) {

Serial.print("Attempting to connect to SSID: ");

Serial.println(ssid);

// Connect to WPA/WPA2 network. Change this line if using open or WEP
network:

status = WiFi.begin(ssid, pass);

// wait 10 seconds for connection:

delay(10000);

}

Serial.println("Connected to wifi");

printWifiStatus();

Serial.println("\nStarting connection to server...");

// if you get a connection, report back via serial:

**if** (client.connect(server, 80)) {

Serial.println("connected to server");

// Make a HTTP request:

client.println("GET /search?q=ameba HTTP/1.1");

client.println("Host: www.google.com");

client.println("Connection: close");

client.println();

}

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

// print the received signal strength:

**long** rssi = WiFi.RSSI();

Serial.print("signal strength (RSSI):");

Serial.print(rssi);

Serial.println(" dBm");

}

| **Notes and Warnings**
| NA
|  

**WiFiClient::connect**

| **Description**
| Connect to the IP address and port

| **Syntax**
| int WiFiClient::connect(IPAddress ip, uint16_t port)
| int WiFiClient::connect(const char \*host, uint16_t port)

| **Parameters**
| ip: IP address
| host: Host name
| port: the port to listen on

| **Returns**
| Returns “1”: if successful
| Returns “0”: if failed

| **Example Code**
| Example: WiFiWebClient
| The details of the example are explained in the previous section of
  WiFiClient:: WiFiClient.

| **Notes and Warnings**
| NA
|  

**WiFiClient::write**

| **Description**
| Write a single byte into the packet

| **Syntax**
| size_t WiFiClient::write(uint8_t byte)
| size_t WiFiClient::write(const uint8_t \*buf, size_t size)

| **Parameters**
| byte: the outgoing byte
| buf: the outgoing message
| size: the size of the buffer

| **Returns**
| The function returns single byte into the packet or returns bytes size
  from buffer into the packet.

| **Example Code**
| NA

| **Notes and Warnings**
| NA
|  

**WiFiClient::available**

| **Description**
| Number of bytes remaining in the current packet

| **Syntax**
| int WiFiClient::available(void)

| **Parameters**
| The function requires no input parameter.

| **Returns**
| • Function returns the number of bytes available in the current packet
| Function returns 0: if no data available

| **Example Code**
| Example: WiFiWebClient
| The details of the example are explained in the previous section of
  WiFiClient:: WiFiClient.

| **Notes and Warnings**
| NA
|  

**WiFiClient::read**

| **Description**
| Read a single byte from the current packet

| **Syntax**
| int WiFiClient::read()
| int WiFiClient::read(unsigned char\* buf, size_t size)
| int WiFiClient::read(char \*buf, size_t size)

| **Parameters**
| buf: buffer to hold incoming packets (char*)
| size: maximum size of the buffer (int)

| **Returns**
| size: the size of the buffer
| -1: if no buffer is available

| **Example Code**
| Example: WiFiWebClient
| The details of the example are explained in the previous section of
  WiFiClient:: WiFiClient.

| **Notes and Warnings**
| NA
|  

**WiFiClient::peek**

| **Description**
| Return the next byte from the current packet without moving on to the
  next byte

| **Syntax**
| int WiFiClient::peek(void)

| **Parameters**
| The function requires no input parameter.

| **Returns**
| b: the next byte or character
| -1: if none is available

| **Example Code**
| NA

| **Notes and Warnings**
| NA
|  

**WiFiClient::flush**

| **Description**
| Finish reading the current packet

| **Syntax**
| void WiFiClient::flush(void)

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| NA
|  

**WiFiClient::stop**

| **Description**
| Disconnect from the server. Stop client connection

| **Syntax**
| void WiFiClient::stop(void)

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: WiFiWebClient
| The details of the example are explained in the previous section of
  WiFiClient:: WiFiClient.

| **Notes and Warnings**
| NA
|  

**WiFiClient::connected**

| **Description**
| Check if client is connected, return 1 if connected, 0 if not.

| **Syntax**
| uint8_t WiFiClient::connected(void)

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns “1” if connected, returns “0” if not connected.

| **Example Code**
| Example: WiFiWebClient
| The details of the example are explained in the previous section of
  WiFiClient:: WiFiClient.

| **Notes and Warnings**
| NA
|  

**WiFiClient::setRecvTimeout**

| **Description**
| Set receiving timeout

| **Syntax**
| int WiFiClient::setRecvTimeout(int timeout)

| **Parameters**
| timeout: timeout in seconds

| **Returns**
| 0

| **Example Code**
| NA

| **Notes and Warnings**
| NA
