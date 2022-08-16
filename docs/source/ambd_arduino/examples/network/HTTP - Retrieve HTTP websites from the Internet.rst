###############################################################################
HTTP - Retrieve HTTP websites from the Internet
###############################################################################

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Materials**
:raw-html:`</p>`
  
  - AmebaD [AMB21 / AMB22 / AMB23 / BW16] x 1

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Example**
:raw-html:`</p>`

In this example, the HttpClient library is used to retrieve a webpage
using the HTTP protocol.
First, make sure that the correct Ameba development board is selected
in “Tools” → “Board”
Then open ``“File” → “Examples” → “AmebaHttp” → “SimpleHttpExample”``

  |1|

In the sample code, modify the highlighted section to enter the information 
required (ssid, password, key index) to connect to your WiFi network.

  |2|

Upload the code and press the reset button on Ameba once the upload is
finished. Open the serial monitor in the Arduino IDE and you can see
the information retrieved from the website.


 |3|
 
:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Code Reference**
:raw-html:`</p>`

Use ``WiFi.begin()`` to establish WiFi connection:
https://www.arduino.cc/en/Reference/WiFiBegin

To get the information of a WiFi connection:
Use ``WiFi.SSID()`` to get SSID of the current connected network.
https://www.arduino.cc/en/Reference/WiFiSSID

Use ``WiFi.RSSI()`` to get the signal strength of the connection.
https://www.arduino.cc/en/Reference/WiFiRSSI

Use ``WiFi.localIP()`` to get the IP address of Ameba.
https://www.arduino.cc/en/Reference/WiFiLocalIP

Use WiFiClient to create a client to handle the WiFi connection.
https://www.arduino.cc/en/Reference/WiFiClient

Use HTTPClient to create a client to handle the HTTP connection.

Use ``http.get()`` to send a GET request to the website.

.. |1| image:: /media/ambd_arduino/HTTP_Retrieve_HTTP_Websites_From_The_Internet/image1.png
   :width: 721
   :height: 1006
   :scale: 70 %
.. |2| image:: /media/ambd_arduino/HTTP_Retrieve_HTTP_Websites_From_The_Internet/image2.png
   :width: 721
   :height: 864
   :scale: 70 %
.. |3| image:: /media/ambd_arduino/HTTP_Retrieve_HTTP_Websites_From_The_Internet/image3.png
   :width: 757
   :height: 499
   :scale: 75 %