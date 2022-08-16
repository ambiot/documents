#################################################
WiFi - Approximate UDP Sending Delay
#################################################

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Materials**
:raw-html:`</p>`

   - AmebaD [AMB21 / AMB22 / AMB23 / BW16] x 1
   - Windows computer connected to same network

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Example**
:raw-html:`</p>`

This example uses Ameba to send UDP packets to a computer and calculates
the UDP sending delay.

**Ameba Preparation**

Open the “CalculateUdpSendDelay” example in ``“File” → “Examples” →
“WiFi” → ” UDP_Calculation ” → “CalculateUdpSendDelay”``.

   |1|

In the sample code, modify the highlighted section to enter the
information required (ssid, password, key index) to connect to your WiFi
network.

The server variable also needs to be changed to match the IP address of
your computer. You can find the IP address using the “ipconfig” command
in a terminal window.

   |2|

**Computer Preparation**

On the computer, Cygwin will be required to compile the code to send the
UDP packets. Cygwin can be downloaded from https://www.cygwin.com/

Follow the instructions there to install it. Next, from the
“CalculateUdpSendDelay” Arduino example, copy the code from the bottom
between “#if 0” and “#endif”, into a new text file and rename the file
to “UdpSendDelay.cpp”.

   |3|

Next, open a Cygwin terminal, change the working directory to the
location of “UdpSendDelay.cpp”, and use the command “g++
UdpSendDelay.cpp -o UdpDelay” to compile the code. A file named
“UdpDelay.exe” will be created in the same directory.

**Running the Example**

First, on the computer, run the UdpDelay.exe file, and the computer will
begin to listen for packets from Ameba.

Next, compile and upload the code from the Arduino IDE to Ameba and
press the reset button when the upload is complete.

The Ameba will begin to send UDP packets to the computer. Once 10000
packets have been received, the computer will calculate the average
delay and print out the result.

It will take some time for 10000 packets to be sent.

   |4|

.. |1| image:: /media/ambd_arduino/WiFi_Approximate_UDP_Sending_Delay/image1.png
   :width: 1153
   :height: 960
   :scale: 70 %
.. |2| image:: /media/ambd_arduino/WiFi_Approximate_UDP_Sending_Delay/image2.png
   :width: 721
   :height: 864
   :scale: 100 %
.. |3| image:: /media/ambd_arduino/WiFi_Approximate_UDP_Sending_Delay/image3.png
   :width: 695
   :height: 661
   :scale: 100 %
.. |4| image:: /media/ambd_arduino/WiFi_Approximate_UDP_Sending_Delay/image4.png
   :width: 1172
   :height: 704
   :scale: 50 %