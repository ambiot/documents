##########################################################################
TensorFlow Lite - Person Detection
##########################################################################

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Materials**
:raw-html:`</p>`

  - AmebaD [RTL8722DM / RTL8722CSM / RTL8722DM MINI] x 1
  - Arducam Mini 2MP Plus OV2640 SPI Camera Module x 1
  - LED x 3

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Example**
:raw-html:`</p>`

**Procedure**

| **RTL8722DM / RTL8722CSM** Wiring Diagram: 
| Connect the camera and LEDs to the RTL8722 board following the diagram.
  
  |1|

| **RTL8722DM MINI** Wiring Diagram:
  
  |1-1|

| Download the Ameba customized version of TensorFlow Lite for
  Microcontrollers library at
| https://github.com/ambiot/ambd_arduino/tree/master/Arduino_zip_libraries.
| Follow the instructions at https://www.arduino.cc/en/guide/libraries to
  install it. Ensure that the patch files found at
  https://github.com/ambiot/ambd_arduino/tree/master/Ameba_misc/ are also
  installed.
| You will also need to install the Ameba_ArduCAM library, found together
  with the TensorFlow Lite library.
| In the Arduino IDE library manager, install the JPEGDecoder library.
  This example has been tested with version 1.8.0 of the JPEGDecoder
  library.
| Once the library has installed, you will need to configure it to disable
  some optional components that are not compatible with the RTL8722DM.
  Open the following file:

  ``Arduino/libraries/JPEGDecoder/src/User_Config.h``

| Make sure that both ``#define LOAD_SD_LIBRARY`` and ``#define
  LOAD_SDFAT_LIBRARY`` are commented out, as shown in this excerpt from the
  file:

.. code-block:: c

   //#define LOAD_SD_LIBRARY // Default SD Card library
   //#define LOAD_SDFAT_LIBRARY // Use SdFat library instead, so SD Card SPI can be bit bashed

Open the example, ``"Files" -> "Examples" -> “TensorFlowLite_Ameba” ->
“person_detection”``.

  |2|

| Upload the code and press the reset button on Ameba once the upload is
  finished.
| Once it is running, you should see the blue LED flashing once every few
  seconds, indicating that it has finished processing an image. The red
  LED will light up if it determines that there is no person in the
  previous image captured, and the green LED will light up if it
  determines that there is a person.
| The inference results are also output to the Arduino serial monitor,
  which appear as follows:
  
  |3|

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Code Reference**
:raw-html:`</p>`

More information on TensorFlow Lite for Microcontrollers can be found
at: https://www.tensorflow.org/lite/microcontrollers

.. |1| image:: /ambd_arduino/media/TFL_PersonDetection/image1.png
   :width: 777
   :height: 467
   :scale: 80 %
.. |1-1| image:: /ambd_arduino/media/TFL_PersonDetection/image1-1.png
   :width: 1487
   :height: 714
   :scale: 50 %
.. |2| image:: /ambd_arduino/media/TFL_PersonDetection/image2.png
   :width: 556
   :height: 830
   :scale: 100 %
.. |3| image:: /ambd_arduino/media/TFL_PersonDetection/image3.png
   :width: 639
   :height: 477
   :scale: 100 %