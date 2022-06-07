��          �               �  t   �    R  %   d  *   �  
   �  Y   �  R     T   m  d   �  l   '  N   �  �   �  `   r  #   �  �   �  �   �  Y   E  F   �  ;   �  N   "	  }   q	  \   �	  A   L
  Y   �
  �   �
  \   �  R   �  �  K  ]   �    +     I  "   h  
   �  Z   �  W   �  W   I  6   �  x   �  N   Q  O   �  v   �  "   g  �   �  Z   ]  N   �  I     X   Q  k   �  �     O     Y   R  T   �  �     w   �  Y   6   (NOTE: If the message does not show in the Serial Monitor of Ameba, please close and open the serial monitor again.) (Note: If you do not know which port the Ameba development board is connected to, please find it in the Device Manager of Windows first. Ameba is connected as “mbed Serial Port”. For example, if you find mbed Serial Port (COM15) means Ameba is connected to port COM15.) **Setting up Ameba to be I2C Master** **Setting up Arduino Uno to be I2C Slave** **Wiring** :raw-html:`<p style="color:#E67E22; font-size:24px">` **Code Reference** :raw-html:`</p>` :raw-html:`<p style="color:#E67E22; font-size:24px">` **Example** :raw-html:`</p>` :raw-html:`<p style="color:#E67E22; font-size:24px">` **Materials** :raw-html:`</p>` Another important thing is that the GND pins of Arduino and Ameba should be connected to each other. As to this example, Ameba is the I2C master, and receives data from the Arduino UNO, which is the I2C slave. Click “Sketch” -> “Upload” to compile and upload the example to Ameba. First use ``Wire.begin()`` / ``Wire.begin(address)`` to join the I2C bus as a master or slave, in the Master case the address is not required. First, select Arduino in the Arduino IDE in ``“Tools” -> “Board” -> “Arduino Uno”``: I2C - Receive Data from Arduino UNO In the previous example `“I2C – Communicate with Arduino UNO via I2C”  <https://www.amebaiot.com/amebad-arduino-i2c-1>`__, Ameba, the I2C master, transmits data to the Arduino UNO, the I2C slave. Next, open another window of Arduino IDE, make sure to choose your Ameba development board in the IDE: “Tools” -> “Board” Next, the Master uses ``Wire.requestFrom()`` to specify from which Slave to request data. Next, we will observe the data receive by Ameba in the Serial Monitor. Open ``“Examples” -> “Wire” -> “slave_sender”`` Open ``“File” -> “Examples” -> “AmebaWire” -> “MasterReader”`` Open the Arduino IDE window of the Ameba, go to “Tools” -> “Serial Monitor” to display the messages printed by Ameba. Press the reset button on Arduino Uno, Arduino Uno now waits for connection from I2C master. The Arduino example uses A4 as the I2C SDA and A5 as the I2C SCL. Then click “Sketch” -> “Upload” to compile and upload the example to Arduino Uno. Then press the reset button on Ameba, Ameba will start to receive messages from Arduino Uno. And you can see the “hello ” message printed every half second in serial monitor. We select the port in “Tools” -> “Port” -> “COM15” (the port connected to Ameba) You can find detailed information of this example in the documentation of Arduino: Project-Id-Version: AmebaDocs EPUB3
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2022-02-18 03:07+0000
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: zh_TW
Language-Team: zh_TW <LL@li.org>
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.10.1
 (NOTE: 如果發現Ameba 的Serial Monitor沒出現訊息，請試試看重開Serial Monitor) 首先我們要找到Ameba的Serial Port, 點Windows的[開始] 按鈕、[控制台]、[系統及安全性]，然後在[系統]下方按一下[裝置管理員]，開啟[裝置管理員]。會看到Ports那邊有個mbed Serial Port(COM15), 這邊 COM15 就是就是 Ameba 的Port Number **準備Ameba 為 I2C Master** **準備Arduino Uno為 I2C Slave** **接線** :raw-html:`<p style="color:#E67E22; font-size:24px">` **程式碼説明** :raw-html:`</p>` :raw-html:`<p style="color:#E67E22; font-size:24px">` **範例説明** :raw-html:`</p>` :raw-html:`<p style="color:#E67E22; font-size:24px">` **材料準備** :raw-html:`</p>` 另外很重要的是，兩塊板子的GND要互接。 在這個範例裡, Ameba 一樣是I2C master, Arduino UNO 是I2C slave, 但是改成資料從Arudino UNO 傳給Ameba。 然後點選 “Sketch” -> “Upload” 將程式編譯並上傳到 Ameba。 首先Wire.begin()會先設定address, 如果是Master可以不用設定address 首先我們先準備Arduino，先將Arduino IDE選成Arduino, “Tools” -> “Board” -> “Arduino/Genuino Uno” I2C - 從 Arduino UNO 接收資料 在前個例子 `I2C – 利用I2C讓Ameba與Arduino UNO溝通 <https://www.amebaiot.com/amebad-arduino-i2c-1>`__ 裡, Ameba 是I2C master, 而Arduino UNO是I2C slave，並且讓Ameba 送資料給Arduino UNO。 我們額外再開一個Arduino IDE，確定板子是 Ameba, “Tools” -> “Board” -> 接著Master使用Wire.requestFrom()來設定要從哪一個Slave接收資料: 接著我們要從Serial Monitor視窗來看Ameba印出讀到的數據。 接著打開 Slave Sender 的範例，”Examples” -> “Wire” -> “slave_sender” 然後打開 Master Reader 的範例, “File” -> “Examples” -> “AmebaWire” -> “MasterReader” 每當我們要從Arduino IDE看Ameba印出的訊息, 都要設定成正確的port。開啟Serial Monitor, “Tools” -> “Serial Monitor”, 會出現Serial Monitor的視窗，這個視窗可以讓你看到Ameba印出來的訊息。 接著按下Arduino Uno的Reset按鈕，讓Arduino Uno等待I2C master連接。 Arduino的範例裡，使用A4當作I2C SDA, A5為I2C SCL。這些接腳與Ameba一樣。 然後點選 “Sketch” -> “Upload” 將程式編譯並上傳到 Arduino Uno。 再按下Ameba的Reset按鈕，讓Ameba開始接收從Arduino Uno傳過來的訊息。這時候會看到Serial Monitor每隔0.5秒出現”hello ” 的訊息，這樣就代表成功了。 接著我們將Arduino的Port選到COM15, 它在 “Tools” -> “Port” -> COM15 (Ameba目前的Mbed Serial Port)。 Ameba使用同樣的Arduino範例，Ardunio官方網站的範例說明可以參考這裡: 