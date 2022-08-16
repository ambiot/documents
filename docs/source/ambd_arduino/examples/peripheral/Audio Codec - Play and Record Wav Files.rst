##################################################################
Audio Codec – Play and Record Wav Files
##################################################################

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Materials**
:raw-html:`</p>`

   - AmebaD [AMB23] x 1
   - MicroSD card

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Example**
:raw-html:`</p>`

**Procedure**

As AMB23 have a built in microphone on the board, there is no need for any external microphone. Copy a sample wav file into the MicroSD card for demo. (In this example, the sample name is “Test_Audio_48khz_16bit_stereo.wav”. ) Then insert the MicroSD card into the adapter at the back of the board.

  |image1|

**Example 01 - PlaybackWavFile**

| Open the example, ``“Files” → “Examples” → “AmebaAudioCodec” → “PlaybackWavFile”``.

  |image2|

Upload the code and press the reset button on Ameba once the upload is finished.
Insert earphone/speaker into the onboard jack for playing the sample sound.

**Example 02 - RecordWavFile**

| Open the example, ``“Files” → “Examples” → “AmebaAudioCodec” → “RecordWavFile”``.

  |image3|

| Define a GPIO/button(Input high to active) for ``RECORDBTN``. Define the ``filename[]`` for name of the storge wav file. In this example the name is “Test_Recording_48khz_16bit_mono.wav”.
| Upload the code and press the reset button on Ameba once the upload is finished.
| Input high to ``RECORDBTN``, then record voice by on board mic. When input is low the record stops. The recorded voice will be stored in “Test_Recording_48khz_16bit_mono.wav” that located at MicroSD card.

**Example 03 - RecordPlaybackWav**

| Open the example, ``“Files” → “Examples” → “AmebaAudioCodec” → “RecordPlaybackWav”``.

  |image4|

| This example is a combination of **Example01** and **Example02**. You can record by **Example02** then play it by jack as the method of **Example01**.

| Define a GPIO/button(Input high to active) for ``RECORDBTN``. Define the ``filename[]`` for name of the storge wav file. In this example the name is 
| “Test_Recording_48khz_16bit_mono.wav”.

| Upload the code and press the reset button on Ameba once the upload is finished.

| Input high to ``RECORDBTN``, then record voice by on board mic. When input is low the record stops. The recorded voice will be stored in 
  “Test_Recording_48khz_16bit_mono.wav” that located at MicroSD card.

| Insert earphone/speaker into the onboard jack for playing the sample sound.

.. |image1| image:: /media/ambd_arduino/Audio_Codec_Play_and_Record_Wav_Files/image1.png
   :width: 2103
   :height: 2630
   :scale: 20 %
.. |image2| image:: /media/ambd_arduino/Audio_Codec_Play_and_Record_Wav_Files/image2.png
   :width: 560
   :height: 453
   :scale: 100 %
.. |image3| image:: /media/ambd_arduino/Audio_Codec_Play_and_Record_Wav_Files/image3.png
   :width: 531
   :height: 402
   :scale: 100 %
.. |image4| image:: /media/ambd_arduino/Audio_Codec_Play_and_Record_Wav_Files/image4.png
   :width: 513
   :height: 540
   :scale: 100 %