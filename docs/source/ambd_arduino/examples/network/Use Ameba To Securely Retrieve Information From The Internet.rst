###############################################################
Use Ameba To Securely Retrieve Information From The Internet
###############################################################

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Materials**
:raw-html:`</p>`

   - AmebaD [RTL8722DM / RTL8722CSM / RTL8722DM MINI] x 1

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Example**
:raw-html:`</p>`

This example uses Ameba to securely retrieve information from the
internet using SSL. SSL is an acronym for Secure Sockets Layer. It is a
cryptographic protocol designed to provide communications security over
a computer network, by encrypting the messages passed between server and
client.

Open the “WiFiSSLClient” example in ``“File” -> “Examples” -> “AmebaWiFi”
-> “WiFiSSLClient”``.

   |1|

In the sample code, modify the highlighted snippet to reflect your WiFi
network settings.

   |2|

Upload the code and press the reset button on Ameba once the upload is
finished.

Open the serial monitor in the Arduino IDE and observe as Ameba
retrieves a text file from os.mbed.com.

   |3|

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Code Reference**
:raw-html:`</p>`

Use “WiFiSSLClient client;” to create a client that uses SSL. After
creation, the client can be used in the same way as a regular client.

.. |1| image:: /ambd_arduino/media/Use_Ameba_To_Securely_Retrieve_Information_From_The_Internet/image1.png
   :width: 716
   :height: 1006
   :scale: 50 %
.. |2| image:: /ambd_arduino/media/Use_Ameba_To_Securely_Retrieve_Information_From_The_Internet/image2.png
   :width: 716
   :height: 867
   :scale: 100 %
.. |3| image:: /ambd_arduino/media/Use_Ameba_To_Securely_Retrieve_Information_From_The_Internet/image3.png
   :width: 633
   :height: 476
   :scale: 100 %