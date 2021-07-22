[RTL8722CSM/RTL8722DM] Audio Codec – Input FFT
=================================================

**Materials**


-  Ameba D [RTL8722 CSM/DM] x 1

-  Analog microphone x 1 (e.g., Adafruit 1063 / 1064)

**Example**


**Introduction**


This example shows how to use the FFT class to calculate the fast
Fourier transform of the audio signal recorded by the microphone.

**Procedure**


Connect the microphone to the RTL8722 board following the diagram.

.. image:: ../media/InputFFT/image1.png
   :width: 467
   :height: 466
   :scale: 100 %

Open the example, "Files" -> "Examples" -> “AmebaAudioCodec” ->
“InputFFT”.

.. image:: ../media/InputFFT/image2.png
   :width: 608
   :height: 830
   :scale: 100 %

Upload the code and press the reset button on Ameba once the upload is
finished.

Open the serial monitor and change the baud rate to 2000000. A stream of
FFT results of audio samples will be displayed. Try playing music or use
a smartphone app to generate a sine wave into the microphone, and you
should be able to see the FFT output change.

.. image:: ../media/InputFFT/image3.png
   :width: 1206
   :height: 578
   :scale: 100 %
