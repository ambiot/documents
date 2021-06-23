Class WiFi
===============
**WiFiClass Class**

| **Description**
| Defines a class of WiFi and network implementation for Ameba.

| **Syntax**
| class WiFiClass

**Members**

+------------------------------+--------------------------------------+
| **Public Constructors**      |                                      |
+==============================+======================================+
| WiFiClass::WiFiClass         | Constructs a WiFiClass object and    |
|                              | initializes the WiFi libraries and   |
|                              | network settings                     |
+------------------------------+--------------------------------------+
| **Public Methods**           |                                      |
+------------------------------+--------------------------------------+
| WiFiClass::firmwareVersion   | Get firmware version                 |
+------------------------------+--------------------------------------+
| WiFiClass:: begin            | Start Wifi connection for OPEN       |
|                              | networks                             |
+------------------------------+--------------------------------------+
| WiFiClass:: config           | Configure network IP settings        |
+------------------------------+--------------------------------------+
| WiFiClass:: setDNS           | Set the DNS server IP address to use |
+------------------------------+--------------------------------------+
| WiFiClass:: disconnect       | Disconnect from the network          |
+------------------------------+--------------------------------------+
| WiFiClass:: macAddress       | Get the interface MAC address        |
+------------------------------+--------------------------------------+
| WiFiClass:: localIP          | Get the interface IP address         |
+------------------------------+--------------------------------------+
| WiFiClass:: subnetMask       | Get the interface subnet mask        |
|                              | address                              |
+------------------------------+--------------------------------------+
| WiFiClass:: gatewayIP        | Get the gateway IP address           |
+------------------------------+--------------------------------------+
| WiFiClass:: SSID             | Return the current SSID associated   |
|                              | with the network                     |
+------------------------------+--------------------------------------+
| WiFiClass:: BSSID            | Return the current BSSID associated  |
|                              | with the network                     |
+------------------------------+--------------------------------------+
| WiFiClass:: RSSI             | Return the current RSSI (Received    |
|                              | Signal Strength in dBm) associated   |
|                              | with the network                     |
+------------------------------+--------------------------------------+
| WiFiClass:: encryptionType   | Return the Encryption Type           |
|                              | associated with the network          |
+------------------------------+--------------------------------------+
| WiFiClass:: scanNetworks     | Start scan WiFi networks available   |
+------------------------------+--------------------------------------+
| WiFiClass:: SSID             | Return the SSID discovered during    |
|                              | the network scan                     |
+------------------------------+--------------------------------------+
| WiFiClass:: encryptionType   | Return the encryption type of the    |
|                              | networks discovered during the       |
|                              | scanNetworks                         |
+------------------------------+--------------------------------------+
| WiFiClass:: encryptionTypeEx | Return the security type and         |
|                              | encryption type of the networks      |
|                              | discovered during the scanNetworks   |
+------------------------------+--------------------------------------+
| WiFiClass:: RSSI             | Return the RSSI of the networks      |
|                              | discovered during the scanNetworks   |
+------------------------------+--------------------------------------+
| WiFiClass:: status           | Return Connection status             |
+------------------------------+--------------------------------------+
| WiFiClass:: hostByName       | Resolve the given hostname to an IP  |
|                              | address                              |
+------------------------------+--------------------------------------+
| WiFiClass:: apbegin          | Start AP mode                        |
+------------------------------+--------------------------------------+
| WiFiClass:: disablePowerSave | Disable power-saving mode            |
+------------------------------+--------------------------------------+

**WiFiClass::WiFiClass**

| **Description**
| Constructs a WiFiClass object and initializes the WiFi libraries and
  network settings.

| **Syntax**
| WiFiClass::WiFiClass()

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| An instance of WiFiClass is created as WiFi inside WiFi.h and is
  extern for direct use.

**WiFiClass::firmwareVersion**

| **Description**
| Get firmware version

| **Syntax**
| char\* WiFiClass::firmwareVersion()

| **Parameters**
| The function requires no input parameter.

| **Returns**
| WiFi firmware version

| **Example Code**
| Example: ConnectWithWPA
| This example demos how to connect to an unencrypted WiFI network, and
  prints the MAC address of the Wifi shield, the IP address obtained,
  and other network details.

**#include <WiFi.h>**

// char ssid[] = "yourNetwork"; // your network SSID (name)

