��          �                 !        /     I  Y   b  R   �  T     �   d  v   &  v   �  b     6   w     �  P   �  }    �  �          3     J  Z   `  W   �  W   	  �   k	  `   
  j   v
  �   �
  (   �     �  @   �  7  #   **AMB21 / AMB22** Wiring Diagram: **AMB23** Wiring Diagram: **BW16** Wiring Diagram: :raw-html:`<p style="color:#E67E22; font-size:24px">` **Code Reference** :raw-html:`</p>` :raw-html:`<p style="color:#E67E22; font-size:24px">` **Example** :raw-html:`</p>` :raw-html:`<p style="color:#E67E22; font-size:24px">` **Materials** :raw-html:`</p>` Next, using a terminal program, such as TeraTerm or PuTTY, open a serial port and configure it according to the settings. Make sure the serial port number corresponds to the USB to TTL adapter. Once the serial port is open, type in the terminal and press the enter key, and you will see the corresponding output. Open the example in ``“File” -> “Examples” -> “AmebaSoftwareSerial” -> “SoftwareSerial_Irq_Callback”`` This example shows how to set a callback function for UART communication to process the UART data. UART – Set Callback Function For UART Communications USB to TTL Adapter x 1 Upload the code and press the reset button on Ameba once the upload is finished. ``mySerial.setAvailableCallback(mySerialCallback);`` is used to set the function mySerialCallback as a callback function for software serial. When a new character is received, the callback function checks if the character corresponds to the enter key, and releases the semaphore if it is true, which in turn allows the main loop to print out all the previously received characters. Project-Id-Version: AmebaDocs EPUB3
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2022-02-18 03:07+0000
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: zh_CN
Language-Team: zh_CN <LL@li.org>
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.10.1
 **AMB21 / AMB22** 接线图: **AMB23** 接线图： **BW16** 接线图： :raw-html:`<p style="color:#E67E22; font-size:24px">` **程式码说明** :raw-html:`</p>` :raw-html:`<p style="color:#E67E22; font-size:24px">` **范例准备** :raw-html:`</p>` :raw-html:`<p style="color:#E67E22; font-size:24px">` **材料准备** :raw-html:`</p>` 接下来，使用串口终端程序，如TeraTerm或PuTTY，打开一个串口，并根据设置对其进行配置。确保串行端口号对应于USB到TTL适配器。 当串行口打开后，在串口终端中输入并按回车键，就会看到相应的输出。 打开示例”File” -> “Examples” -> “AmebaSoftwareSerial” -> “SoftwareSerial_Irq_Callback” 这个例子展示了如何为UART通信设置一个回调函数来处理UART数据。本例需要一个USB到TTL的适配器。确保已安装驱动程序并如图将其连接到Ameba板上。 UART - 为 UART 通信设置回调函救 USB-TTL 适配器 x 1 上传代码并在上传完成后按下Ameba上的reset按钮。 mySerial.setAvailableCallback (mySerialCallback); 用于将函数mySerialCallback设置为软件串行的回调函数。当接收到新字符时，回调函数检查该字符是否与enter键相对应，如果返回值为真，则释放信号标，从而允许主循环打印出之前接收到的所有字符。 