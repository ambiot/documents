##########################################################################
I2C - Receive Data from Arduino UNO			
##########################################################################

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Materials**
:raw-html:`</p>`

  - AmebaD [AMB21 / AMB22 / AMB23 / BW16] x 1
  - Arduino UNO x 1

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Example**
:raw-html:`</p>`

In the previous example `“I2C – Communicate with Arduino UNO via
I2C”  <https://www.amebaiot.com/amebad-arduino-i2c-1>`__, Ameba, the I2C
master, transmits data to the Arduino UNO, the I2C slave. 
As to this example, Ameba is the I2C master, and receives data from the Arduino
UNO, which is the I2C slave.

**Setting up Arduino Uno to be I2C Slave**

First, select Arduino in the Arduino IDE in ``“Tools” → “Board” →
“Arduino Uno”``:
Open ``“Examples” → “Wire” → “slave_sender”``

.. image:: /media/ambd_arduino/I2C_Receive_Data_from_Arduino_UNO/image1.png
   :align: center
   :width: 683
   :height: 1028

Then click “Sketch” → “Upload” to compile and upload the example to
Arduino Uno.

**Setting up Ameba to be I2C Master**

Next, open another window of Arduino IDE, make sure to choose your
Ameba development board in the IDE: “Tools” → “Board”
Open ``“File” → “Examples” → “AmebaWire” → “MasterReader”``

.. image:: /media/ambd_arduino/I2C_Receive_Data_from_Arduino_UNO/image2.png
   :align: center
   :width: 588
   :height: 1028

Click “Sketch” → “Upload” to compile and upload the example to Ameba.

**Wiring**

The Arduino example uses A4 as the I2C SDA and A5 as the I2C SCL.
Another important thing is that the GND pins of Arduino and Ameba
should be connected to each other.

**AMB21 / AMB22** Wiring Diagram:

.. image:: /media/ambd_arduino/I2C_Receive_Data_from_Arduino_UNO/image3.png
   :align: center
   :width: 1540
   :height: 1051
   :scale: 66 %

**AMB23** Wiring Diagram:

.. image:: /media/ambd_arduino/I2C_Receive_Data_from_Arduino_UNO/image3-1.png
   :align: center
   :width: 882
   :height: 670

**BW16** Wiring Diagram:

.. image:: /media/ambd_arduino/I2C_Receive_Data_from_Arduino_UNO/image3-3.png
   :align: center
   :width: 923
   :height: 717

**BW16-TypeC** Wiring Diagram: 

.. image:: /media/ambd_arduino/I2C_Receive_Data_from_Arduino_UNO/image3-4.png
   :align: center
   :width: 959
   :height: 690

Next, we will observe the data receive by Ameba in the Serial Monitor.
(Note: If you do not know which port the Ameba development board is
connected to, please find it in the Device Manager of Windows first.
Ameba is connected as “mbed Serial Port”. For example, if you find
mbed Serial Port (COM15) means Ameba is connected to port COM15.)

.. image:: /media/ambd_arduino/I2C_Receive_Data_from_Arduino_UNO/image4.png
   :align: center
   :width: 434
   :height: 405

We select the port in “Tools” → “Port” → “COM15” (the port connected
to Ameba)
Open the Arduino IDE window of the Ameba, go to “Tools” → “Serial
Monitor” to display the messages printed by Ameba.
Press the reset button on Arduino Uno, Arduino Uno now waits for
connection from I2C master.
Then press the reset button on Ameba, Ameba will start to receive
messages from Arduino Uno. And you can see the “hello ” message
printed every half second in serial monitor.
(NOTE: If the message does not show in the Serial Monitor of Ameba,
please close and open the serial monitor again.)

.. image:: /media/ambd_arduino/I2C_Receive_Data_from_Arduino_UNO/image5.png
   :align: center
   :width: 649
   :height: 410

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Code Reference**
:raw-html:`</p>`

You can find detailed information of this example in the documentation
of Arduino:
https://www.arduino.cc/en/Tutorial/MasterReader

First use ``Wire.begin()`` / ``Wire.begin(address)`` to join the I2C bus as a
master or slave, in the Master case the address is not required.
https://www.arduino.cc/en/Reference/WireBegin

Next, the Master uses ``Wire.requestFrom()`` to specify from which Slave
to request data.
https://www.arduino.cc/en/Reference/WireRequestFrom