// char pass[] = "secretPassword"; // your network password

**char** ssid[] = "SINGTEL-D45F"; // your network SSID (name)

**char** pass[] = "mooxuteeth"; // your network key

**int** status = WL_IDLE_STATUS; // the Wifi radio's status

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

Serial.print("Attempting to connect to WPA SSID: ");

Serial.println(ssid);

// Connect to WPA/WPA2 network:

status = WiFi.begin(ssid, pass);

// wait 10 seconds for connection:

delay(10000);

}

// you're connected now, so print out the data:

Serial.print("You're connected to the network");

printCurrentNet();

printWifiData();

}

**void** loop() {

// check the network connection once every 10 seconds:

delay(10000);

printCurrentNet();

}

**void** printWifiData() {

// print your WiFi shield's IP address:

IPAddress ip = WiFi.localIP();

Serial.print("IP Address: ");

Serial.println(ip);

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

}

**void** printCurrentNet() {

// print the SSID of the network you're attached to:

Serial.print("SSID: ");

Serial.println(WiFi.SSID());

// print the MAC address of the router you're attached to:

byte bssid[6];

WiFi.BSSID(bssid);

Serial.print("BSSID: ");

Serial.print(bssid[5], HEX);

Serial.print(":");

Serial.print(bssid[4], HEX);

Serial.print(":");

Serial.print(bssid[3], HEX);

Serial.print(":");

Serial.print(bssid[2], HEX);

Serial.print(":");

Serial.print(bssid[1], HEX);

Serial.print(":");

Serial.println(bssid[0], HEX);

// print the received signal strength:

**long** rssi = WiFi.RSSI();

Serial.print("signal strength (RSSI):");

Serial.println(rssi);

// print the encryption type:

byte encryption = WiFi.encryptionType();

Serial.print("Encryption Type:");

Serial.println(encryption, HEX);

Serial.println();

}

| **Notes and Warnings**
| NA

**WiFiClass::begin**

| **Description**
| Start Wifi connection for OPEN networks

| **Syntax**
| int WiFiClass::begin(char\* ssid)
| int WiFiClass::begin(char\* ssid, uint8_t key_idx, const char \*key)
| int WiFiClass::begin(char\* ssid, const char \*passphrase)

| **Parameters**
| ssid: Pointer to the SSID string
| key_idx: The key index to set. Valid values are 0-3.
| key: Key input buffer.
| passphrase: Passphrase. Valid characters in a passphrase must be
  between ASCII 32-126 (decimal).

| **Returns**
| WiFi status

| **Example Code**
| Example: ConnectWithWPA
| This example demos how to connect to an unencrypted WiFi network, and
  prints the MAC address of the Wifi shield, the IP address obtained,
  and other network details. The details of the code can be found in the
  previous section of WiFiClass:: firmwareVersion.

| **Notes and Warnings**
| NA

**WiFiClass::config**

| **Description**
| Configure network settings for the WiFi network

| **Syntax**
| void WiFiClass::config(IPAddress local_ip)
| void WiFiClass::config(IPAddress local_ip, IPAddress dns_server)
| void WiFiClass::config(IPAddress local_ip, IPAddress dns_server,
  IPAddress gateway)
| void WiFiClass::config(IPAddress local_ip, IPAddress dns_server,
  IPAddress gateway, IPAddress subnet)

 

| **Parameters**
| local_ip: Local device IP address to use on the network
| dns_server: IP address of the DNS server to use
| gateway: IP address of the gateway device on the network
| subnet: Subnet mask for the network, expressed as a IP address

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| This will disable the DHCP client when connecting to a network, and
  will require the network accepts a static IP. The configured IP
  addresses will also apply to AP mode, but the DHCP server will not be
  disabled in AP mode.

**WiFiClass::setDNS**

| **Description**
| Configure the IP address of the DNS server to use

| **Syntax**
| void WiFiClass::setDNS(IPAddress dns_server1)
| void WiFiClass::setDNS(IPAddress dns_server1, IPAddress dns_server2)

| **Parameters**
| dns_server1: IP address of DNS server to use
| dns_server2: IP address of DNS server to use

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| NA

**WiFiClass::disconnect**

| **Description**
| Disconnect from the network

