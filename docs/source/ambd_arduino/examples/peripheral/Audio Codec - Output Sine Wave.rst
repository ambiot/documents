##########################################################################
Audio Codec – Output Sine Wave
##########################################################################

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Materials**
:raw-html:`</p>`

   - AmebaD [AMB21 / AMB22 / AMB23] x 1
   - 3.5mm TRS/TRRS breakout x 1 (e.g., Adafruit 2791 / Sparkfun 11570)

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Example**
:raw-html:`</p>`

**Procedure**

| **AMB21 / AMB22** Wiring Diagram:
| Connect the 3.5mm connector to the RTL8722 board following the diagram.

   |1|

| **AMB23** Wiring Diagram:
| As AMB23 have a built in microphone on the board, there 
  is no need for any external microphone.

Open the example, ``"Files" → "Examples" → “AmebaAudioCodec” →
“OutputSineWave”``.

   |2|

| Upload the code and press the reset button on Ameba once the upload is
  finished.
| Connect a pair of wired headphones to the 3.5mm audio jack and you
  should hear the generate single sinusoidal tone.

.. |1| image:: /media/ambd_arduino/Audio_Codec_OutputSineWave/image1.png
   :width: 474
   :height: 458
   :scale: 110 %
.. |2| image:: /media/ambd_arduino/Audio_Codec_OutputSineWave/image2.png
   :width: 608
   :height: 830
   :scale: 80 %