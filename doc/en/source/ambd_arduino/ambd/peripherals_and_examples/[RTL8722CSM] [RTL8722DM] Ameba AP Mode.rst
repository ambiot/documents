[RTL8722CSM] [RTL8722DM] Ameba AP Mode
=========================================
In AP mode, Ameba can accept at most 3 station connections, and can be
set to open mode or WPA2 mode.

Preparation

-  Ameba x 1

Example

In this example, we turn on the AP mode of Ameba and connect station to
Ameba.

Open the WiFi AP example, "File" -> "Examples" -> "AmebaWiFi" ->
"WiFiAPMode"

.. image:: ../media/[RTL8722CSM]_[RTL8722DM]_Ameba_AP_Mode/image1.png
   :alt: 1
   :width: 5.89583in
   :height: 7.40972in

In the highlighted code snippet, fill in your SSID, PASSWORD and
CHANNEL.

The code highlighted in green is the API we used to turn on the AP mode
in security mode.

If you want to turn on the AP mode in open mode, please modify the code
to status = WiFi.apbegin(ssid, channel);

Then upload the sample code and press reset, and you can see related
information shown in serial monitor.

.. image:: ../media/[RTL8722CSM]_[RTL8722DM]_Ameba_AP_Mode/image2.png
   :alt: 1
   :width: 5.89583in
   :height: 7.40972in

In the figure below, we show the messages shown in serial monitor when
two stations connect to Ameba AP in open mode:

.. image:: ../media/[RTL8722CSM]_[RTL8722DM]_Ameba_AP_Mode/image3.png
   :alt: 1
   :width: 5.89583in
   :height: 7.40972in

In the figure below, we show the messages shown in serial monitor when a
station connects to Ameba AP in security mode:

.. image:: ../media/[RTL8722CSM]_[RTL8722DM]_Ameba_AP_Mode/image4.png
   :alt: 1
   :width: 5.89583in
   :height: 7.40972in