| **Syntax**
| int WiFiClass::disconnect()

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns one value of wl_status_t enum as an integer.

| **Example Code**
| NA

| **Notes and Warnings**
| NA

**WiFiClass::macAddress**

| **Description**
| Get the interface MAC address

| **Syntax**
| uint8_t\* WiFiClass::macAddress(uint8_t\* mac)

| **Parameters**
| mac: an array to store MAC address

| **Returns**
| The function returns a pointer to uint8_t array with length
  WL_MAC_ADDR_LENGTH.

| **Example Code**
| Example: ConnectWithWPA
| This example demos how to connect to an unencrypted WiFi network, and
  prints the MAC address of the Wifi shield, the IP address obtained,
  and other network details. The details of the code can be found in the
  previous section of WiFiClass:: firmwareVersion.

| **Notes and Warnings**
| NA

**WiFiClass::localIP**

| **Description**
| Get the interface IP address

| **Syntax**
| IPAddress WiFiClass::localIP()

| **Parameters**
| The function requires no input parameter.

| **Returns**
| Ip address value

| **Example Code**
| Example: ConnectWithWPA
| This example demos how to connect to an unencrypted WiFi network, and
  prints the MAC address of the Wifi shield, the IP address obtained,
  and other network details. The details of the code can be found in the
  previous section of WiFiClass:: firmwareVersion.

| **Notes and Warnings**
| NA

**WiFiClass::subnetMask**

| **Description**
| Get the interface subnet mask address

| **Syntax**
| IPAddress WiFiClass::subnetMask()

| **Parameters**
| The function requires no input parameter.

| **Returns**
| subnet mask address value

| **Example Code**
| Example: ConnectNoEncryption
| This example demonstrates how to connect to an unencrypted WiFi
  network and prints the MAC address of the WiFi shield, the IP address
  obtained, and other network details.

**#include <WiFi.h>**

**char** ssid[] = "SINGTEL-D45F_5G"; // the name of your network

**int** status = WL_IDLE_STATUS; // the Wifi radio's status

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

Serial.print("Attempting to connect to open SSID: ");

Serial.println(ssid);

status = WiFi.begin(ssid);

// wait 10 seconds for connection:

delay(10000);

}

// you're connected now, so print out the data:

Serial.print("You're connected to the network");

printCurrentNet();

printWifiData();

}

**void** loop() {

// check the network connection once every 10 seconds:

delay(10000);

printCurrentNet();

}

**void** printWifiData() {

// print your WiFi shield's IP address:

IPAddress ip = WiFi.localIP();

Serial.print("IP Address: ");

Serial.println(ip);

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

// print your subnet mask:

IPAddress subnet = WiFi.subnetMask();

Serial.print("NetMask: ");

Serial.println(subnet);

// print your gateway address:

IPAddress gateway = WiFi.gatewayIP();

Serial.print("Gateway: ");

Serial.println(gateway);

}

**void** printCurrentNet() {

// print the SSID of the network you're attached to:

Serial.print("SSID: ");

Serial.println(WiFi.SSID());

// print the MAC address of the router you're attached to:

byte bssid[6];

WiFi.BSSID(bssid);

Serial.print("BSSID: ");

Serial.print(bssid[5], HEX);

Serial.print(":");

Serial.print(bssid[4], HEX);

Serial.print(":");

Serial.print(bssid[3], HEX);

Serial.print(":");

Serial.print(bssid[2], HEX);

Serial.print(":");

Serial.print(bssid[1], HEX);

Serial.print(":");

Serial.println(bssid[0], HEX);

// print the received signal strength:

**long** rssi = WiFi.RSSI();

Serial.print("signal strength (RSSI):");

Serial.println(rssi);

// print the encryption type:

byte encryption = WiFi.encryptionType();

Serial.print("Encryption Type:");

Serial.println(encryption, HEX);

}

| **Notes and Warnings**
| NA

**WiFiClass::gatewayIP**

| **Description**
| Get the gateway IP address

| **Syntax**
| IPAddress WiFiClass::gatewayIP()

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns the value of the gateway IP address.

| **Example Code**
| Example: ConnectNoEncryption
| This example demonstrates how to connect to an unencrypted WiFi
  network and prints the MAC address of the WiFi shield, the IP address
  obtained, and other network details. Details of the code can be found
  in the section of WiFiClass:: subnetMask.

