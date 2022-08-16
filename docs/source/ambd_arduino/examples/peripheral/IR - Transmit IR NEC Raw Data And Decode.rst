##########################################################################
IR - Transmit IR NEC Raw Data And Decode
##########################################################################

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Materials**
:raw-html:`</p>`

  - AmebaD [AMB21 / AMB22 / AMB23 / BW16 ] x 2
  - Grove – Infrared Emitter x1 (Figure 1)
  - Grove – Infrared Receiver x1 (Figure 2)

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Example**
:raw-html:`</p>`

In this example, we use two AmebaD to connect with
an infrared (IR) Emitter and an IR Receiver separately to transmit and
receive IR NEC Raw data.

.. image:: /media/ambd_arduino/Transmit_IR_NEC_Raw_Data_And_Decode/image1.jpeg
   :align: center
   :width: 688
   :height: 686
   :scale: 50 %

Figure 1: Grove – Infrared Receiver

.. image:: /media/ambd_arduino/Transmit_IR_NEC_Raw_Data_And_Decode/image2.png
   :align: center
   :width: 394
   :height: 323

Figure 2: Grove – Infrared Emitter

On the transmission side, the transmitter will send IR NEC raw data.
The raw data can be seen as consecutive durations of “marks” and
“spaces” (Figure 3) in microseconds (us).
  
  - Mark: a specific period of sending pulses
  - Space: a specific period of sending nothing

.. image:: /media/ambd_arduino/Transmit_IR_NEC_Raw_Data_And_Decode/image3.png
   :align: center
   :width: 531
   :height: 188

Figure 3: A typical IR transmission and reception setup implementation

For more details, please refer to SB-Projects’ topic of `IR Remote
Control Theory <https://www.sbprojects.net/knowledge/ir/index.php>`__ to
learn the theory of IR remote controls operation and a collection of IR
protocol descriptions. In this example, we are going to use NEC (Now
Renesas, also known as Japanese Format) as the transmission protocol.

**NEC Features**
 - 8-bit address and 8-bit command length.
 - Extended mode available, doubling the address size.
 - Address and command are transmitted twice for reliability.
 - Pulse distance modulation.
 - The carrier frequency of 38kHz.
 - Bit time of 1.125ms or 2.25ms.

**Modulation**
NEC protocol uses Pulse Distance Encoding of the bits for data
communication (Figure 4). A logical “1” is represented by total
duration of 2250us, with 560us of “marks” and (2250-560) us of
“spaces”. While logical ”0” is represented by total duration of
1120us, with 560us “marks” and (1120-560) us of “spaces”.

.. image:: /media/ambd_arduino/Transmit_IR_NEC_Raw_Data_And_Decode/image4.png
   :align: center
   :width: 425
   :height: 125

Figure 4: Modulation of NEC

Since a total number of 32\-bit data together with the header and the end\-bit will be transferred (Figure 5). 
If we separate the data in the
time\-frame (in us), there will be ( 2 + 32 ) x 2 + 1 = 69 “marks” \/
“spaces” to be transmitted (Figure 6), which forms the raw NEC data we
would like to transmit in our Arduino “\*.ino” file. This part of the code can be modified by users.
Details of how to obtain raw data code
for your remote devices, you may refer to `Ken Shirriff’s blog <http://www.righto.com/2009/08/multi-protocol-infrared-remote-library.html>`__,
where it provides multiple libraries provided online.
  
.. image:: /media/ambd_arduino/Transmit_IR_NEC_Raw_Data_And_Decode/image5.png
   :align: center
   :width: 550
   :height: 110
  
Figure 5: Sample of a Full NEC Data (in logic1 or 0)
  
.. image:: /media/ambd_arduino/Transmit_IR_NEC_Raw_Data_And_Decode/image6.png
   :align: center
   :width: 830
   :height: 109

Figure 6: Sample of a Full NEC RAW Data (in us)

