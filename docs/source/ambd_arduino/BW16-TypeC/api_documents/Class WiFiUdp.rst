Class WiFiUdp
===============
**WiFiUDP Class**

| **Description**
| Defines a class of WiFi UDP implementation for Ameba.

| **Syntax**
| class WiFiUDP

**Members**

+----------------------------+----------------------------------------+
| **Public Constructors**    |                                        |
+============================+========================================+
| WiFiUDP::WiFiUDP           | Constructs a WiFiUDP instance of the   |
|                            | WiFi UDP class that can send and       |
|                            | receive UDP messages                   |
+----------------------------+----------------------------------------+
| **Public Methods**         |                                        |
+----------------------------+----------------------------------------+
| WiFiUDP:: begin            | initialize, start listening on the     |
|                            | specified port. Returns 1 if           |
|                            | successful, 0 if there are no sockets  |
|                            | available to use                       |
+----------------------------+----------------------------------------+
| WiFiUDP:: stop             | Finish with the UDP socket             |
+----------------------------+----------------------------------------+
| WiFiUDP:: beginPacket      | Start building up a packet to send to  |
|                            | the remote host-specific in IP and     |
|                            | port                                   |
+----------------------------+----------------------------------------+
| WiFiUDP:: endPacket        | Finish off this packet and send it     |
+----------------------------+----------------------------------------+
| WiFiUDP:: write            | Write a single byte into the packet    |
+----------------------------+----------------------------------------+
| WiFiUDP:: writeImmediately | Send packet immediately from the       |
|                            | buffer                                 |
+----------------------------+----------------------------------------+
| WiFiUDP:: parsePacket      | Start processing the next available    |
|                            | incoming packet                        |
+----------------------------+----------------------------------------+
| WiFiUDP::available         | Number of bytes remaining in the       |
|                            | current packet                         |
+----------------------------+----------------------------------------+
| WiFiUDP::read              | Read a single byte from the current    |
|                            | packet                                 |
+----------------------------+----------------------------------------+
| WiFiUDP:: peek             | Return the next byte from the current  |
|                            | packet without moving on to the next   |
|                            | byte                                   |
+----------------------------+----------------------------------------+
| WiFiUDP:: flush            | Finish reading the current packet      |
+----------------------------+----------------------------------------+
| WiFiUDP:: remoteIP         | Return the IP address of the host who  |
|                            | sent the current incoming packet       |
+----------------------------+----------------------------------------+
| WiFiUDP:: remotePort       | Return the port of the host who sent   |
|                            | the current incoming packet            |
+----------------------------+----------------------------------------+
| WiFiUDP:: setRecvTimeout   | Set receiving timeout                  |
+----------------------------+----------------------------------------+

**WiFiUDP::WiFiUDP**

| **Description**
| Constructs a WiFiUDP instance of the WiFi UDP class that can send and
  receive UDP messages.

| **Syntax**
| WiFiUDP::WiFiUDP(void)

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: WiFiUdpSendReceiveString
| This example demonstrates WiFi UDP send and receive string. This
  sketch waits for a UDP packet on a local port using a WiFi shield.
  When a packet is received an Acknowledge packet is sent to the client
  on port remotePort.

**#include <WiFi.h>**

**#include <WiFiUdp.h>**

**int** status = WL_IDLE_STATUS;

**char** ssid[] = "yourNetwork"; // your network SSID (name)

**char** pass[] = "secretPassword"; // your network password (use for
WPA, or use as key for WEP)

**int** keyIndex = 0; // your network key Index number (needed only for
WEP)

unsigned **int** localPort = 2390; // local port to listen on

**char** packetBuffer[255]; //buffer to hold incoming packet

**char** ReplyBuffer[] = "acknowledged"; // a string to send back

WiFiUDP Udp;

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

status = WiFi.begin(ssid,pass);

// wait 10 seconds for connection:

delay(10000);

}

Serial.println("Connected to wifi");

printWifiStatus();

Serial.println("\nStarting connection to server...");

// if you get a connection, report back via serial:

Udp.begin(localPort);

}

**void** loop() {

// if there's data available, read a packet

**int** packetSize = Udp.parsePacket();

**if** (packetSize) {

Serial.print("Received packet of size ");

Serial.println(packetSize);

Serial.print("From ");

IPAddress remoteIp = Udp.remoteIP();

Serial.print(remoteIp);

Serial.print(", port ");

Serial.println(Udp.remotePort());

// read the packet into packetBufffer

**int** len = Udp.read(packetBuffer, 255);

**if** (len > 0) {

packetBuffer[len] = 0;

}

Serial.println("Contents:");

Serial.println(packetBuffer);

// send a reply, to the IP address and port that sent us the packet we
received

Udp.beginPacket(Udp.remoteIP(), Udp.remotePort());

Udp.write(ReplyBuffer);

Udp.endPacket();

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
| This constructor does not take in any parameter, thus use another
  method to set up the IP address and port number.
|  

**WiFiUDP::begin**

| **Description**
| Initialize, start listening on the specified port. Returns 1 if
  successful, 0 if there are no sockets available to use.

| **Syntax**
| uint8_t WiFiUDP::begin(uint16_t port)

| **Parameters**
| port: the local port to listen on

| **Returns**
| 1: if successful
| 0: if there are no sockets available to use

| **Example Code**
| Example: WiFiUdpSendReceiveString
| This example demonstrates WiFi UDP send and receive string. This
  sketch waits for a UDP packet on a local port using a WiFi shield.
  When a packet is received an Acknowledge packet is sent to the client
  on port remotePort. The detail of the code can be found in WiFiUDP::
  WiFiUDP.

| **Notes and Warnings**
| NA
|  

**WiFiUDP::stop**

| **Description**
| Disconnect from the server. Release any resource being used during the
  UDP session.

| **Syntax**
| void WiFiUDP::stop(void)

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| NA
|  

**WiFiUDP::beginPacket**

| **Description**
| Start building up a packet to send to the remote host-specific in IP
  and port.

| **Syntax**
| int WiFiUDP::beginPacket(const char \*host, uint16_t port)
| int WiFiUDP::beginPacket(IPAddress ip, uint16_t port)

| **Parameters**
| host: hostname
| port: port number
| ip: IP address

| **Returns**
| 1: if successful
| 0: if there was a problem with the supplied IP address or port

| **Example Code**
| Example: WiFiUdpSendReceiveString
| This example demonstrates WiFi UDP send and receive string. This
  sketch waits for a UDP packet on a local port using a WiFi shield.
  When a packet is received an Acknowledge packet is sent to the client
  on port remotePort. The detail of the code can be found in WiFiUDP::
  WiFiUDP.

| **Notes and Warnings**
| NA
|  

**WiFiUDP::endPacket**

| **Description**
| Finish off this packet and send it

| **Syntax**
| int WiFiUDP::endPacket(void)

| **Parameters**
| The function requires no input parameter.

| **Returns**
| 1: if the packet was sent successfully
| 0: if there was an error

| **Example Code**
| Example: WiFiUdpSendReceiveString
| This example demonstrates WiFi UDP send and receive string. This
  sketch waits for a UDP packet on a local port using a WiFi shield.
  When a packet is received an Acknowledge packet is sent to the client
  on port remotePort. The detail of the code can be found in WiFiUDP::
  WiFiUDP.

| **Notes and Warnings**
| NA
|  

**WiFiUDP::write**

| **Description**
| Write a single byte into the packet.

| **Syntax**
| size_t WiFiUDP::write(uint8_t byte)
| size_t WiFiUDP::write(const uint8_t \*buffer, size_t size)

| **Parameters**
| byte: the outgoing byte
| buffer: the outgoing message
| size: the size of the buffer

| **Returns**
| single-byte into the packet
| bytes size from the buffer into the packet

| **Example Code**
| Example: WiFiUdpSendReceiveString
| This example demonstrates WiFi UDP send and receive string. This
  sketch waits for a UDP packet on a local port using a WiFi shield.
  When a packet is received an Acknowledge packet is sent to the client
  on port remotePort. The detail of the code can be found in WiFiUDP::
  WiFiUDP.

| **Notes and Warnings**
| NA
|  

**WiFiUDP::writeImmediately**

| **Description**
| Send packet immediately from the buffer

| **Syntax**
| size_t WiFiUDP::writeImmediately(const uint8_t \*buffer, size_t size)

| **Parameters**
| buffer: the outgoing message
| size: the size of the buffer

| **Returns**
| single-byte into the packet
| bytes size from the buffer into the packet

| **Example Code**
| NA

| **Notes and Warnings**
| NA
|  

**WiFiUDP::parsePacket**

| **Description**
| Start processing the next available incoming packet

| **Syntax**
| int WiFiUDP::parsePacket(void)

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns the size of the packet in bytes or returns “0:”
  if no packets are available.

| **Example Code**
| Example: WiFiUdpSendReceiveString

| **Notes and Warnings**
| NA
|  

**WiFiUDP::available**

| **Description**
| Number of bytes remaining in the current packet.

| **Syntax**
| int WiFiUDP::available(void)

| **Parameters**
| The function requires no input parameter.

| **Returns**
| the number of bytes available in the current packet
| 0: if parsePacket hasn’t been called yet

| **Example Code**
| NA

| **Notes and Warnings**
| NA
|  

**WiFiUDP::read**

| **Description**
| Read a single byte from the current packet

| **Syntax**
| int WiFiUDP::read()
| int WiFiUDP::read(unsigned char\* buffer, size_t len)

| **Parameters**
| buffer: buffer to hold incoming packets (char*)
| len: maximum size of the buffer (int)

| **Returns**
| size: the size of the buffer
| -1: if no buffer is available

| **Example Code**
| Example: WiFiUdpSendReceiveString
| his example demonstrates WiFi UDP send and receive string. This sketch
  waits for a UDP packet on a local port using a WiFi shield. When a
  packet is received an Acknowledge packet is sent to the client on port
  remotePort. The detail of the code can be found in WiFiUDP:: WiFiUDP.

| **Notes and Warnings**
| NA
|  

**WiFiUDP::peek**

| **Description**
| Return the next byte from the current packet without moving on to the
  next byte

| **Syntax**
| int WiFiUDP::peek(void)

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

**WiFiUDP::flush**

| **Description**
| Finish reading the current packet

| **Syntax**
| void WiFiUDP::flush(void)

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| NA
|  

**WiFiUDP::remoteIP**

| **Description**
| Return the IP address of the host who sent the current incoming packet

| **Syntax**
| IPAddress WiFiUDP::remoteIP(void)

| **Parameters**
| The function requires no input parameter.

| **Returns**
| IP address connecting to

| **Example Code**
| Example: WiFiUdpSendReceiveString
| This example demonstrates WiFi UDP send and receive string. This
  sketch waits for a UDP packet on a local port using a WiFi shield.
  When a packet is received an Acknowledge packet is sent to the client
  on port remotePort. The detail of the code can be found in WiFiUDP::
  WiFiUDP.

| **Notes and Warnings**
| NA
|  

**WiFiUDP::remotePort**

| **Description**
| Return the port of the host who sent the current incoming packet

| **Syntax**
| uint16_t WiFiUDP::remotePort(void)

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The remote port connecting to

| **Example Code**
| Example: WiFiUdpSendReceiveString
| This example demonstrates WiFi UDP send and receive string. This
  sketch waits for a UDP packet on a local port using a WiFi shield.
  When a packet is received an Acknowledge packet is sent to the client
  on port remotePort. The detail of the code can be found in WiFiUDP::
  WiFiUDP.

| **Notes and Warnings**
| NA
|  

**WiFiUDP::setRecvTimeout**

| **Description**
| Set receiving timeout

| **Syntax**
| void WiFiUDP::setRecvTimeout(int timeout)

| **Parameters**
| timeout in seconds

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| NA