| **Notes and Warnings**
| NA

**WiFiClass::SSID**

| **Description**
| Return the current SSID associated with the network

| **Syntax**
| char\* WiFiClass::SSID()

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns current SSID associate with the network.

| **Example Code**
| Example: ConnectWithWPA
| This example demos how to connect to an unencrypted WiFi network, and
  prints the MAC address of the Wifi shield, the IP address obtained,
  and other network details. The details of the code can be found in the
  previous section of WiFiClass:: firmwareVersion.

| **Notes and Warnings**
| NA

**WiFiClass::BSSID**

| **Description**
| Return the current BSSID associated with the network

| **Syntax**
| uint8_t\* WiFiClass::BSSID(uint8_t\* bssid)

| **Parameters**
| bssid: an array to store bssid

| **Returns**
| pointer to uint8_t array with length WL_MAC_ADDR_LENGTH

| **Example Code**
| Example: ConnectWithWPA
| This example demos how to connect to an unencrypted WiFi network, and
  prints the MAC address of the Wifi shield, the IP address obtained,
  and other network details. The details of the code can be found in the
  previous section of WiFiClass:: firmwareVersion.

| **Notes and Warnings**
| NA

**WiFiClass::RSSI**

| **Description**
| Return the current RSSI (Received Signal Strength in dBm) associated
  with the network

| **Syntax**
| int32_t WiFiClass::RSSI()

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns a signed-value signal strength

| **Example Code**
| Example: ConnectWithWPA
| This example demos how to connect to an unencrypted WiFi network, and
  prints the MAC address of the Wifi shield, the IP address obtained,
  and other network details. The details of the code can be found in the
  previous section of WiFiClass:: firmwareVersion.

| **Notes and Warnings**
| NA

**WiFiClass::encryptionType**

| **Description**
| Return the Encryption Type associated with the network

| **Syntax**
| uint8_t WiFiClass::encryptionType()

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns one unsigned integer value of wl_enc_type enum.

| **Example Code**
| Example: ConnectWithWPA

| **Notes and Warnings**
| NA

**WiFiClass::scanNetworks**

| **Description**
| Start scan WiFi networks available

| **Syntax**
| int8_t WiFiClass::scanNetworks()

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns the number of discovered networks as an integer.

| **Example Code**
| Example: ScanNetworks
| This example prints the Wifi shield’s MAC address, and scans for
  available Wifi networks using the Wifi shield. Every ten seconds, it
  scans again. It doesn’t connect to any network, so no encryption
  scheme is specified.

**#include <WiFi.h>**

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

// Print WiFi MAC address:

printMacAddress();

}

**void** loop() {

// scan for existing networks:

Serial.println("Scanning available networks...");

listNetworks();

delay(10000);

}

**void** printMacAddress() {

// the MAC address of your Wifi shield

byte mac[6];

// print your MAC address:

WiFi.macAddress(mac);

Serial.print("MAC: ");

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

}

**void** listNetworks() {

// scan for nearby networks:

Serial.println("*\* Scan Networks \**");

**int** numSsid = WiFi.scanNetworks();

**if** (numSsid == -1) {

Serial.println("Couldn't get a wifi connection");

**while** (**true**);

}

// print the list of networks seen:

Serial.print("number of available networks:");

Serial.println(numSsid);

// print the network number and name for each network found:

**for** (**int** thisNet = 0; thisNet < numSsid; thisNet++) {

Serial.print(thisNet);

Serial.print(") ");

Serial.print(WiFi.SSID(thisNet));

Serial.print("\tSignal: ");

Serial.print(WiFi.RSSI(thisNet));

Serial.print(" dBm");

Serial.print("\tEncryptionRaw: ");

printEncryptionTypeEx(WiFi.encryptionTypeEx(thisNet));

Serial.print("\tEncryption: ");

printEncryptionType(WiFi.encryptionType(thisNet));

}

}