Figure 7 and 8 shows the pin configuration of IR Emitter and Receiver
with AMB21/AMB22.

.. image:: /media/ambd_arduino/Transmit_IR_NEC_Raw_Data_And_Decode/image7.png
   :align: center
   :width: 764
   :height: 473

Figure 7: Pin configuration of IR Emitter and AMB21/AMB22

.. image:: /media/ambd_arduino/Transmit_IR_NEC_Raw_Data_And_Decode/image8.png
   :align: center
   :width: 721
   :height: 468

Figure 8: Pin configuration of the IR Receiver and AMB21/AMB22

Figure 9 and Figure 10 shows the pin configuration of IR Emitter and 
Receiver with BW16.
   
.. image:: /media/ambd_arduino/Transmit_IR_NEC_Raw_Data_And_Decode/image7-2.png
   :align: center
   :width: 1302
   :height: 1127
   :scale: 42 %


Figure 9: Pin configuration of IR Emitter and BW16

.. image:: /media/ambd_arduino/Transmit_IR_NEC_Raw_Data_And_Decode/image8-2.png
   :align: center
   :width: 1171
   :height: 1117
   :scale: 42 %


Figure 10: Pin configuration of IR Receiver and BW16-TypeC

Figure 11 and Figure 12 shows the pin configuration of IR Emitter and 
Receiver with BW16-TypeC.
   
.. image:: /media/ambd_arduino/Transmit_IR_NEC_Raw_Data_And_Decode/image9.png
   :align: center
   :width: 856
   :height: 777
   :scale: 61 %


Figure 11: Pin configuration of IR Emitter and BW16-TypeC

.. image:: /media/ambd_arduino/Transmit_IR_NEC_Raw_Data_And_Decode/image9-2.png
   :align: center
   :width: 851
   :height: 735
   :scale: 65 %

Figure 12: Pin configuration of IR Receiver and BW16-TypeC
   
After the connection is being set up correctly, we will move to the
coding part for this example. First, make sure the correct Ameba
development board is selected in Arduino IDE: “Tools” → “Board”.

Open the “IRSendRAW” example in ``“File” → “Examples” → “AmebaIRDevice”
→ “IRSendRAW”`` (Figure 13) and upload to 1st board connected with IR
Emitter:
  
.. image:: /media/ambd_arduino/Transmit_IR_NEC_Raw_Data_And_Decode/image10.png
   :align: center
   :width: 554
   :height: 537

Figure 13: Example Location of IRSendRaw and IRRecvNEC

After successfully upload the sample code for IRSendRaw, you might need
to upload the IRRecvNEC example for the 2nd board connected with IR
Receiver from ``“File” → “Examples” → “AmebaIRDevice” → “IRRecvNEC”``.

After opening the serial monitor on the IR Receiver side and press the
reset buttons on two boards, the data “48” will be received every 3
seconds (due to the delays () function, not compulsory to wait). After
decoding the signal from the receiving Pin D8 and transmitting Pin D9
with Logic Analyser and Pulse View (Figure 14), the result is also shown
as “48” after decoding the receiving data with IR NEC Protocol.

.. image:: /media/ambd_arduino/Transmit_IR_NEC_Raw_Data_And_Decode/image11.png
   :align: center
   :width: 1210
   :height: 163

Figure 14: Pulse View results from sending and receiving pin

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Code Reference**
:raw-html:`</p>`

[1] Seeed Official website for Grove – Infrared Receiver
https://wiki.seeedstudio.com/Grove-Infrared_Receiver/

[2] Seed Official website for Grove – Infrared Emitter
https://wiki.seeedstudio.com/Grove-Infrared_Emitter/

[3] Ken SHirriff’s blog on A Multi-Protocol Infrared Remote Library
for the Arduino
http://www.righto.com/2009/08/multi-protocol-infrared-remote-library.html

[4] SB-Projects: IR Remote Control Project
https://www.sbprojects.net/knowledge/ir/index.php

