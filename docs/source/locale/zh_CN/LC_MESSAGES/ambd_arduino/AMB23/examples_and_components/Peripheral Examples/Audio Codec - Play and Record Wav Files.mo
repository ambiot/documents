��          �               L      M     n  "   �     �  R   �  .    )   @  �   j  �   �  �   �  K   �     �  f   �  h   P  d   �  �     P   �  �     �  �     %
     E
  !   c
  
   �
  W   �
    �
  (      �   )  �   �  �   �  4   N     �  a   �  c   �  _   U  �   �  @   O  z   �   **Example 01 - PlaybackWavFile** **Example 02 - RecordWavFile** **Example 03 - RecordPlaybackWav** **Procedure** :raw-html:`<p style="color:#E67E22; font-size:24px">` **Example** :raw-html:`</p>` As AMB23 have a built in microphone on the board, there is no need for any external microphone. Copy a sample wav file into the MicroSD card for demo. (In this example, the sample name is “Test_Audio_48khz_16bit_stereo.wav”. ) Then insert the MicroSD card into the adapter at the back of the board. Audio Codec – Play and Record Wav Files Define a GPIO/button(Input high to active) for ``RECORDBTN``. Define the ``filename[]`` for name of the storge wav file. In this example the name is Define a GPIO/button(Input high to active) for ``RECORDBTN``. Define the ``filename[]`` for name of the storge wav file. In this example the name is “Test_Recording_48khz_16bit_mono.wav”. Input high to ``RECORDBTN``, then record voice by on board mic. When input is low the record stops. The recorded voice will be stored in “Test_Recording_48khz_16bit_mono.wav” that located at MicroSD card. Insert earphone/speaker into the onboard jack for playing the sample sound. MicroSD card Open the example, ``“Files” -> “Examples” -> “AmebaAudioCodec” -> “PlaybackWavFile”``. Open the example, ``“Files” -> “Examples” -> “AmebaAudioCodec” -> “RecordPlaybackWav”``. Open the example, ``“Files” -> “Examples” -> “AmebaAudioCodec” -> “RecordWavFile”``. This example is a combination of **Example01** and **Example02**. You can record by **Example02** then play it by jack as the method of **Example01**. Upload the code and press the reset button on Ameba once the upload is finished. Upload the code and press the reset button on Ameba once the upload is finished. Insert earphone/speaker into the onboard jack for playing the sample sound. Project-Id-Version: AmebaDocs EPUB3
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2022-03-08 02:53+0000
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: zh_CN
Language-Team: zh_CN <LL@li.org>
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.10.1
 **范例 01 - PlaybackWavFile** **范例 02 - RecordWavFile** **范例 03 - RecordPlaybackWav** **流程** :raw-html:`<p style="color:#E67E22; font-size:24px">` **范例说明** :raw-html:`</p>` 由于 AMB23 板上有一个内建麦克风，因此不需要任何外部麦克风。将范例 wav 文件复制到 MicroSD 卡中进行示范。（在此范例中，范例名称为“Test_Audio_48khz_16bit_stereo.wav”。）然后将 MicroSD 卡插入板子背面的插槽中。 Audio Codec - 播放与录制 wav 档案 为 ``RECORDBTN`` 定义一个GPIO/按钮（高准位触发）。定义 ``filename[]`` 作为储存 wav 文件的名称。在此范例中，名称为 为 ``RECORDBTN`` 定义一个GPIO/按钮（高准位触发）。定义 ``filename[]`` 作为储存 wav 文件的名称。在此范例中，名称为 “Test_Recording_48khz_16bit_mono.wav”。 高准位触发 ``RECORDBTN``，然后通过板载麦克风录制语音。低准位触发来停止录制。录制完的语音将储存在 MicroSD 卡上的 “Test_Recording_48khz_16bit_mono.wav”中。 将耳机/喇叭插入板载插孔以播放声音。 MicroSD 卡 打开范例，“Files” -> “Examples” -> “AmebaAudioCodec” -> “PlaybackWavFile”。 打开范例，“Files” -> “Examples” -> “AmebaAudioCodec” -> “RecordPlaybackWav”。 打开范例，“Files” -> “Examples” -> “AmebaAudioCodec” -> “RecordWavFile”。 此范例是 **Example01** 和 **Example02** 的组合。您可以按 **Example02** 录制，然后按 **Example01** 的方法通过插孔播放声音。 上传代码并在上传完成后按 Ameba 上的重置按钮。 上传代码并在上传完成后按 Ameba 上的重置按钮。将耳机/喇叭插入板载插孔以播放范例声音。 