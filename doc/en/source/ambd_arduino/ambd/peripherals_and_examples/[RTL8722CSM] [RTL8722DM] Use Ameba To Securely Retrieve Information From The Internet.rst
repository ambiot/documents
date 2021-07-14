[RTL8722CSM] [RTL8722DM] Use Ameba To Securely Retrieve Information From The Internet
======================================================================================
Materials

-  Ameba x 1

Example

This example uses Ameba to securely retrieve information from the
internet using SSL. SSL is an acronym for Secure Sockets Layer. It is a
cryptographic protocol designed to provide communications security over
a computer network, by encrypting the messages passed between server and
client.

Open the "WiFiSSLClient" example in "File" -> "Examples" -> "AmebaWiFi"
-> "WiFiSSLClient".

.. image:: ../media/[RTL8722CSM]_[RTL8722DM]_Use_Ameba_To_Securely_Retrieve_Information_From_The_Internet/image1.png
   :alt: 4-1
   :width: 6.35417in
   :height: 7.39583in

In the sample code, modify the highlighted snippet to reflect your WiFi
network settings.

.. image:: ../media/[RTL8722CSM]_[RTL8722DM]_Use_Ameba_To_Securely_Retrieve_Information_From_The_Internet/image2.png
   :alt: 4-2
   :width: 6.5in
   :height: 5.77431in

Upload the code and press the reset button on Ameba once the upload is
finished.

Open the serial monitor in the Arduino IDE and observe as Ameba
retrieves a text file from os.mbed.com.

.. image:: ../media/[RTL8722CSM]_[RTL8722DM]_Use_Ameba_To_Securely_Retrieve_Information_From_The_Internet/image3.png
   :alt: 4-2
   :width: 6.5in
   :height: 5.77431in

| Code Reference
| Use "WiFiSSLClient client;" to create a client that uses SSL. After
  creation, the client can be used in the same way as a regular client.
