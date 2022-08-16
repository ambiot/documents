##########################################################################
TensorFlow Lite - Micro Speech
##########################################################################

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Preparation**
:raw-html:`</p>`

 - AmebaD [AMB21 / AMB22 / AMB23] x 1 
 - Adafruit PDM MEMS microphone
 - LED x 4

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Example**
:raw-html:`</p>`

**Procedure**

| **AMB21 / AMB22** Wiring Diagram:
| Connect the microphone and LEDs to the AMB21 following the
  diagram.
  
  |1|

| **AMB23** Wiring Diagram:
| As AMB23 have a built in microphone on the board, 
  there is no need for any external microphone.
  For the LEDs, we will only connect two LEDs and then use the two onboard LEDs (Blue and Green).

  |1-1|

Download the Ameba customized version of TensorFlow Lite for
Microcontrollers library at
https://github.com/ambiot/tree/master/Arduino_zip_libraries.

Follow the instructions at https://docs.arduino.cc/software/ide-v1/tutorials/installing-libraries to
install it. 

Ensure that the patch files found at
https://github.com/ambiot/tree/master/Ameba_misc/ are also
installed.

Open the example, ``"Files" → "Examples" → “TensorFlowLite_Ameba” →
“micro_speech”``.

  |2|

| Upload the code and press the reset button on Ameba once the upload is
  finished.
| Once it is running, you should see one of the LEDs flashing, indicating
  that it is processing audio. Saying the word "yes" will cause the green
  LED to light up. Saying the word “no” will cause the red LED to light
  up. If the word is not recognized, the blue LED will to light up.
| The inference results are also output to the Arduino serial monitor,
  which appear as follows:
  
  |3|

If you are having trouble in getting the words recognized, here are some
tips:

   - Ensure that your surroundings are quiet with minimal noise.
   - Experiment with varying the distance of the microphone, starting with
     it at an arm’s length.
   - Experiment with different tones and volume when saying the words.
   - Depending on how you pronounce the words, the characteristics of the
     microphone used, getting one keyword recognized may be easier than
     the other.

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Code Reference**
:raw-html:`</p>`

More information on TensorFlow Lite for Microcontrollers can be found
at: https://www.tensorflow.org/lite/microcontrollers

.. |1| image:: /media/ambd_arduino/TFL_MicroSpeech/image1.jpeg
   :width: 619
   :height: 455
   :scale: 80 %
.. |1-1| image:: /media/ambd_arduino/TFL_MicroSpeech/image1-1.jpeg
   :width: 869
   :height: 765
   :scale: 50 %
.. |2| image:: /media/ambd_arduino/TFL_MicroSpeech/image2.jpeg
   :width: 451
   :height: 674
   :scale: 100 %
.. |3| image:: /media/ambd_arduino/TFL_MicroSpeech/image3.jpeg
   :width: 697
   :height: 379
   :scale: 100 %