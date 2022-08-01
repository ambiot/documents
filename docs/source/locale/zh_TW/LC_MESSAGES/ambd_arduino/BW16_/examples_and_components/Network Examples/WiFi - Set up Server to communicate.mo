��          �               �  Y   �  R   '  T   z  }   �  $   M  \   r  �   �  o   p  h   �  �   I  g   �  �   \  �   �  D   �  ,     K   >  A   �  A   �  2   	  C   A	  E   �	  4   �	  3    
  n   4
  V   �
  #   �
  �    [   �  W   �  W   T  O   �  !   �  K     c   j  e   �  n   4  [   �  >   �  ^   >  �   �  '   9  (   a  2   �  $   �     �  )     $   +  "   P  #   s  #   �  0   �  '   �  "      :raw-html:`<p style="color:#E67E22; font-size:24px">` **Code Reference** :raw-html:`</p>` :raw-html:`<p style="color:#E67E22; font-size:24px">` **Example** :raw-html:`</p>` :raw-html:`<p style="color:#E67E22; font-size:24px">` **Materials** :raw-html:`</p>` Click on the “Client” tab to choose the client mode, specify the IP and port of the server, then click “TCP Connect”. Create server and transmitting data: First, we make sure the correct Ameba development board is set in “Tools” -> “Board” If the connection is established successfully, the server shows a message: “A client connected to this Server”, and the IP and port of the connected client. In the sample code, modify the highlighted parameters and enter the ssid and password for your WiFi connection. In this example, we first connect Ameba to WiFi, then we use Ameba as server to communicate with client. In this example, when the client and server are connected and the client sends a string to Ameba server, the Ameba server returns the identical string back to the client. Laptop（Make sure it is connected to the same network domain as Ameba, and tcp tools are installed.） Next, upload the code, then press the reset button on Ameba. At this moment, you will see the connection information is displayed in the console. Next, we use the socket tool in the laptop to be the client and connect to the IP address of the Ameba board shown in the connection information at port 5000. (Note: The socket tool we used in this example is “sokit”) The string sent to server is returned and showed at the client side. To get the information of a WiFi connection: Use ``Server(port)`` to create a server that listens on the specified port. Use ``WiFi.RSSI()`` to get the signal strength of the connection. Use ``WiFi.SSID()`` to get SSID of the current connected network. Use ``WiFi.begin()`` to establish WiFi connection; Use ``WiFi.localIP()`` to get the Ameba WiFi shield’s IP address. Use ``client.read()`` to read the next byte received from the server. Use ``client.stop()`` to disconnect from the server. Use ``client.write()`` to write data to the server. Use ``server.available()`` to get a client that is connected to the server and has data available for reading. Use ``server.begin()`` to tell the server to begin listening for incoming connections. WiFi - Set up Server to communicate Project-Id-Version: AmebaDocs EPUB3
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2022-06-29 07:45+0100
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: zh_TW
Language-Team: zh_TW <LL@li.org>
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.10.1
 :raw-html:`<p style="color:#E67E22; font-size:24px">` **程式碼說明** :raw-html:`</p>`  :raw-html:`<p style="color:#E67E22; font-size:24px">` **範例説明** :raw-html:`</p>` :raw-html:`<p style="color:#E67E22; font-size:24px">` **材料準備** :raw-html:`</p>` 選取Client 模式，填寫Server IP 和port 信息，點擊 “TCP Connect” 創建服務器並傳輸數據： 確保在 “Tools” -> “Board” 中選擇了正確的Ameba開發板。 連接成功後會顯示”A client connected to this Server”，以及Client的IP和port訊息。 將WiFi 連線的相關訊息進行修改，將下圖中黃色標註的地方進行對應的修改。 這個範例裡，我們使用 Ameba 連上WiFi，作為服務器，與連接過來的客戶端進行對話。 從 Client 發送一個字串過來，Ameba收到後，會將這個字串再發給Client。 Laptop（可與Ameba連到相同網域，並安裝TCP工具） 上傳程式碼之後，按下Ameba 的Reset 按鈕, 這時會看到WiFi 連線後的信息。 在laptop 上的socket 工具上（本示例中使用的工具為“sokit” ）通過獲取的IP地址以及範例中設定的port 5000 來進行連線。 客戶端會顯示收到這個字串。 連線成功後會讀取WiFi的信息： 設定服務器的端口號WiFiServer server(5000) 顯示WiFi的訊號強度WiFi.RSSI() 顯示WiFi的名稱WiFi.SSID() 在連線WiFi時會使用到WiFi.begin(); 顯示Ameba的IP信息WiFi.localIP() 從Server讀取數據client.read() 與Server斷開連線client.stop(); 對Server發送數據client.write() 判斷是否有客戶端連線server.available() 開始服務器的監聽server.begin(); WiFi - 設置伺服器進行通訊 