#################################################
WiFi - Set up WiFi AP Mode
#################################################

In AP mode, Ameba can accept at most 3 station connections, and can be
set to open mode or WPA2 mode.

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Preparation**
:raw-html:`</p>`
   
   - AmebaD [AMB21 / AMB22 / AMB23 / BW16] x 1 

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Example**
:raw-html:`</p>`

| In this example, we turn on the AP mode of Ameba and connect station to
  Ameba.
| Open the WiFi AP example, ``“File” → “Examples” → “WiFi” →
  “WiFiAPMode”``

  |1|

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

.. |1| image:: /media/ambd_arduino/WiFi_Set_Up_WiFi_AP_Mode/image1.png
   :width: 716
   :height: 867
   :scale: 70 %
.. |3| image:: /media/ambd_arduino/WiFi_Set_Up_WiFi_AP_Mode/image3.png
   :width: 718
   :height: 650
   :scale: 90 %
.. |2| image:: /media/ambd_arduino/WiFi_Set_Up_WiFi_AP_Mode/image2.png
   :width: 704
   :height: 524
   :scale: 90 %
.. |4| image:: /media/ambd_arduino/WiFi_Set_Up_WiFi_AP_Mode/image4.png
   :width: 914
   :height: 665
   :scale: 90 %