**void** printEncryptionTypeEx(**uint32_t** thisType) {

/\* Arduino wifi api use encryption type to mapping to security type.

\* This function demonstrate how to get more richful information of
security type.

\*/

**switch** (thisType) {

**case** SECURITY_OPEN:

Serial.print("Open");

**break**;

**case** SECURITY_WEP_PSK:

Serial.print("WEP");

**break**;

**case** SECURITY_WPA_TKIP_PSK:

Serial.print("WPA TKIP");

**break**;

**case** SECURITY_WPA_AES_PSK:

Serial.print("WPA AES");

**break**;

**case** SECURITY_WPA2_AES_PSK:

Serial.print("WPA2 AES");

**break**;

**case** SECURITY_WPA2_TKIP_PSK:

Serial.print("WPA2 TKIP");

**break**;

**case** SECURITY_WPA2_MIXED_PSK:

Serial.print("WPA2 Mixed");

**break**;

**case** SECURITY_WPA_WPA2_MIXED:

Serial.print("WPA/WPA2 AES");

**break**;

}

}

**void** printEncryptionType(**int** thisType) {

// read the encryption type and print out the name:

**switch** (thisType) {

**case** ENC_TYPE_WEP:

Serial.println("WEP");

**break**;

**case** ENC_TYPE_TKIP:

Serial.println("WPA");

**break**;

**case** ENC_TYPE_CCMP:

Serial.println("WPA2");

**break**;

**case** ENC_TYPE_NONE:

Serial.println("None");

**break**;

**case** ENC_TYPE_AUTO:

Serial.println("Auto");

**break**;

}

}

| **Notes and Warnings**
| NA

**WiFiClass::SSID**

| **Description**
| Return the SSID discovered during the network scan

| **Syntax**
| char\* WiFiClass::SSID(uint8_t networkItem)

| **Parameters**
| networkItem: specify from which network item want to get the
  information

| **Returns**
| The function returns ssid string of the specified item on the networks
  scanned a list.

| **Example Code**
| Example: ScanNetworks
| This example prints the Wifi shield’s MAC address, and scans for
  available Wifi networks using the Wifi shield. Every ten seconds, it
  scans again. It doesn’t connect to any network, so no encryption
  scheme is specified. The details of the code can be found in the
  previous section of WiFiClass:: scanNetworks.

| **Notes and Warnings**
| NA

**WiFiClass::encryptionType**

| **Description**
| Return the encryption type of the networks discovered during the
  scanNetworks

| **Syntax**
| uint8_t WiFiClass::encryptionType(uint8_t networkItem)

| **Parameters**
| networkItem: specify from which network item want to get the
  information

| **Returns**
| encryption type (enum wl_enc_type) of the specified item on the
  networks scanned a list

| **Example Code**
| Example: ScanNetworks
| This example prints the Wifi shield’s MAC address, and scans for
  available Wifi networks using the Wifi shield. Every ten seconds, it
  scans again. It doesn’t connect to any network, so no encryption
  scheme is specified. The details of the code can be found in the
  previous section of WiFiClass:: scanNetworks.

| **Notes and Warnings**
| NA

**WiFiClass::encryptionTypeEx**

| **Description**
| Return the security type and encryption type of the networks
  discovered during the scanNetworks

| **Syntax**
| uint32_t WiFiClass::encryptionTypeEx(uint8_t networkItem)

| **Parameters**
| networkItem: specify from which network item want to get the
  information

| **Returns**
| security and encryption type of the specified item on the networks
  scanned a list

| **Example Code**
| Example: ScanNetworks
| This example prints the Wifi shield’s MAC address, and scans for
  available Wifi networks using the Wifi shield. Every ten seconds, it
  scans again. It doesn’t connect to any network, so no encryption
  scheme is specified. The details of the code can be found in the
  previous section of WiFiClass:: scanNetworks.

| **Notes and Warnings**
| NA

**WiFiClass::RSSI**

| **Description**
| Return the RSSI of the networks discovered during the scanNetworks

| **Syntax**
| int32_t WiFiClass::RSSI(uint8_t networkItem)

| **Parameters**
| networkItem: specify from which network item want to get the
  information

| **Returns**
| signed value of RSSI of the specified item on the networks scanned a
  list

| **Example Code**
| Example: ScanNetworks
| This example prints the Wifi shield’s MAC address, and scans for
  available Wifi networks using the Wifi shield. Every ten seconds, it
  scans again. It doesn’t connect to any network, so no encryption
  scheme is specified. The details of the code can be found in the
  previous section of WiFiClass:: scanNetworks.

| **Notes and Warnings**
| NA

**WiFiClass::status**

| **Description**
| Return Connection status

