##########################################################################
Audio Codec - Input FFT
##########################################################################

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Materials**
:raw-html:`</p>`

  - AmebaD [RTL8722DM / RTL8722CSM / RTL8722DM MINI] x 1
  - Analog microphone x 1 (e.g., Adafruit 1063 / 1064)

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Example**
:raw-html:`</p>`

| **Introduction**
| This example shows how to use the FFT class to calculate the fast
  Fourier transform of the audio signal recorded by the microphone.

| **Procedure**
| Connect the microphone to the RTL8722 board following the diagram.

| **RTL8722DM / RTL8722CSM** Wiring Diagram:
   
   |1|

| **RTL8722DM MINI** Wiring Diagram:
| As RTL8722DM_MINI have a built in microphone on the board, there 
  is no need for any external microphone.

Next, open the example, ``"Files" -> "Examples" -> “AmebaAudioCodec” ->
“InputFFT”``.

   |2|

| Upload the code and press the reset button on Ameba once the upload is
  finished.
| Open the serial monitor and change the baud rate to 2000000. A stream of
  FFT results of audio samples will be displayed. Try playing music or use
  a smartphone app to generate a sine wave into the microphone, and you
  should be able to see the FFT output change.
  
  |3|


.. |1| image:: /ambd_arduino/media/Audio_Codec_InputFFT/image1.png
   :width: 467
   :height: 466
   :scale: 100 %
.. |2| image:: /ambd_arduino/media/Audio_Codec_InputFFT/image2.png
   :width: 608
   :height: 830
   :scale: 100 %
.. |3| image:: /ambd_arduino/media/Audio_Codec_InputFFT/image3.png
   :width: 1206
   :height: 578
   :scale: 50 %