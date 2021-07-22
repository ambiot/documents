[RTL8722CSM/RTL8722DM] TensorFlow Lite - Magic Wand
====================================================
**Materials**


-  Ameba D [RTL8722 CSM/DM] x 1

-  Adafruit LSM9DS1 accelerometer

-  LED x 2

**Example**


**Procedure**


Connect the accelerometer and LEDs to the RTL8722 board following the
diagram.

.. image:: ../media/MagicWand/image1.jpeg
   :width: 1027
   :height: 630
   :scale: 100 %

Download the Ameba customized version of TensorFlow Lite for
Microcontrollers library at
https://github.com/ambiot/ambd_arduino/tree/master/Arduino_zip_libraries.
Follow the instructions at https://www.arduino.cc/en/guide/libraries to
install it. Ensure that the patch files found at
https://github.com/ambiot/ambd_arduino/tree/master/Ameba_misc/ are also
installed.

In the Arduino IDE library manager, install the Arduino_LSM9DS1 library.
This example has been tested with version 1.1.0 of the LSM9DS1 library.

Open the example, "Files" -> "Examples" -> “TensorFlowLite_Ameba” ->
“magic_wand”.

.. image:: ../media/MagicWand/image2.jpeg
   :width: 556
   :height: 830
   :scale: 100 %

Upload the code and press the reset button on Ameba once the upload is
finished.

Holding the accelerometer steady, with the positive x-axis pointing to
the right and the positive z-axis pointing upwards, move it following
the shapes as shown, moving it in a smooth motion over 1 to 2 seconds,
avoiding any sharp movements.

.. image:: ../media/MagicWand/image3.jpeg
   :width: 777
   :height: 337
   :scale: 100 %

If the movement is recognised by the Tensorflow Lite model, you should
see the same shape output to the Arduino serial monitor. Different LEDs
will light up corresponding to different recognized gestures.

Note that the wing shape is easy to achieve, while the slope and ring
shapes tend to be harder to get right.

.. image:: ../media/MagicWand/image4.jpeg
   :width: 639
   :height: 458
   :scale: 100 %

**Code Reference**


More information on TensorFlow Lite for Microcontrollers can be found
at: https://www.tensorflow.org/lite/microcontrollers
