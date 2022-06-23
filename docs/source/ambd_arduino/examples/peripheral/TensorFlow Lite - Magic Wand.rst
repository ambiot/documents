##########################################################################
TensorFlow Lite - Magic Wand
##########################################################################

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Materials**
:raw-html:`</p>`

  - AmebaD [AMB21 / AMB22 / AMB23 / BW16] x 1
  - Adafruit LSM9DS1 accelerometer
  - LED x 2

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Example**
:raw-html:`</p>`

**Procedure**

| **AMB21 / AMB22** Wiring Diagram:
| Connect the accelerometer and LEDs to the AMB21/AMB22 following the diagram.

  |1|

| **AMB23** Wiring Diagram:
| For AMB23, we will use the onboard LEDs on the board itself.
  
  |1-1|

| **BW16** Wiring Diagram:
| For BW16, we will use the onboard LEDs on the board itself.

  |1-2|

Download the Ameba customized version of TensorFlow Lite for
Microcontrollers library at
https://github.com/ambiot/tree/master/Arduino_zip_libraries.

Follow the instructions at https://docs.arduino.cc/software/ide-v1/tutorials/installing-libraries to
install it. 

Ensure that the patch files found at
https://github.com/ambiot/tree/master/Ameba_misc/ are also
installed.

In the Arduino IDE library manager, install the Arduino_LSM9DS1 library. This example has been tested with version 1.1.0 of the LSM9DS1 library.


Open the example, ``"Files" -> "Examples" -> “TensorFlowLite_Ameba” ->
“magic_wand”``.
  
  |2|

| Upload the code and press the reset button on Ameba once the upload is
  finished.
| Holding the accelerometer steady, with the positive x-axis pointing to
  the right and the positive z-axis pointing upwards, move it following
  the shapes as shown, moving it in a smooth motion over 1 to 2 seconds,
  avoiding any sharp movements.
  
  |3|

| If the movement is recognised by the Tensorflow Lite model, you should
  see the same shape output to the Arduino serial monitor. Different LEDs
  will light up corresponding to different recognized gestures.
| Note that the wing shape is easy to achieve, while the slope and ring
  shapes tend to be harder to get right.

  |4|

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Code Reference**
:raw-html:`</p>`

More information on TensorFlow Lite for Microcontrollers can be found
at: https://www.tensorflow.org/lite/microcontrollers

.. |1| image:: /media/ambd_arduino/TFL_MagicWand/image1.jpeg
   :width: 1027
   :height: 630
   :scale: 60 %
.. |1-1| image:: /media/ambd_arduino/TFL_MagicWand/image1-1.jpeg
   :width: 971
   :height: 658
   :scale: 50 %
.. |1-2| image:: /media/ambd_arduino/TFL_MagicWand/image1-2.jpeg
   :width: 859
   :height: 690
   :scale: 50 %  
.. |2| image:: /media/ambd_arduino/TFL_MagicWand/image2.jpeg
   :width: 556
   :height: 830
   :scale: 70 %
.. |3| image:: /media/ambd_arduino/TFL_MagicWand/image3.jpeg
   :width: 777
   :height: 337
   :scale: 50 %
.. |4| image:: /media/ambd_arduino/TFL_MagicWand/image4.jpeg
   :width: 639
   :height: 458
   :scale: 100 %