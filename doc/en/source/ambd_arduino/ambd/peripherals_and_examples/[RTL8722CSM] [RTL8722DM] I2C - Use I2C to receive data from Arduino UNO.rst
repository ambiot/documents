[RTL8722CSM] [RTL8722DM] I2C - Use I2C to receive data from Arduino UNO
==========================================================================
Materials

-  Ameba x 1

-  Arduino UNO x 1

Example

In the previous example `"I2C – Communicate with Arduino UNO via
I2C"  <https://www.amebaiot.com/amebad-arduino-i2c-1>`__, Ameba, the I2C
master, transmits data to the Arduino UNO, the I2C slave. As to this
example, Ameba is the I2C master, and receives data from the Arduino
UNO, which is the I2C slave.

-  **Setting up Arduino Uno to be I2C Slave**

| First, select Arduino in the Arduino IDE in "Tools" -> "Board" ->
  "Arduino Uno":
| Open "Examples" -> "Wire" -> "slave_sender"

.. image:: ../media/[RTL8722CSM]_[RTL8722DM]_I2C_Use_I2C_to_receive_data_from_Arduino_UNO/image1.png
   :alt: per-5-1
   :width: 6.5in
   :height: 7.16806in

Then click "Sketch" -> "Upload" to compile and upload the example to
Arduino Uno.

-  **Setting up Ameba to be I2C Master**

| Next, open another window of Arduino IDE, make sure to choose your
  Ameba development board in the IDE: "Tools" -> "Board"
| Open "File" -> "Examples" -> "AmebaWire" -> "MasterReader"

.. image:: ../media/[RTL8722CSM]_[RTL8722DM]_I2C_Use_I2C_to_receive_data_from_Arduino_UNO/image2.png
   :alt: per-5-3
   :width: 6.5in
   :height: 7.38333in

Click "Sketch" -> "Upload" to compile and upload the example to Ameba.

-  **Wiring**

| The Arduino example uses A4 as the I2C SDA and A5 as the I2C SCL.
| Another important thing is that the GND pins of Arduino and Ameba
  should be connected to each other.
| RTL8722 wiring diagram:

.. image:: ../media/[RTL8722CSM]_[RTL8722DM]_I2C_Use_I2C_to_receive_data_from_Arduino_UNO/image3.png
   :alt: per-5-5
   :width: 6.5in
   :height: 4.68542in

| Next, we will observe the data receive by Ameba in the Serial Monitor.
| (Note: If you do not know which port the Ameba development board is
  connected to, please find it in the Device Manager of Windows first.
  Ameba is connected as "mbed Serial Port". For example, if you find
  mbed Serial Port (COM15) means Ameba is connected to port COM15.)

.. image:: ../media/[RTL8722CSM]_[RTL8722DM]_I2C_Use_I2C_to_receive_data_from_Arduino_UNO/image4.png
   :alt: per-5-6
   :width: 4.52083in
   :height: 4.21528in

| We select the port in "Tools" -> "Port" -> "COM15" (the port connected
  to Ameba)
| Open the Arduino IDE window of the Ameba, go to "Tools" -> "Serial
  Monitor" to display the messages printed by Ameba.
| Press the reset button on Arduino Uno, Arduino Uno now waits for
  connection from I2C master.
| Then press the reset button on Ameba, Ameba will start to receive
  messages from Arduino Uno. And you can see the "hello " message
  printed every half second in serial monitor.
| (NOTE: If the message does not show in the Serial Monitor of Ameba,
  please close and open the serial monitor again.)

.. image:: ../media/[RTL8722CSM]_[RTL8722DM]_I2C_Use_I2C_to_receive_data_from_Arduino_UNO/image5.png
   :alt: per-5-8
   :width: 5.38194in
   :height: 6.4375in

Code Reference

| You can find detailed information of this example in the documentation
  of Arduino:
| https://www.arduino.cc/en/Tutorial/MasterReader

 

| First use Wire.begin()/Wire.begin(address) to join the I2C bus as a
  master or slave, in the Master case the address is not required.
| https://www.arduino.cc/en/Reference/WireBegin

 

| Next, the Master uses Wire.requestFrom() to specify from which Slave
  to request data.
| https://www.arduino.cc/en/Reference/WireRequestFrom
