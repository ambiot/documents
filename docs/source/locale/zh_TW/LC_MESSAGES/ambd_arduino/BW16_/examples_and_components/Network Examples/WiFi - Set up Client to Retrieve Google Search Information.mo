��          �               ,  Y   -  R   �  T   �  �   /  \   �  o   )  �   �  A   .  6   p  (   �  O   �  I      Q   j  `   �  O     ;   m  �  �  Z   +  W   �  W   �  X   6	  ]   �	  F   �	  w   4
  $   �
  $   �
      �
  B     <   Z  A   �  "   �  1   �  3   .   :raw-html:`<p style="color:#E67E22; font-size:24px">` **Code Reference** :raw-html:`</p>` :raw-html:`<p style="color:#E67E22; font-size:24px">` **Example** :raw-html:`</p>` :raw-html:`<p style="color:#E67E22; font-size:24px">` **Materials** :raw-html:`</p>` In the sample code, modify the highlighted snippet and enter the required Informations (ssid, password, key index) required to connect to your WiFi network. In this example, we use Ameba to be a web client to retrieve Informations from the Internet. To get the Informations of a WiFi connection: Use ``WiFi.SSID()`` to get SSID of the current connected network. Upload the code and press the reset button on Ameba. Then you can see the Informations retrieved from Google is shown in the Arduino serial monitor. Use ``WiFi.RSSI()`` to get the signal strength of the connection. Use ``WiFi.localIP()`` to get the IP address of Ameba. Use ``WiFiClient()`` to create a client. Use ``client.available()`` to return the number of bytes available for reading. Use ``client.connect()`` to connect to the IP address and port specified. Use ``client.println()`` to print data followed by a carriage return and newline. Use ``client.read()`` to read the next byte received from the server the client is connected to. Use ``client.stop()`` to disconnect from the server the client is connected to. WiFi - Set up Client to Retrieve Google Search Informations Project-Id-Version: AmebaDocs EPUB3
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2022-08-12 04:08+0100
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: zh_TW
Language-Team: zh_TW <LL@li.org>
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.10.1
 :raw-html:`<p style="color:#E67E22; font-size:24px">` **程式碼說明** :raw-html:`</p>` :raw-html:`<p style="color:#E67E22; font-size:24px">` **範例説明** :raw-html:`</p>` :raw-html:`<p style="color:#E67E22; font-size:24px">` **材料準備** :raw-html:`</p>` 將WiFi連線的相關訊息，如下圖中黃色標註的地方進行對應的修改。 這個範例裡，我們使用Ameba連上WiFi，作為客戶端，從Google上獲取資訊。 連線成功後會讀取WiFi的信息：顯示WiFi的名稱WiFi.SSID() 上傳程式碼之後，按下Ameba的Reset按鈕, 這時會看到WiFi 連線後從Google上獲取到的搜索信息。 顯示WiFi的訊號強度WiFi.RSSI() 顯示Ameba的IP信息WiFi.localIP() 建立一個Client: WiFiClient() 判斷是否有數據從服務器端發送過來client.available() 客戶端通過服務器的IP和端口連線client.connect() 向服務器對發送數據并開啟新的一行 client.println() 客戶端讀取數據client.read() 客戶端斷開與服務器的連線client.stop() WiFi - 設置客戶端以檢索 Google 搜索信息 