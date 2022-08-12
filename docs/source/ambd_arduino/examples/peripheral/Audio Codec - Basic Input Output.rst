##########################################################################
Audio Codec – Basic Input Output
##########################################################################

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Materials**
:raw-html:`</p>`

   - AmebaD [AMB21 / AMB22 / AMB23] x 1
   - Potentiometer x 1
   - Analog microphone x 1 (e.g., Adafruit 1063 / 1064)
   - 3.5mm TRS/TRRS breakout x 1 (e.g., Adafruit 2791 / Sparkfun 11570)

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Example**
:raw-html:`</p>`

| **Procedure**
| Connect the potentiometer, microphone and 3.5mm connector to the RTL8722
  board following the diagram.

| **AMB21 / AMB22** Wiring Diagram:

   |1|

| **AMB23** Wiring Diagram:

   |1-1|

Open the example, ``"Files" → "Examples" → “AmebaAudioCodec” →
“Basic_Input_Output”``.

   |2|

Upload the code and press the reset button on Ameba once the upload is
finished.

Connect a pair of wired headphones to the 3.5mm audio jack, blow at the
microphone, and you should hear the sounds picked-up by the microphone
replayed in the headphones. Adjust the potentiometer and the output
volume will change as well. Note: if you are using a microphone with an
amplifier included, such as Adafruit 1063, the amplifier can lead to the
microphone picking up more noise.

.. |1| image:: /media/ambd_arduino/Audio_Codec_Basic_Input_Output/image1.png
   :width: 562
   :height: 468
   :scale: 100 %
.. |1-1| image:: /media/ambd_arduino/Audio_Codec_Basic_Input_Output/image1-1.png
   :width: 726
   :height: 783
   :scale: 50 %
.. |2| image:: /media/ambd_arduino/Audio_Codec_Basic_Input_Output/image2.png
   :width: 608
   :height: 830
   :scale: 100 %