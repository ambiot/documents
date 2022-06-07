��          �                 R     V   p  �   �  B  �  �   �  "   �  3     c   ;  J   �  ;  �  r   &  Q   �  4   �  �      P   �  �  	  W   �
  W   �
  �   E  �   *  �   )  '   (  1   P  _   �  >   �  �   !  m     <   �  +   �  �   �  C   {   :raw-html:`<p style="color:#E67E22; font-size:24px">` **Example** :raw-html:`</p>` :raw-html:`<p style="color:#E67E22; font-size:24px">` **Preparation** :raw-html:`</p>` After Ameba is connected to MQTT server, it sends the message “hello world” to “outTopic”. To see the message, use another MQTT client. Refer to the MQTT_Basic example guide on how to setup a PC-based MQTT client. If you wish to use TLS client authentication in addition to server authentication, you will need to generate an OpenSSL private key and obtain a signed certificate from the server. For testing purposes, signed certificates can be obtained from test.mosquitto.org by following the guide at https://test.mosquitto.org/ssl/. In this example, we connect Ameba to a MQTT broker using TLS authentication. Then send messages as a publisher and receive messages from as a subscriber. Open the MQTT example ``“File” -> “Examples” -> “AmebaMQTTClient” -> “MQTT_TLS”`` MQTT - Set up MQTT Client over TLS Modify the MQTT parameters to fit your application: Next, compile the code and upload it to Ameba. Press the reset button, then open the serial monitor Please modify the WiFi-related parameters to connect to your WiFi network. Replace the character strings “certificateBuff” and “privateKeyBuff” with your signed certificate and OpenSSL private key, ensuring that they are formatted the same way as the shown in the example code. Also uncomment the highlighted code to enable client authentication, and to change the MQTT port number. The “mqttServer” refers to the MQTT-Broker, we use the free MQTT sandbox “test.mosquitto.org” for testing. “clientId” is an identifier for MQTT-Broker to identify the connected device. “publishPayload” is the content to be published. “publishTopic” is the topic of the published message, we use “outTopic” in the example. The devices subscribe to “outTopic” will receive the message. “subscribeTopic” is to tell MQTT-broker which topic we want to subscribe to. Project-Id-Version: AmebaDocs EPUB3
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
 :raw-html:`<p style="color:#E67E22; font-size:24px">` **范例说明** :raw-html:`</p>` :raw-html:`<p style="color:#E67E22; font-size:24px">` **材料准备** :raw-html:`</p>` Ameba连接到MQTT服务器后，它将消息“hello world”发送到“outTopic”。要查看消息，请使用另一个MQTT客户端。有关如何设置基于PC的MQTT客户端的信息，请参阅MQTT_Basic示例指南。 如果除了服务器身份验证之外，还希望使用TLS客户端身份验证，则需要生成OpenSSL私钥并从服务器获取凭证。出于测试目的，可以按照https://test.mosquitto.org/ssl/上的指南从test.mosquitto.org获得凭证。 在此范例中，我们使用TLS身份验证将Ameba连接到MQTT服务器。然后以发布者的身份发送消息，并以订阅者的身份接收消息。打开MQTT范例， ``“File” -> “Examples” -> “AmebaMQTTClient” -> “MQTT_TLS”`` MQTT - 通过 TLS 设置 MQTT 客户端 请修改MQTT参数以符合您的应用程序： 接着编译程式码并将其上传到Ameba。按下重置按钮，然后打开串行端口。 请修改与WiFi相关的参数以连接到您的WiFi网络。 将字串“certificateBuff”和“privateKeyBuff”替换为凭证和OpenSSL私钥，确保它们的格式设置与范例代码中所示的相同。另外还要取消黄色部分的注解代码以启用客户端身份验证并更改MQTT端口号。 ``mqttServer`` 表示MQTT-Broker，我们使用免费的MQTT服务器“ test.mosquitto.org”进行测试。 ``clientId`` 是MQTT-Broker用来标识已连接的设备。 ``publishPayload`` 是要发布的内容。 ``publishTopic`` 是发布消息的主题，我们在范例中使用  ``outTopic``。订阅“outTopic”的设备将收到该消息。 ``subscribeTopic” 通知MQTT-broker我们要订阅哪个主题。 