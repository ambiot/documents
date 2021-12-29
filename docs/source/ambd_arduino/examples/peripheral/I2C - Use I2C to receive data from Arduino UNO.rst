##########################################################################
I2C - Use I2C to receive data from Arduino UNO
##########################################################################

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Materials**
:raw-html:`</p>`

  - AmebaD [RTL8722DM / RTL8722CSM / RTL8722DM MINI] x 1
  - Arduino UNO x 1

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Example**
:raw-html:`</p>`

| In the previous example `“I2C – Communicate with Arduino UNO via
  I2C”  <https://www.amebaiot.com/amebad-arduino-i2c-1>`__, Ameba, the I2C
  master, transmits data to the Arduino UNO, the I2C slave. 
| As to this example, Ameba is the I2C master, and receives data from the Arduino
  UNO, which is the I2C slave.

-  **Setting up Arduino Uno to be I2C Slave**

| First, select Arduino in the Arduino IDE in ``“Tools” -> “Board” ->
  “Arduino Uno”``:
| Open ``“Examples” -> “Wire” -> “slave_sender”``

  |1|

Then click “Sketch” -> “Upload” to compile and upload the example to
Arduino Uno.

-  **Setting up Ameba to be I2C Master**

| Next, open another window of Arduino IDE, make sure to choose your
  Ameba development board in the IDE: “Tools” -> “Board”
| Open ``“File” -> “Examples” -> “AmebaWire” -> “MasterReader”``

  |2|

| Click “Sketch” -> “Upload” to compile and upload the example to Ameba.

-  **Wiring**

| The Arduino example uses A4 as the I2C SDA and A5 as the I2C SCL.
| Another important thing is that the GND pins of Arduino and Ameba
  should be connected to each other.

| **RTL8722DM / RTL8722CSM** Wiring Diagram:

  |3|

| **RTL8722DM MINI** Wiring Diagram:

  |3-1|

| Next, we will observe the data receive by Ameba in the Serial Monitor.
| (Note: If you do not know which port the Ameba development board is
  connected to, please find it in the Device Manager of Windows first.
  Ameba is connected as “mbed Serial Port”. For example, if you find
  mbed Serial Port (COM15) means Ameba is connected to port COM15.)

  |4|

| We select the port in “Tools” -> “Port” -> “COM15” (the port connected
  to Ameba)
| Open the Arduino IDE window of the Ameba, go to “Tools” -> “Serial
  Monitor” to display the messages printed by Ameba.
| Press the reset button on Arduino Uno, Arduino Uno now waits for
  connection from I2C master.
| Then press the reset button on Ameba, Ameba will start to receive
  messages from Arduino Uno. And you can see the “hello ” message
  printed every half second in serial monitor.
| (NOTE: If the message does not show in the Serial Monitor of Ameba,
  please close and open the serial monitor again.)

  |5|

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Code Reference**
:raw-html:`</p>`

| You can find detailed information of this example in the documentation
  of Arduino:
| https://www.arduino.cc/en/Tutorial/MasterReader

| First use ``Wire.begin()`` / ``Wire.begin(address)`` to join the I2C bus as a
  master or slave, in the Master case the address is not required.
| https://www.arduino.cc/en/Reference/WireBegin

| Next, the Master uses ``Wire.requestFrom()`` to specify from which Slave
  to request data.
| https://www.arduino.cc/en/Reference/WireRequestFrom

.. |1| image:: /ambd_arduino/media/[RTL8722CSM]_[RTL8722DM]_I2C_Use_I2C_to_receive_data_from_Arduino_UNO/image1.png
   :width: 683
   :height: 1028
   :scale: 50 %
.. |2| image:: /ambd_arduino/media/[RTL8722CSM]_[RTL8722DM]_I2C_Use_I2C_to_receive_data_from_Arduino_UNO/image2.png
   :width: 588
   :height: 1028
   :scale: 50 %  
.. |3| image:: /ambd_arduino/media/[RTL8722CSM]_[RTL8722DM]_I2C_Use_I2C_to_receive_data_from_Arduino_UNO/image3.png
   :width: 1540
   :height: 1051
   :scale: 30 %
.. |3-1| image:: /ambd_arduino/media/[RTL8722CSM]_[RTL8722DM]_I2C_Use_I2C_to_receive_data_from_Arduino_UNO/image3-1.png
   :width: 882
   :height: 670
   :scale: 50 %   
.. |4| image:: /ambd_arduino/media/[RTL8722CSM]_[RTL8722DM]_I2C_Use_I2C_to_receive_data_from_Arduino_UNO/image4.png
   :width: 434
   :height: 405
   :scale: 100 %
.. |5| image:: /ambd_arduino/media/[RTL8722CSM]_[RTL8722DM]_I2C_Use_I2C_to_receive_data_from_Arduino_UNO/image5.png
   :width: 649
   :height: 410
   :scale: 100 %