| **Syntax**
| uint8_t WiFiClass::status()

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns one of the values defined in wl_status_t as an
  unsigned integer.

| **Example Code**
| Example: ConnectWithWPA
| This example demos how to connect to an unencrypted WiFi network, and
  prints the MAC address of the Wifi shield, the IP address obtained,
  and other network details. The details of the code can be found in the
  previous section of WiFiClass:: firmwareVersion.

| **Notes and Warnings**
| NA

**WiFiClass::hostByName**

| **Description**
| Resolve the given hostname to an IP address

| **Syntax**
| int WiFiClass::hostByName(const char\* aHostname, IPAddress& aResult)

| **Parameters**
| aHostname: Name to be resolved
| aResult: IPAddress structure to store the returned IP address

| **Returns**
| The function returns “1” if aIPAddrString was successfully converted
  to an IP address,else otherwise, it will return as an error code.

| **Example Code**
| NA

| **Notes and Warnings**
| NA

**WiFiClass::apbegin**

| **Description**
| Start AP mode

| **Syntax**
| int WiFiClass::apbegin(char\* ssid, char\* channel)
| int WiFiClass::apbegin(char\* ssid, char\* password, char\* channel)

| **Parameters**
| ssid: SSID of the AP network
| channel: AP’s channel, default 1
| password: AP’s password

| **Returns**
| The function will return the WiFi status.

| **Example Code**
| Example: WiFiAPMode

**#include**

**char** ssid[] = "yourNetwork"; //Set the AP's SSID

**char** pass[] = "Password"; //Set the AP's password

**char** channel[] = "1"; //Set the AP's channel

**int** status = WL_IDLE_STATUS; // the Wifi radio's status

**void** setup() {

//Initialize serial and wait for port to open:

Serial.begin(9600);

**while** (!Serial) {

; // wait for serial port to connect. Needed for native USB port only

}

// check for the presence of the shield:

**if** (WiFi.status() == WL_NO_SHIELD) {

Serial.println("WiFi shield not present");

**while** (**true**);

}

String fv = WiFi.firmwareVersion();

**if** (fv != "1.1.0") {

Serial.println("Please upgrade the firmware");

}

// attempt to start AP:

**while** (status != WL_CONNECTED) {

Serial.print("Attempting to start AP with SSID: ");

Serial.println(ssid);

status = WiFi.apbegin(ssid, pass, channel);

delay(10000);

}

//AP MODE already started:

Serial.println("AP mode already started");

Serial.println();

printWifiData();

printCurrentNet();

}

**void** loop() {

// check the network connection once every 10 seconds:

delay(10000);

printCurrentNet();

}

**void** printWifiData() {

// print your WiFi shield's IP address:

IPAddress ip = WiFi.localIP();

Serial.print("IP Address: ");

Serial.println(ip);

// print your subnet mask:

IPAddress subnet = WiFi.subnetMask();

Serial.print("NetMask: ");

Serial.println(subnet);

// print your gateway address:

IPAddress gateway = WiFi.gatewayIP();

Serial.print("Gateway: ");

Serial.println(gateway);

Serial.println();

}

**void** printCurrentNet() {

// print the SSID of the AP:

Serial.print("SSID: ");

Serial.println(WiFi.SSID());

// print the MAC address of AP:

byte bssid[6];

WiFi.BSSID(bssid);

Serial.print("BSSID: ");

Serial.print(bssid[0], HEX);

Serial.print(":");

Serial.print(bssid[1], HEX);

Serial.print(":");

Serial.print(bssid[2], HEX);

Serial.print(":");

Serial.print(bssid[3], HEX);

Serial.print(":");

Serial.print(bssid[4], HEX);

Serial.print(":");

Serial.println(bssid[5], HEX);

// print the encryption type:

byte encryption = WiFi.encryptionType();

Serial.print("Encryption Type:");

Serial.println(encryption, HEX);

Serial.println();

}

| **Notes and Warnings**
| NA

**WiFiClass::disablePowerSave**

| **Description**
| Disable power-saving mode

| **Syntax**
| int WiFiClass::disablePowerSave()

| **Parameters**
| The function requires no input parameter.

| **Returns**
| 1 if disable success, 0 if failed

| **Example Code**
| NA

| **Notes and Warnings**
| NA
