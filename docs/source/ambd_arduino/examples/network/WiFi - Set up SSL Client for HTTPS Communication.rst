###############################################################
WiFi - Set up SSL Client for HTTPS Communication
###############################################################

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Materials**
:raw-html:`</p>`

   - AmebaD [AMB21 / AMB22 / AMB23 / BW16] x 1

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Example**
:raw-html:`</p>`

This example uses Ameba to securely retrieve information from the
internet using SSL. SSL is an acronym for Secure Sockets Layer. It is a
cryptographic protocol designed to provide communications security over
a computer network, by encrypting the messages passed between server and
client.

Open the “WiFiSSLClient” example in ``“File” → “Examples” → “WiFi”
→ “WiFiSSLClient”``.

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

.. |1| image:: /media/ambd_arduino/WiFi_Set_Up_SSL_Client_For_HTTPS_Communications/image1.png
   :width: 1158
   :height: 960
   :scale: 70 %
.. |2| image:: /media/ambd_arduino/WiFi_Set_Up_SSL_Client_For_HTTPS_Communications/image2.png
   :width: 716
   :height: 867
   :scale: 80 %
.. |3| image:: /media/ambd_arduino/WiFi_Set_Up_SSL_Client_For_HTTPS_Communications/image3.png
   :width: 633
   :height: 476
   :scale: 100 %