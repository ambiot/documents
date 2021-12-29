#################################################
IPv6 – Ameba as IPv6 Server/Client over UDP
#################################################

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Materials**
:raw-html:`</p>`

   - AmebaD [RTL8722DM/RTL8722CSM/RTL8722DM MINI] / [RTL8720DN(BW16)] x 2

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Example**
:raw-html:`</p>`

**Introduction**

This example shows how Ameba can communicate on the local network using Internet Protocol version 6 over UDP.
Note that this example only works after you have set up the server and then configure the client accordingly.

    |1|

In the sample code, modify the highlighted section to enter the information required (ssid, password) to 
connect to your WiFi network.

    |2|

Next, upload the code and press the reset button on Ameba once the upload is finished.
Open Serial Monitor and copy the IPv6 address of the Server (the highlighted area) for later use,

    |3|

Step 2. IPv6UDPClient
Now take the second Ameba D and open another example, ``“Files” -> “Examples” -> “AmebaWiFi” -> “IPv6UDPClient”``.
    
    |4| 

In the sample code, modify the highlighted section to enter the information required (ssid, password) to connect to your WiFi network.

    |5| 

From the previous step, we have obtained the Server’s IPv6 address, now we copy the server’s 
IPv6 address to “IPv6UDPClient” example in the highlighted area below,

    |6|

| Next, upload the code and press the reset button on Ameba once the upload is finished.
| Open Serial Monitor on the port to the second Ameba D, you should see server and client are 
  sending text message to each other at the same time.

    |7|

    |8|

.. |1| image:: /ambd_arduino/media/IPv6_UDP/image1.png
   :width: 453
   :height: 525
   :scale: 100 %
.. |2| image:: /ambd_arduino/media/IPv6_UDP/image2.png
   :width: 458
   :height: 527
   :scale: 100 %
.. |3| image:: /ambd_arduino/media/IPv6_UDP/image3.png
   :width: 602
   :height: 294
   :scale: 100 %
.. |4| image:: /ambd_arduino/media/IPv6_UDP/image4.png
   :width: 426
   :height: 491
   :scale: 100 %
.. |5| image:: /ambd_arduino/media/IPv6_UDP/image5.png
   :width: 436
   :height: 491
   :scale: 100 %
.. |6| image:: /ambd_arduino/media/IPv6_UDP/image6.png
   :width: 471
   :height: 449
   :scale: 100 %
.. |7| image:: /ambd_arduino/media/IPv6_UDP/image7.png
   :width: 517
   :height: 271
   :scale: 100 %
.. |8| image:: /ambd_arduino/media/IPv6_UDP/image8.png
   :width: 517
   :height: 271
   :scale: 100 %