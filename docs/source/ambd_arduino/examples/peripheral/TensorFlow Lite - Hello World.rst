###################################
TensorFlow Lite - Hello World
###################################

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Materials**
:raw-html:`</p>`

  - AmebaD [AMB21 / AMB22 / AMB23 / BW16] x 1
  - LED x 1

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Example**
:raw-html:`</p>`

**Procedure**

Download the Ameba customized version of TensorFlow Lite for
Microcontrollers library at
https://github.com/ambiot/tree/master/Arduino_zip_libraries.

Follow the instructions at https://docs.arduino.cc/software/ide-v1/tutorials/installing-libraries to
install it. 

Ensure that the patch files found at
https://github.com/ambiot/tree/master/Ameba_misc/ are also
installed.

Open the example, ``"Files" → "Examples" → “TensorFlowLite_Ameba” →
“hello_world”``.

  |1|


| Upload the code and press the reset button on Ameba once the upload is
  finished.
| Connect the LED to digital pin 10 and ground, ensuring that the polarity
  is correct. You should see the LED fade in and out rapidly.
| In the Arduino serial plotter, you can see the output value of the
  Tensorflow model plotted as a graph, it should resemble a sine wave.

  |2|

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Code Reference**
:raw-html:`</p>`

More information on TensorFlow Lite for Microcontrollers can be found
at: https://www.tensorflow.org/lite/microcontrollers

.. |1| image:: /media/ambd_arduino/TFL_HelloWorld/image1.png
   :width: 556
   :height: 830
   :scale: 70 %
.. |2| image:: /media/ambd_arduino/TFL_HelloWorld/image2.png
   :width: 817
   :height: 586
   :scale: 60 %