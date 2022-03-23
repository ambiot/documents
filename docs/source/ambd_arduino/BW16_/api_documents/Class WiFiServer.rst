Class WiFiServer
====================
**WiFiServer Class**

| **Description**
| Defines a class of WiFi server implementation for Ameba.

| **Syntax**
| class WiFiServer

**Members**

+-------------------------+-------------------------------------------+
| **Public Constructors** |                                           |
+=========================+===========================================+
| WiFiServer::WiFiServer  | Constructs a WiFiServer object and        |
|                         | creates a server that listens for         |
|                         | incoming connections on the specified     |
|                         | port                                      |
+-------------------------+-------------------------------------------+
| **Public Methods**      |                                           |
+-------------------------+-------------------------------------------+
| WiFiServer::available   | Gets a client that is connected to the    |
|                         | server and has data available for         |
|                         | reading. The connection persists when the |
|                         | returned client object goes out of scope; |
|                         | you can close it by calling the           |
|                         | client.stop()                             |
+-------------------------+-------------------------------------------+
| WiFiServer::begin       | Tells the server to begin listening for   |
|                         | incoming connections                      |
+-------------------------+-------------------------------------------+
| WiFiServer::write       | Write data to all the clients connected   |
|                         | to a server                               |
+-------------------------+-------------------------------------------+

**WiFiServer::WiFiServer**

| **Description**
| Constructs a WiFiServer object and creates a server that listens for
  incoming connections on the specified port.

| **Syntax**
| WiFiServer::WiFiServer(uint16_t port)

| **Parameters**
| port: The port number being connected to.

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: SimpleServerWiFi

**#include <WiFi.h>**

**char** ssid[] = "yourNetwork"; // your network SSID (name)

**char** pass[] = "secretPassword"; // your network password

**int** keyIndex = 0; // your network key Index number (needed only for
WEP)

**int** status = WL_IDLE_STATUS;

WiFiServer server(5000);

**void** setup() {

Serial.begin(9600); // initialize serial communication

pinMode(9, OUTPUT); // set the LED pin mode

// check for the presence of the shield:

**if** (WiFi.status() == WL_NO_SHIELD) {

Serial.println("WiFi shield not present");

**while** (**true**); // don't continue

}

String fv = WiFi.firmwareVersion();

**if** ( fv != "1.1.0" )

Serial.println("Please upgrade the firmware");

// attempt to connect to Wifi network:

**while** ( status != WL_CONNECTED) {

Serial.print("Attempting to connect to Network named: ");

Serial.println(ssid); // print the network name (SSID);

// Connect to WPA/WPA2 network. Change this line if using open or WEP
network:

status = WiFi.begin(ssid, pass);

// wait 10 seconds for connection:

delay(10000);

}

server.begin(); // start the tcp server on port 5000

printWifiStatus(); // you're connected now, so print out the status

}

**char** buffer[256];

**void** loop() {

WiFiClient client = server.available();

**while** (client.connected()) {

memset(buffer, 0, 256);

**int** n = client.read((**uint8_t**\ \*)(&buffer[0]), sizeof(buffer));

**if** (n > 0) {

**for** (**int** i=0; i<n; i++) {

Serial.print(buffer[i]);

}

n = client.write(buffer, n);

**if** (n <= 0) **break**;

}

}

client.stop();

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

**WiFiServer::available**

| **Description**
| Gets a client that is connected to the server and has data available
  for reading. The connection persists when the returned client object
  goes out of scope; you can close it by calling the client.stop().

| **Syntax**
| WiFiClient WiFiServer::available(uint8_t\* status)

| **Parameters**
| status: WiFi availability status

| **Returns**
| A Client object; if no Client has data available for reading, this
  object will evaluate to false in an if-statement

| **Example Code**
| Example: SimpleServerWiFi
| Details of the code can be found in the previous section of
  WiFiServer:: WiFiServer.

| **Notes and Warnings**
| NA
|  

**WiFiServer::begin**

| **Description**
| Tells the server to begin listening for incoming connections

| **Syntax**
| void WiFiServer::begin(void)

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: SimpleServerWiFi
| Details of the code can be found in the previous section of
  WiFiServer:: WiFiServer.

| **Notes and Warnings**
| NA
|  

**WiFiServer::write**

| **Description**
| Write data to all the clients connected to a server

| **Syntax**
| size_t WiFiServer::write(uint8_t b)
| size_t WiFiServer::write(const uint8_t \*buf, size_t size)

| **Parameters**
| b: byte to be written
| buf: data buffer
| size: Size of the data in the buffer

| **Returns**
| The function returns the number of bytes written. It is not necessary
  to read this.

| **Example Code**
| Example: SimpleServerWiFi
| Details of the code can be found in the previous section of
  WiFiServer:: WiFiServer.

| **Notes and Warnings**
| NA
