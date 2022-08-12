#################################################
WiFi - Approximate UDP Receive Delay
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

This example uses Ameba to receive UDP packets from a computer and
calculates the UDP receive delay. 

**Ameba Preparation** 

Open the “CalculateUdpReceiveDelay” example in 
``“File” → “Examples” → “WiFi” → “UDP_Calculation” → “CalculateUdpReceiveDelay”``.

|1|

In the sample code, modify the highlighted section to enter the information
required (ssid, password, key index) to connect to your WiFi
network.

|2|

Upload the code and press the reset button on Ameba
once the upload is finished. Open the serial monitor in Arduino IDE and
take note of the IP address assigned to Ameba.

|3| 

**Computer Preparation** 

On the computer, Cygwin will be required to compile the code to send the UDP packets. 
Cygwin can be downloaded from https://www.cygwin.com/ 

Follow the instructions there to install
it. Next, from the “CalculateUdpReceiveDelay” Arduino example, copy the
code from the bottom between “#if 0” and “#endif”, into a new text file,
change the hostname to the IP address assigned to Ameba, and rename the
file to “UdpReceiveDelay.cpp”.

|4|

Next, open a Cygwin terminal,
change the working directory to the location of “UdpReceiveDelay.cpp”,
and use the command “g++ UdpReceiveDelay.cpp -o UdpDelay” to compile the
code. A file named “UdpDelay.exe” will be created in the same
directory. 

**Running the Example** 

Reset the Ameba, wait for the WiFi to connect, and check that the IP address 
remains the same. On the computer, run the UdpDelay.exe file, and the computer 
will begin to send packets to Ameba. Once 10000 packets have been received, 
Ameba will calculate the average delay and print out the result to the serial
monitor. It may take up to a few minutes for 10000 packets to be sent.

|5|

.. |1| image:: /media/ambd_arduino/WiFi_Approximate_UDP_Receive_Delay/image1.png
   :width: 1157
   :height: 962
   :scale: 80 %
.. |2| image:: /media/ambd_arduino/WiFi_Approximate_UDP_Receive_Delay/image2.png
   :width: 721
   :height: 864
   :scale: 100 %
.. |3| image:: /media/ambd_arduino/WiFi_Approximate_UDP_Receive_Delay/image3.png
   :width: 704
   :height: 442
   :scale: 100 %
.. |4| image:: /media/ambd_arduino/WiFi_Approximate_UDP_Receive_Delay/image4.png
   :width: 695
   :height: 661
   :scale: 100 %
.. |5| image:: /media/ambd_arduino/WiFi_Approximate_UDP_Receive_Delay/image5.png
   :width: 704
   :height: 335
   :scale: 100 %