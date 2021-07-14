[RTL8722CSM/RTL8722DM] TensorFlow Lite - Hello World
======================================================
**Materials**


-  Ameba D [RTL8722 CSM/DM] x 1

-  LED x 1

**Example**


**Procedure**


Download the Ameba customized version of TensorFlow Lite for
Microcontrollers library at
https://github.com/ambiot/ambd_arduino/tree/master/Arduino_zip_libraries.
Follow the instructions at https://www.arduino.cc/en/guide/libraries to
install it. Ensure that the patch files found at
https://github.com/ambiot/ambd_arduino/tree/master/Ameba_misc/ are also
installed.

Open the example, "Files" -> "Examples" -> "TensorFlowLite_Ameba" ->
"hello_world".

.. image:: ../media/HelloWorld/image1.png
   :width: 3.5in
   :height: 5.23034in

Upload the code and press the reset button on Ameba once the upload is
finished.

Connect the LED to digital pin 10 and ground, ensuring that the polarity
is correct. You should see the LED fade in and out rapidly.

In the Arduino serial plotter, you can see the output value of the
Tensorflow model plotted as a graph, it should resemble a sine wave.

.. image:: ../media/HelloWorld/image2.png
   :width: 5.09375in
   :height: 3.66906in

**Code Reference**


More information on TensorFlow Lite for Microcontrollers can be found
at: https://www.tensorflow.org/lite/microcontrollers
