[RTL8722CSM] [RTL8722DM] Use Ameba to retrieve HTTP websites from the internet
================================================================================
Materials

-  Ameba x 1

 

Example

| In this example, the HttpClient library is used to retrieve a webpage
  using the HTTP protocol.
| First, make sure that the correct Ameba development board is selected
  in "Tools" -> "Board"

 

Then open "File" -> "Examples" -> "AmebaHttp" -> "SimpleHttpExample"

.. image:: ../media/[RTL8722CSM]_[RTL8722DM]_Use_Ameba_to_retrieve_HTTP_websites_from_the_internet/image1.png
   :alt: 4-1
   :width: 6.35417in
   :height: 7.39583in

In the sample code, modify the highlighted section to enter the
information required (ssid, password, key index) to connect to your WiFi
network.

| |4-2|
| Upload the code and press the reset button on Ameba once the upload is
  finished. Open the serial monitor in the Arduino IDE and you can see
  the information retrieved from the website.

.. image:: ../media/[RTL8722CSM]_[RTL8722DM]_Use_Ameba_to_retrieve_HTTP_websites_from_the_internet/image3.png
   :alt: 4-3
   :width: 6.5in
   :height: 4.85972in

 

 

Code Reference

| Use WiFi.begin() to establish WiFi connection:
| https://www.arduino.cc/en/Reference/WiFiBegin
| To get the information of a WiFi connection:
| Use WiFi.SSID() to get SSID of the current connected network.
| https://www.arduino.cc/en/Reference/WiFiSSID
| Use WiFi.RSSI() to get the signal strength of the connection.
| https://www.arduino.cc/en/Reference/WiFiRSSI
| Use WiFi.localIP() to get the IP address of Ameba.
| https://www.arduino.cc/en/Reference/WiFiLocalIP
| Use WiFiClient to create a client to handle the WiFi connection.
| https://www.arduino.cc/en/Reference/WiFiClient
| Use HTTPClient to create a client to handle the HTTP connection.

Use http.get() to send a GET request to the website.

.. |4-2| image:: ../media/[RTL8722CSM]_[RTL8722DM]_Use_Ameba_to_retrieve_HTTP_websites_from_the_internet/image2.png
   :width: 6.5in
   :height: 5.77431in
