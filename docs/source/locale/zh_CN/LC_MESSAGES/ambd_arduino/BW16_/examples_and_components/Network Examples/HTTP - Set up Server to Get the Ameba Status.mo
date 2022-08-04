��          �               �  Y   �  R   �  T   :  ,   �  �   �  f   X  ,   �  �   �  A   �  A   �  2   #  R   V  O   �  K   �  Q   E  Q   �  `   �  O   J  n   �  V   	  T   `  5   �  �  �  Z   m
  W   �
  W      ,   x  ]   �  l     (   p  �   �  )   '  #   Q  .   u  3   �  G   �  <      +   ]  B   �  '   �  7   �  6   ,  +   c  T   �  )   �   :raw-html:`<p style="color:#E67E22; font-size:24px">` **Code Reference** :raw-html:`</p>` :raw-html:`<p style="color:#E67E22; font-size:24px">` **Example** :raw-html:`</p>` :raw-html:`<p style="color:#E67E22; font-size:24px">` **Materials** :raw-html:`</p>` HTTP - Set up Server to Get the Ameba Status In the sample code, modify the highlighted snippet and enter the required information (ssid, password, key index) required to connect to your WiFi network. In this example, we connect Ameba to WiFi and use Ameba as server to send message to connected client. To get the information of a WiFi connection: Upload the code and press the reset button on Ameba. After connecting to WiFi, Ameba starts to run as server. The IP of the server is shown in the serial monitor, and port is 80. Use ``WiFi.RSSI()`` to get the signal strength of the connection. Use ``WiFi.SSID()`` to get SSID of the current connected network. Use ``WiFi.begin()`` to establish WiFi connection. Use ``WiFiServer server()`` to create a server that listens on the specified port. Use ``client.available()`` to return the number of bytes available for reading. Use ``client.connected()`` to check whether or not the client is connected. Use ``client.print()`` to print data to the server that a client is connected to. Use ``client.println()`` to print data followed by a carriage return and newline. Use ``client.read()`` to read the next byte received from the server the client is connected to. Use ``client.stop()`` to disconnect from the server the client is connected to. Use ``server.available()`` to get a client that is connected to the server and has data available for reading. Use ``server.begin()`` to tell the server to begin listening for incoming connections. We connect to the server in a browser, and we can see the data sent from the server. se ``WiFi.localIP()`` to get the IP address of Ameba. Project-Id-Version: AmebaDocs EPUB3
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2022-06-29 07:45+0100
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: zh_CN
Language-Team: zh_CN <LL@li.org>
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.10.1
 :raw-html:`<p style="color:#E67E22; font-size:24px">` **程式码说明** :raw-html:`</p>` :raw-html:`<p style="color:#E67E22; font-size:24px">` **范例说明** :raw-html:`</p>` :raw-html:`<p style="color:#E67E22; font-size:24px">` **材料准备** :raw-html:`</p>` HTTP - 设置伺服器以获取 Ameba 状态 将WiFi连线的相关讯息，如将下图中黄色标注的地方进行对应的修改。 . 这个范例里，我们使用Ameba连上WiFi，作为服务器端，将信息发送给连线的客户端。 连线成功后会读取WiFi的信息： 上传程式码之后，按下Ameba的Reset按钮, WiFi连线成功后，会开启服务器端，服务器端的IP为Ameba的IP，端口为80 显示WiFi的讯号强度 ``WiFi.RSSI()`` 显示WiFi的名称 ``WiFi.SSID()`` 在连线WiFi时会使用到 ``WiFi.begin()``; 设定服务器的端口号 ``WiFiServer server()`` 判断是否有数据从服务器端发送过来 ``client.available()`` 判断客户端是否处于连线状态 ``client.connected`` 向服务器发送数据 ``client.print()`` 向服务器发送数据并开启新的一行 ``client.println()`` 客户端读取数据 ``client.read()`` 客户端断开与服务器的连线 ``client.stop()``;  判断是否有客户端连线 ``server.available()`` 开始服务器的监听 ``server.begin()`` 通过浏览器来与服务器进行连线，即可获得服务器所发出的数据 显示Ameba的IP信息 ``WiFi.localIP()`` 