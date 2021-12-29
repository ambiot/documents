#################################################
Ameba AP Mode
#################################################

In AP mode, Ameba can accept at most 3 station connections, and can be
set to open mode or WPA2 mode.

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Preparation**
:raw-html:`</p>`
   
   - AmebaD [RTL8722DM / RTL8722CSM / RTL8722DM MINI] x 1 

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Example**
:raw-html:`</p>`

| In this example, we turn on the AP mode of Ameba and connect station to
  Ameba.
| Open the WiFi AP example, ``“File” -> “Examples” -> “AmebaWiFi” ->
  “WiFiAPMode”``
| |1|

In the highlighted code snippet, fill in your SSID, PASSWORD and
CHANNEL.

The code highlighted in green is the API we used to turn on the AP mode
in security mode.

If you want to turn on the AP mode in open mode, please modify the code
to 

.. code-block:: c

   status = WiFi.apbegin(ssid, channel);

Then upload the sample code and press reset, and you can see related
information shown in serial monitor.
  
  |2|

In the figure below, we show the messages shown in serial monitor when
two stations connect to Ameba AP in open mode:

  |3|

In the figure below, we show the messages shown in serial monitor when a
station connects to Ameba AP in security mode:

  |4|

.. |1| image:: /ambd_arduino/media/Ameba_AP_Mode/image1.png
   :width: 716
   :height: 867
   :scale: 50 %
.. |3| image:: /ambd_arduino/media/Ameba_AP_Mode/image3.png
   :width: 718
   :height: 650
   :scale: 100 %
.. |2| image:: /ambd_arduino/media/Ameba_AP_Mode/image2.png
   :width: 704
   :height: 524
   :scale: 100 %
.. |4| image:: /ambd_arduino/media/Ameba_AP_Mode/image4.png
   :width: 914
   :height: 665
   :scale: 100 %