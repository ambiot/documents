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

**AMB21 / AMB22** Wiring Diagram:

Connect the accelerometer and LEDs to the AMB21/AMB22 following the diagram.

.. image:: /media/ambd_arduino/TFL_MagicWand/image1.jpeg
   :align: center
   :width: 1027
   :height: 630

**AMB23** Wiring Diagram:
For AMB23, we will use the onboard LEDs on the board itself.
  
.. image:: /media/ambd_arduino/TFL_MagicWand/image1-1.jpeg
   :align: center
   :width: 971
   :height: 658

**BW16** Wiring Diagram:
For BW16, we will use the onboard LEDs on the board itself.

.. image:: /media/ambd_arduino/TFL_MagicWand/image1-2.jpeg
   :align: center
   :width: 859
   :height: 690

**BW16-TypeC** Wiring Diagram:
For BW16-TypeC, we will use the onboard LEDs on the board itself.

.. image:: /media/ambd_arduino/TFL_MagicWand/image1-3.png
   :align: center
   :width: 980
   :height: 734
   :scale: 95 %

Download the Ameba customized version of TensorFlow Lite for
Microcontrollers library at
https://github.com/ambiot/tree/master/Arduino_zip_libraries.

Follow the instructions at https://docs.arduino.cc/software/ide-v1/tutorials/installing-libraries to
install it. 

Ensure that the patch files found at
https://github.com/ambiot/tree/master/Ameba_misc/ are also
installed.

In the Arduino IDE library manager, install the Arduino_LSM9DS1 library. This example has been tested with version 1.1.0 of the LSM9DS1 library.


Open the example, ``"Files" → "Examples" → “TensorFlowLite_Ameba” →
“magic_wand”``.
  
.. image:: /media/ambd_arduino/TFL_MagicWand/image2.jpeg
   :align: center
   :width: 556
   :height: 830
   :scale: 84 %

Upload the code and press the reset button on Ameba once the upload is
finished.

Holding the accelerometer steady, with the positive x-axis pointing to
the right and the positive z-axis pointing upwards, move it following
the shapes as shown, moving it in a smooth motion over 1 to 2 seconds,
avoiding any sharp movements.
  
.. image:: /media/ambd_arduino/TFL_MagicWand/image3.jpeg
   :align: center
   :width: 777
   :height: 337

If the movement is recognised by the Tensorflow Lite model, you should
see the same shape output to the Arduino serial monitor. Different LEDs
will light up corresponding to different recognized gestures.
Note that the wing shape is easy to achieve, while the slope and ring
shapes tend to be harder to get right.

.. image:: /media/ambd_arduino/TFL_MagicWand/image4.jpeg
   :align: center
   :width: 639
   :height: 458

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Code Reference**
:raw-html:`</p>`

More information on TensorFlow Lite for Microcontrollers can be found
at: https://www.tensorflow.org/lite/microcontrollers
