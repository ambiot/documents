#################################################
IPv6 – Ameba as IPv6 Server/Client over TCP
#################################################

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Materials**
:raw-html:`</p>`

   - AmebaD [AMB21 / AMB22 / AMB23 / BW16] x 2

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Example**
:raw-html:`</p>`

**Introduction**

This example shows how Ameba can communicate on the local network using Internet Protocol version 6 over TCP.
Note that this example only works after you have set up the server and then configure the client accordingly.

**Procedure**

Step 1. IPv6TCPServer
Open the example, ``“Files” → “Examples” → “WiFi” → “IPv6TCPServer”``.

    |1|

In the sample code, modify the highlighted section to enter the information required (ssid, password) to 
connect to your WiFi network.

    |2|

Next, upload the code and press the reset button on Ameba once the upload is finished.
Open Serial Monitor and copy the IPv6 address of the Server (the highlighted area) for later use,

    |3|

Step 2. IPv6TCPClient
Now take the second Ameba D and open another example, ``“Files” → “Examples” → “WiFi” → “IPv6TCPClient”``.
    
    |4| 

In the sample code, modify the highlighted section to enter the information required (ssid, password) to connect to your WiFi network.

    |5| 

From the previous step, we have obtained the Server’s IPv6 address, now we copy the server’s 
IPv6 address to “IPv6TCPClient” example in the highlighted area below,

    |6|

| Next, upload the code and press the reset button on Ameba once the upload is finished.
| Open Serial Monitor on the port to the second Ameba D, you should see server and client are 
  sending text message to each other at the same time.

    |7|

    |8|

.. |1| image:: /media/ambd_arduino/IPv6_Ameba_As_IPv6_Server_Client_Over_TCP/image1.png
   :width: 1160
   :height: 962
   :scale: 100 %
.. |2| image:: /media/ambd_arduino/IPv6_Ameba_As_IPv6_Server_Client_Over_TCP/image2.png
   :width: 427
   :height: 490
   :scale: 100 %
.. |3| image:: /media/ambd_arduino/IPv6_Ameba_As_IPv6_Server_Client_Over_TCP/image3.png
   :width: 602
   :height: 294
   :scale: 100 %
.. |4| image:: /media/ambd_arduino/IPv6_Ameba_As_IPv6_Server_Client_Over_TCP/image4.png
   :width: 1196
   :height: 957
   :scale: 100 %
.. |5| image:: /media/ambd_arduino/IPv6_Ameba_As_IPv6_Server_Client_Over_TCP/image5.png
   :width: 431
   :height: 494
   :scale: 100 %
.. |6| image:: /media/ambd_arduino/IPv6_Ameba_As_IPv6_Server_Client_Over_TCP/image6.png
   :width: 510
   :height: 436
   :scale: 100 %
.. |7| image:: /media/ambd_arduino/IPv6_Ameba_As_IPv6_Server_Client_Over_TCP/image7.png
   :width: 517
   :height: 271
   :scale: 100 %
.. |8| image:: /media/ambd_arduino/IPv6_Ameba_As_IPv6_Server_Client_Over_TCP/image8.png
   :width: 518
   :height: 266
   :scale: 100 %