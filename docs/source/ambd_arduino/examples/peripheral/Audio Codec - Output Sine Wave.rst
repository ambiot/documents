##########################################################################
Audio Codec – Output Sine Wave
##########################################################################

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Materials**
:raw-html:`</p>`

   - AmebaD [RTL8722DM / RTL8722CSM / RTL8722DM MINI] x 1
   - 3.5mm TRS/TRRS breakout x 1 (e.g., Adafruit 2791 / Sparkfun 11570)

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Example**
:raw-html:`</p>`

**Procedure**

| **RTL8722DM / RTL8722CSM** Wiring Diagram:
| Connect the 3.5mm connector to the RTL8722 board following the diagram.

   |1|

| **RTL8722DM MINI** Wiring Diagram:
| As RTL8722DM_MINI have a built in microphone on the board, there 
  is no need for any external microphone.

Open the example, ``"Files" -> "Examples" -> “AmebaAudioCodec” ->
“OutputSineWave”``.

   |2|

| Upload the code and press the reset button on Ameba once the upload is
  finished.
| Connect a pair of wired headphones to the 3.5mm audio jack and you
  should hear the generate single sinusoidal tone.

.. |1| image:: /ambd_arduino/media/Audio_Codec_OutputSineWave/image1.png
   :width: 474
   :height: 458
   :scale: 100 %
.. |2| image:: /ambd_arduino/media/Audio_Codec_OutputSineWave/image2.png
   :width: 608
   :height: 830
   :scale: 100 %