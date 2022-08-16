##########################################################################
Audio Codec - Input FFT
##########################################################################

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Materials**
:raw-html:`</p>`

   - AmebaD [AMB21 / AMB22 / AMB23] x 1
   - Analog microphone x 1 (e.g., Adafruit 1063 / 1064)

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Example**
:raw-html:`</p>`

| **Introduction**
| This example shows how to use the FFT class to calculate the fast
  Fourier transform of the audio signal recorded by the microphone.

| **Procedure**
| Connect the microphone to the RTL8722 board following the diagram.

| **AMB21 / AMB22** Wiring Diagram:
   
   |1|

| **AMB23** Wiring Diagram:
| As AMB23 have a built in microphone on the board, there 
  is no need for any external microphone.

Next, open the example, ``"Files" → "Examples" → “AmebaAudioCodec” →
“InputFFT”``.

   |2|

| Upload the code and press the reset button on Ameba once the upload is
  finished.
| Open the serial monitor and change the baud rate to 2000000. A stream of
  FFT results of audio samples will be displayed. Try playing music or use
  a smartphone app to generate a sine wave into the microphone, and you
  should be able to see the FFT output change.
  
   |3|


.. |1| image:: /media/ambd_arduino/Audio_Codec_Input_FFT/image1.png
   :width: 467
   :height: 466
   :scale: 100 %
.. |2| image:: /media/ambd_arduino/Audio_Codec_Input_FFT/image2.png
   :width: 608
   :height: 830
   :scale: 100 %
.. |3| image:: /media/ambd_arduino/Audio_Codec_Input_FFT/image3.png
   :width: 1206
   :height: 578
   :scale: 50 %