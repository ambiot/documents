��          �                         3     L  R   d  T   �  0    �   =    �  �   �  �   _  |    d     �   �  $   �  *   �    �     _
     p
     �
  W   �
  W   �
  .  >  s   m  �   �  �   �  �   p  �    \   �  �   /  $   �  +   �   **Ameba Preparation** **Computer Preparation** **Running the Example** :raw-html:`<p style="color:#E67E22; font-size:24px">` **Example** :raw-html:`</p>` :raw-html:`<p style="color:#E67E22; font-size:24px">` **Materials** :raw-html:`</p>` Follow the instructions there to install it. Next, from the “CalculateUdpReceiveDelay” Arduino example, copy the code from the bottom between “#if 0” and “#endif”, into a new text file, change the hostname to the IP address assigned to Ameba, and rename the file to “UdpReceiveDelay.cpp”. In the sample code, modify the highlighted section to enter the information required (ssid, password, key index) to connect to your WiFi network. Next, open a Cygwin terminal, change the working directory to the location of “UdpReceiveDelay.cpp”, and use the command “g++ UdpReceiveDelay.cpp -o UdpDelay” to compile the code. A file named “UdpDelay.exe” will be created in the same directory. On the computer, Cygwin will be required to compile the code to send the UDP packets. Cygwin can be downloaded from https://www.cygwin.com/ Open the “CalculateUdpReceiveDelay” example in ``“File” -> “Examples” -> “AmebaWiFi” -> “UDP_Calculation” -> “CalculateUdpReceiveDelay”``. Reset the Ameba, wait for the WiFi to connect, and check that the IP address remains the same. On the computer, run the UdpDelay.exe file, and the computer will begin to send packets to Ameba. Once 10000 packets have been received, Ameba will calculate the average delay and print out the result to the serial monitor. It may take up to a few minutes for 10000 packets to be sent. This example uses Ameba to receive UDP packets from a computer and calculates the UDP receive delay. Upload the code and press the reset button on Ameba once the upload is finished. Open the serial monitor in Arduino IDE and take note of the IP address assigned to Ameba. WiFi - Approximate UDP Receive Delay Windows computer connected to same network Project-Id-Version: AmebaDocs EPUB3
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2022-02-18 03:07+0000
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: zh_TW
Language-Team: zh_TW <LL@li.org>
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 **Ameba 準備** **電腦準備** 運行示例 :raw-html:`<p style="color:#E67E22; font-size:24px">` **範例説明** :raw-html:`</p>` :raw-html:`<p style="color:#E67E22; font-size:24px">` **材料準備** :raw-html:`</p>` 按照官網上的說明來安裝。接下來，從“CalculateUdpReceiveTimeout”的Arduino示例中，將示例最下面的“#if 0”和“#endif”之間的代碼複製到一個新的文本文件中，將hostname更改為Ameba的IP地址，並將該文件重命名為“UdpReceiveTimeout.cpp”。 在示例代碼中，修改高亮的部分，輸入連接WiFi網絡所需的信息(ssid、密碼、密鑰索引)。 接下來，打開Cygwin終端，將工作目錄更為“UdpReceiveTimeout.cpp”,的位置，並使用“g++ UdpReceiveTimeout.cpp -o UdpTimeout” 指令來編譯代碼。一個名為“UdpTimeout.exe” 的文件會在當前目錄中創建出來。 回到我們的電腦上，我們需要安裝Cygwin來編譯用來發送UDP數據包的代碼。 Cygwin可以從 https://www.cygwin.com/ 下載。 打開”CalculateUdpReceiveTimeout” 示例： “File” -> “Examples” -> “AmebaWiFi” -> ” UDP_Calculation ” -> “CalculateUdpReceiveTimeout”. 重置Ameba，等待WiFi連接，並檢查IP地址是否保持不變。在計算機上運行UdpTimeout.exe文件，計算機就會開始不斷地向Ameba發送數據包。超時值最初設置為1000ms。對於每個成功接收的包，Ameba都會降低超時值。Ameba必須在超時時間內接收下一個包，否則就會登記一個失敗的包並增加超時值。打開串行監視器，可以看到超時值最終會收斂到最小值。 本例使用Ameba從計算機接收UDP數據包，併計算出可允許的UDP接收超時。 上傳代碼並在上傳完成後按下Ameba上的reset按鈕。在Arduino IDE中打開串行監控器，並記下分配給Ameba的IP地址。 WiFi - 估算 UDP 數據接收延遲 Windows電腦（需連入同樣的網絡） 