��          �               <  Y   =  R   �  V   �  e   A  �   �  *   L  +   w  =   �  9   �  ;         W  ]   x  I   �  `      �   �  i   J  u   �  �  *  Z   �  W   	  W   _	  I   �	  �   
     �
  .   �
  Z   �
  3   T  P   �  +   �  T     =   Z  X   �  �   �  X   �  K   �   :raw-html:`<p style="color:#E67E22; font-size:24px">` **Code Reference** :raw-html:`</p>` :raw-html:`<p style="color:#E67E22; font-size:24px">` **Example** :raw-html:`</p>` :raw-html:`<p style="color:#E67E22; font-size:24px">` **Preparation** :raw-html:`</p>` After 8 seconds, you can input to the Serial Monitor the string you would like to display on the LCD. An LCD display can be equipped with an additional processing chip to process the data. The processing chip can connect to a microcontroller using the I2C interface. And the setting parameters are as follows: Call ``backlight()`` to light the screen, Call ``setCursor(0, 0)`` to set the position of the cursor. Compile and upload to Ameba, then press the reset button. For example, we enter “123456789” and press “Send”: I2C - Display Data On LCD Screen LCD inherits the Print class, so we can use ``lcd.print()`` to output string on the screen. Normally there are many pins on an LCD display, as shown in below figure. Open the example in ``“File” -> “Examples” -> “AmebaWire” -> “LCD_HelloWorld”``. The first parameter 0x27 is the address of I2C. Each of the following 8 parameters represents the meaning of each bit in a byte, i.e., En is bit 2, Rw is bit 1, Rs is bit 0, d4 is bit 4, and so forth. The required settings of each model of LCD might be different, the constructor we use in this example is: Then you can see “Hello World” in the first line, and “Ameba” in the second line displayed on the LCD screen. Project-Id-Version: AmebaDocs EPUB3
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
 :raw-html:`<p style="color:#E67E22; font-size:24px">` **程式碼説明** :raw-html:`</p>` :raw-html:`<p style="color:#E67E22; font-size:24px">` **範例説明** :raw-html:`</p>` :raw-html:`<p style="color:#E67E22; font-size:24px">` **材料準備** :raw-html:`</p>` 等8秒之後出現提示可以從Serial Monitor輸入要顯示的字串: 直接控制LCD的話會用掉許多pin, 在資料處理上也很麻煩, 所以一般LCD會有額外的控制晶片幫忙處理, 並且使用I2C介面控制這塊控制晶片。 設定的內容如下: 呼叫 backlight() 打開背光使螢幕亮起 呼叫 setCursor(0, 0) 指定游標的位置, 第一個參數是行, 第二個參數是列 編譯並上傳到Ameba, 完成後按Reset按鈕。 在Serial Monitor 輸入“123456789” 之後按下“Send”, 顯示在LCD上: I2C - 使用 LCD 並在 LCD 上顯示資料 LCD 繼承了Print class, 所以可以使用 lcd.print() 來輸出要顯示的字串 一般LCD有許多pin腳, 以手上這片LCD為例有16個pin 打開範例, “File” -> “Examples” -> “AmebaWire” -> “LCD_HelloWorld”。 其中I2C的address是0x27, 後面八個參數代表1個byte裡, 每個bit代表的意義,其中En為Bit 2, Rw為Bit 1, Rs為Bit 0, d4為bit 4, 以此類 每款LCD的I2C控制板需要設定的內容都不一樣,範例裡使用的constructor: 範例裡, LCD第一行出現“Hello World”, 第二行出現“Ameba”: 