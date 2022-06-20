��    (      \              �     �     �  '   �  Y   �  R   ?  T   �  :   �  �  "  �   �  �   �     �  3   �  4   �  6     <   ?  %   |  $   �  F   �     	  4   *	  /   _	  W   �	  9   �	  >   !
  X   `
  2   �
  b  �
  (   O  )   x  (   �  �   �  )   ^  O  �  �   �  �   �     >  z  Y  +   �        �     
   �     �  &   �  Z   �  W   >  W   �  6   �  k  %  �   �  �   N     �  '     0   6  2   g  5   �  $   �  $   �  5        P  +   c  +   �  X   �  6     6   K  O   �  0   �  #    *   '  *   R  (   }  �   �     I     h  �   �  �   9      �   $  !  "   &"     I"   **Modulation** **NEC Features** 8-bit address and 8-bit command length. :raw-html:`<p style="color:#E67E22; font-size:24px">` **Code Reference** :raw-html:`</p>` :raw-html:`<p style="color:#E67E22; font-size:24px">` **Example** :raw-html:`</p>` :raw-html:`<p style="color:#E67E22; font-size:24px">` **Materials** :raw-html:`</p>` Address and command are transmitted twice for reliability. After opening the serial monitor on the IR Receiver side and press the reset buttons on two boards, the data “48” will be received every 3 seconds (due to the delays () function, not compulsory to wait). After decoding the signal from the receiving Pin D8 and transmitting Pin D9 with Logic Analyser and Pulse View (Figure 12), the result is also shown as “48” after decoding the receiving data with IR NEC Protocol. After successfully upload the sample code for IRSendRaw, you might need to upload the IRRecvNEC example for the 2nd board connected with IR Receiver from ``“File” -> “Examples” -> “AmebaIRDevice” -> “IRRecvNEC”``. After the connection is being set up correctly, we will move to the coding part for this example. First, make sure the correct Ameba development board is selected in Arduino IDE: “Tools” -> “Board”. Bit time of 1.125ms or 2.25ms. Extended mode available, doubling the address size. Figure 10: Pin configuration of IR Receiver and BW16 Figure 11: Example Location of IRSendRaw and IRRecvNEC Figure 12: Pulse View results from sending and receiving pin Figure 1: Grove – Infrared Receiver Figure 2: Grove – Infrared Emitter Figure 3: A typical IR transmission and reception setup implementation Figure 4: Modulation of NEC Figure 5: Sample of a Full NEC Data (in logic1 or 0) Figure 6: Sample of a Full NEC RAW Data (in us) Figure 7 and 8 shows the pin configuration of IR Emitter and Receiver with AMB21/AMB22. Figure 7: Pin configuration of IR Emitter and AMB21/AMB22 Figure 8: Pin configuration of the IR Receiver and AMB21/AMB22 Figure 9 and Figure 10 shows the pin configuration of IR Emitter and Receiver with BW16. Figure 9: Pin configuration of IR Emitter and BW16 For more details, please refer to SB-Projects’ topic of `IR Remote Control Theory <https://www.sbprojects.net/knowledge/ir/index.php>`__ to learn the theory of IR remote controls operation and a collection of IR protocol descriptions. In this example, we are going to use NEC (Now Renesas, also known as Japanese Format) as the transmission protocol. Grove – Infrared Emitter x1 (Figure 1) Grove – Infrared Receiver x1 (Figure 2) IR - Transmit IR NEC Raw Data And Decode In this example, we use two AmebaD to connect with an infrared (IR) Emitter and an IR Receiver separately to transmit and receive IR NEC Raw data. Mark: a specific period of sending pulses NEC protocol uses Pulse Distance Encoding of the bits for data communication (Figure 4). A logical “1” is represented by total duration of 2250us, with 560us of “marks” and (2250-560) us of “spaces”. While logical ”0” is represented by total duration of 1120us, with 560us “marks” and (1120-560) us of “spaces”. On the transmission side, the transmitter will send IR NEC raw data. The raw data can be seen as consecutive durations of “marks” and “spaces” (Figure 3) in microseconds (us). Open the “IRSendRAW” example in ``“File” -> “Examples” -> “AmebaIRDevice” -> “IRSendRAW”`` (Figure 11) and upload to 1st board connected with IR Emitter: Pulse distance modulation. Since a total number of 32\-bit data together with the header and the end\-bit will be transferred (Figure 5). If we separate the data in the time\-frame (in us), there will be ( 2 + 32 ) x 2 + 1 = 69 “marks” \/ “spaces” to be transmitted (Figure 6), which forms the raw NEC data we would like to transmit in our Arduino “\*.ino” file. This part of the code can be modified by users. Details of how to obtain raw data code for your remote devices, you may refer to `Ken Shirriff’s blog <http://www.righto.com/2009/08/multi-protocol-infrared-remote-library.html>`__, where it provides multiple libraries provided online. Space: a specific period of sending nothing The carrier frequency of 38kHz. Project-Id-Version: AmebaDocs EPUB3
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2022-06-20 07:41+0100
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: zh_CN
Language-Team: zh_CN <LL@li.org>
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.10.1
 **调节** **NEC 特色** 8位元地址和8位元命令长度。 :raw-html:`<p style="color:#E67E22; font-size:24px">` **程式码说明** :raw-html:`</p>` :raw-html:`<p style="color:#E67E22; font-size:24px">` **范例说明** :raw-html:`</p>` :raw-html:`<p style="color:#E67E22; font-size:24px">` **材料准备** :raw-html:`</p>` 为了确保可靠性，发送两次地址和命令。 打开IR接收器的serial monitor并按两块开发板上的重置按钮后，将每3秒接收一次数据“ 48”（由于具有delays（）函式，因此不必强制等待）。解码来自接收引脚D8的信号并使用逻辑分析仪和脉冲视图发送引脚D9（图十二）后，使用IR NEC协议解码接收数据后，结果也显示为“ 48”。 成功上传IRSendRaw的范例代码后，您可能需要从“File”->“Examples”->“ AmebaIRDevice”->“ IRRecvNEC”上传与IR接收器连接的第二块板的IRRecvNEC范例。 正确设置连接后，我们将介绍此范例的编码部分。首先，确保在Arduino IDE中选择了正确的Ameba开发板：“Tools”->“Board”。 Bit Time为1.125ms或2.25ms。 具扩展模式，地址长度加倍。 图十二: 红外接收器和BW16的引脚配置 图十一: IRSendRaw 与 IRRecvNEC 的范例位置 图十二: 发送和接收引脚的脉冲视图结果 图一: Grove – 红外线发射器 图二: Grove – 红外线接收器 图三: 典型的红外线发射和接收设置实作 图四: NEC 调节 图五: 完整NEC数据的样本（1或0） 图六: NEC 原始完整数据的样本(us) 图七和图八显示了AMB21 / AMB22板的红外发射器和接收器的引脚配置。 图七: 红外发射器和AMB21 / AMB22的引脚配置 图八: 红外接收器和AMB21 / AMB22的引脚配置 图九和图十显示了BW16板的红外发射器和接收器的引脚配置。 图十一: 红外发射器和BW16的引脚配置 有关更多详细信息，请参阅SB-Projects的主题 `IR Remote Control Theory <https://www.sbprojects.net/knowledge/ir/index.php>`__ 学习IR遥控器操作的理论以及IR协议说明。在此范例中，我们将使用NEC（Now Renesas，也称为日语格式）作为传输协议。 Grove – 红外线发射器 x1 (Figure 1) Grove – 红外线接收器 x1 (Figure 2) IR - 传输 IR NEC 原始数据并解码 在此范例中，我们使用两个Ameba RTL8722模块，它们分别与红外线（IR）发射器和IR接收器连接，以发送和接收IR NEC 原始数据。 Mark: 特定时间发送脉冲 NEC协议使用Pulse Distance Encoding进行数据通信（图四）。 “1”由2250us的总持续时间表示，其中560us的“marks”和（2250-560）us的“spaces”表示。“0”由总持续时间1120us表示，其中560us是“marks”，而（1120-560）us是“spaces”。 在发送端，发送器将发送IR NEC原始数据。原始数据可以看作是“marks”和“spaces”（图三）的连续持续时间（以微秒（us）为单位）。 在“File”->“Examples”->“ AmebaIRDevice”->“ IRSendRAW”中打开“ IRSendRAW”范例（图十一），并将其上传到与IR Emitter连接的第一块板上：  调节脉冲距离。 有关更多详细信息，请参阅SB-Projects的主题 `IR Remote Control Theory <https://www.sbprojects.net/knowledge/ir/index.php>`__ 学习IR遥控器操作的理论以及IR协议说明。 在此范例中，我们将使用NEC（Now Renesas，也称为日语格式）作为传输协议。 Space: 特定时间不发送脉冲 载波频率为38kHz。 