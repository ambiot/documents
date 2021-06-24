[RTL8722CSM] [RTL8722DM] Connect to WiFi
=============================================
Materials

-  Ameba x 1

Procedure

There three common encryption type in WiFi connection. The first one is
“OPEN”, which means there is no password needed to connect to this
network. The second type of encryption is WPA, which requires the
correct password to access. The third type is WEP, which requires a
hexadecimal password and a keyindex.

In the following, we will give a brief introduction on how to establish
WiFi connection with these three types of encryption on Ameba.

First, make sure the correct Ameba development board is selected in
“Tools” -> “Board”.

-  Open (WiFi connection without password)

Open the “ConnectNoEncryption” example in “File” -> “Examples” ->
“AmebaWiFi” -> “ConnectWithWiFi” -> “ConnectNoEncryption”

.. image:: ../media/[RTL8722CSM]_[RTL8722DM]_Connect_to_WiFi/image1.png
   :width: 6.5in
   :height: 7.50694in

In the sample code, modify “ssid” to be the same as the WiFi SSID to be
connected to.

Next, upload the sample code, and press the reset button on Ameba. Then
you will see a message “You’re connected to the networkSSID: XXXXX”, and
the information of this WiFi connection is printed in the serial monitor
every 10 seconds.

 |image1|

-  WiFi connection with WPA encryption

Open the “ConnectWithWPA” example in “File” -> “Examples” -> “AmebaWiFi”
-> “ConnectWithWiFi” -> “ConnectWithWPA”

.. image:: ../media/[RTL8722CSM]_[RTL8722DM]_Connect_to_WiFi/image3.png
   :width: 6.5in
   :height: 7.50694in

In the sample code, modify “ssid” to the WiFi SSID to be connected to
and “pass” to the network password.

Next, upload the sample code, and press the reset button on Ameba. Then
you will see a message “You’re connected to the networkSSID: XXXXX”, and
the information of this WiFi connection is printed in the serial monitor
every 10 seconds.

-  WiFi connection with WEP encryption

Open the “ConnectWithWEP” example in “File” -> “Examples” -> “AmebaWiFi”
-> “ConnectWithWiFi” -> “ConnectWithWEP”

.. image:: ../media/[RTL8722CSM]_[RTL8722DM]_Connect_to_WiFi/image4.png
   :alt: 2-8
   :width: 6.5in
   :height: 7.50694in

In the sample code, modify “ssid” to the SSID to be connected, “key” to
the hexadecimal password, “keyIndex” to your key index number.

Next, upload the sample code, and press the reset button on Ameba. Then
you will see a message “You’re connected to the networkSSID: XXXXX”, and
the information of this WiFi connection is printed in the IDE every 10
seconds.

Code Reference

| https://www.arduino.cc/en/Reference/WiFiBegin
| To get the information of a WiFi connection:
| Use WiFi.SSID() to get SSID of the current connected network.
| https://www.arduino.cc/en/Reference/WiFiSSID
| Use WiFi.RSSI() to get the signal strength of the connection.
| https://www.arduino.cc/en/Reference/WiFiRSSI
| Use WiFi.encryptionType() to get the encryption type of the WiFi
  connection.
| https://www.arduino.cc/en/Reference/WiFiEncryptionType
| Use WiFi.BSSID() to get the MAC address of the router you are
  connected to.
| https://www.arduino.cc/en/Reference/WiFiBSSID
| To get the information of Ameba:
| Use WiFi.macAddress() to get the MAC address of Ameba.
| https://www.arduino.cc/en/Reference/WiFiMACAddress
| Use WiFi.localIP() to get the IP address of Ameba.
| https://www.arduino.cc/en/Reference/WiFiLocalIP
| Use WiFi.subnetMask() to get the subnet mask.
| https://www.arduino.cc/en/Reference/WiFiSubnetMask
| Use WiFi.gatewayIP() to get the WiFi shield’s gateway IP address.
| https://www.arduino.cc/en/Reference/WiFiGatewayIP

Comparison with Arduino

| In the Arduino platform, we need to add an extra WiFi shield to be the
  WiFi module to realize the WiFi connection. And we must #include to
  use SPI to communicate with WiFi module.
| However, Ameba is already equipped with WiFi module. Therefore,
  #include is not needed.

.. |image1| image:: ../media/[RTL8722CSM]_[RTL8722DM]_Connect_to_WiFi/image2.png
   :width: 6.5in
   :height: 5.30764in
