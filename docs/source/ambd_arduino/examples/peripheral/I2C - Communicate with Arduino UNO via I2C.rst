##########################################################################
I2C - Communicate with Arduino UNO via I2C
##########################################################################

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Introduction of I2C**
:raw-html:`</p>`

      There are two roles in the operation of I2C, one is “master”, the
      other is “slave”. Only one master is allowed and can be connected
      to many slaves. Each slave has its unique address, which is used
      in the communication between master and the slave. I2C uses two
      pins, one is for data transmission (SDA), the other is for the
      clock (SCL). Master uses the SCL to inform slave of the upcoming
      data transmission, and the data is transmitted through SDA. The
      I2C example was named “Wire” in the Arduino example.

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Materials**
:raw-html:`</p>`

  - AmebaD [RTL8722DM / RTL8722CSM / RTL8722DM MINI] x 1
  - Arduino UNO x 1

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Example**
:raw-html:`</p>`

| In this example, we use Ameba as the I2C master writer, and use
  Arduino as the I2C slave receiver.
| When the I2C slave receives string sent from I2C master, it prints the
  received string.

  -  Setting up Arduino Uno to be I2C Slave

| First, select Arduino in the Arduino IDE in ``“Tools” -> “Board” -> “Arduino Uno”``
| Open the “Slave Receiver” example in ``“Examples” -> “Wire” -> “slave_receiver”``:

  |1|

Then click ``“Sketch” -> “Upload”`` to compile and upload the example to Arduino Uno.

-  Setting up Ameba to be I2C Master

| Next, open another window of Arduino IDE, make sure to choose your
  Ameba development board in the IDE: ``“Tools” -> “Board”``
| Then open the “Master Writer” example in ``“File” -> “Examples” ->
  “AmebaWire” -> “MasterWriter”``
  
  |2|

-  Wiring

| The Arduino example uses A4 as the I2C SDA and A5 as the I2C SCL.
| Another important thing is that the GND pins of Arduino and Ameba
  should be connected to each other.

**RTL8722DM / RTL8722CSM** Wiring Diagram:
  
  |3|

**RTL8722DM MINI** Wiring Diagram:

  |3-1|

| Open the Arduino IDE of the Arduino Uno and open the serial monitor
  (“Tools” -> “Serial Monitor”).
| In the Serial Monitor, you can see the messages printed from Arduino
  Uno.
| Next, press the reset button on Arduino Uno. Now the Arduino Uno is
  waiting for the connection from I2C Master.
| We press the reset button on Ameba to start to send messages. Then
  observe the serial monitor, you can see the messages show up every
  half second.

  |4|

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Code Reference**
:raw-html:`</p>`

| You can find detailed information of this example in the documentation
  of Arduino:
| https://www.arduino.cc/en/Tutorial/MasterWriter

| First use Wire.begin()/Wire.begin(address) to join the I2C bus as a
  master or slave, in the Master case the address is not required.
| https://www.arduino.cc/en/Reference/WireBegin

| Next, the Master uses Wire.beginTransmission(address) to begin a
  transmission to the I2C slave with the given address:
| https://www.arduino.cc/en/Reference/WireBeginTransmission

| Uses Wire.write() to send data, and finally use Wire.endTransmission()
  to end a transmission to a Slave and transmits the bytes that were
  queued:
| https://www.arduino.cc/en/Reference/WireEndTransmission

.. |1| image:: /ambd_arduino/media/[RTL8722CSM]_[RTL8722DM]_I2C_Communicate_with_Arduino_UNO_via_I2C/image1.png
   :width: 578
   :height: 1028
   :scale: 50 %
.. |2| image:: /ambd_arduino/media/[RTL8722CSM]_[RTL8722DM]_I2C_Communicate_with_Arduino_UNO_via_I2C/image2.png
   :width: 588
   :height: 1028
   :scale: 50 %  
.. |3| image:: /ambd_arduino/media/[RTL8722CSM]_[RTL8722DM]_I2C_Communicate_with_Arduino_UNO_via_I2C/image3.png
   :width: 1540
   :height: 1051
   :scale: 30 %
.. |3-1| image:: /ambd_arduino/media/[RTL8722CSM]_[RTL8722DM]_I2C_Communicate_with_Arduino_UNO_via_I2C/image3-1.png
   :width: 1005
   :height: 743
   :scale: 50 %
.. |4| image:: /ambd_arduino/media/[RTL8722CSM]_[RTL8722DM]_I2C_Communicate_with_Arduino_UNO_via_I2C/image4.png
   :width: 649
   :height: 410
   :scale: 100 %