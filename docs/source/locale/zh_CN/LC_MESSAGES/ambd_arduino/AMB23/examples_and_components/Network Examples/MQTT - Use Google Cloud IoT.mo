��    !      $              ,  �   -  j  �  t   J  [   �  .    Q   J  k   �  Y     R   b  i   �  V     �   v  J   	  �   h	  ?   <
  -   |
  D   �
  A   �
  T   1  a   �  �   �  l   �  d   �  x   c  �  �     �     �  h   �  �   c  �   �  �   �  W   G  �  �  �   !  W  �  x   +  I   �  �   �  C   �  [     Z   {  W   �  a   .  W   �  �   �  D   j  �   �  8   �  '   �  J   �  3   =  X   q  U   �  �      q   �  b   /  U   �  �  �     �      �   _   �   q   !  �   �!  �   "  1   �"   1. Select or create a Cloud Platform project In the Google Cloud Console, select an existing project or create a new project. You will need a **Project ID** to use with Ameba. 2. Enable billing for your project Billing needs to be enabled for your project to use Google Cloud Platform features. Follow the guide in Google cloud documentation to enable billing. https://cloud.google.com/billing/docs/how-to/modify-project 3. Enable the Cloud IoT Core API In Google Cloud console, click on the top left menu button and search for IoT Core. 4. Create a Cloud Pub\/Sub topic In Google Cloud console, click on the top left menu button and search for Pub\/Sub. 5.Create a device registry Go back to the IoT Core settings page and create a new registry. 6. Create a public/private key pair Using Openssl in a terminal in Windows/Linux/MacOs, run the following commands to generate a private and public key pair. Two files will be created by these commands, “ec_private.pem” containing the private key, and “ec_public.pem” containing the public key. 7. Create a device Go back to the IoT Core settings page and create a new device. 8. Create a Cloud Pub/Sub subscription To observe messages sent by Ameba, create a subscription in Pub/Sub. :raw-html:`<p style="color:#E67E22; font-size:24px">` **Code Reference** :raw-html:`</p>` :raw-html:`<p style="color:#E67E22; font-size:24px">` **Example** :raw-html:`</p>` :raw-html:`<p style="color:#E67E22; font-size:24px">` **Google Cloud IoT Configuration** :raw-html:`</p>` :raw-html:`<p style="color:#E67E22; font-size:24px">` **Preparation** :raw-html:`</p>` After the topic is created, go to the permissions tab of the info panel, and add “cloud-iot@system.gserviceaccount.com” with the role of “Pub\/Sub Publisher”. Choose a suitable subscription ID and select the previously created topic. Choose a suitable **Registry ID** and **\ in which to store data. Remember the **Registry ID** and **Region**\ for use with Ameba later. For the Pub/Sub topic, select the topic created in the previous step. Click enable to activate Google Cloud IoT API for your project. Connect to google cloud and publish messages: Create a new topic for your project and give it a suitable topic ID. Enter the required information in the highlighted sections below. Give the device a suitable **Device ID** and remember it for use with Ameba later. If creating a new project, enter a project name, and take note of the **Project ID** generated. In Google Cloud console, go to Pub/Sub subscriptions, select the previously created subscription, and click view messages. Here you can view the messages sent by Ameba. In ``loop()``, each loop checks the Internet status and re-connect to it when the environment has a problem. In ``setup()``, we set up RootCA which is required to form a TLS connection with Google’s servers. In the authentication section of the additional options, upload the previously generated “ec_public.pem” public key. In the yellow section, enter the SSID and password required to connect to your WiFi network. In the green section, enter the Project ID, server Region, Registry ID and Device ID previously configured in Google Cloud console. In the blue section, enter the hexadecimal string previously extracted from the private key. Upload the code and press the reset button on Ameba once the upload is finished. Open the serial monitor and observe as Ameba connects and sends messages to Google Cloud IoT. MQTT - Use Google Cloud IoT MQTT Server setting: Open the example in ``“File” -> “Examples” -> “AmebaMQTTClient” -> “Google_Cloud_IoT”``. Run the next command to extract out the private key, and remember the highlighted string of hexadecimal numbers for use with Ameba later. To publish messages, mqtt_id , clientPass and pub_topic are required. mqtt_id is generated by printing the project ID, server location, registry ID and device ID in the required format: ``clientPass`` is generated using a JSON web token (JWT) generator function, which requires the project ID and current time, and signs it with the private key: ``pub_topic`` is generated by printing the project ID and topic in the required format: Project-Id-Version: AmebaDocs EPUB3
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2022-02-23 07:12+0000
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: zh_CN
Language-Team: zh_CN <LL@li.org>
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.10.1
 1.选择或创建一个Cloud Platform项目在Google Cloud Console中，选择一个现有项目或创建一个新项目。您需要 **Project ID** 才能与Ameba一起使用。 2.为您的项目启用计费需要为您的项目启用结算功能，才能使用Google Cloud Platform功能。请遵循Google云端文档中的指南以启用计费。https://cloud.google.com/billing/docs/how-to/modify-project 3.启用 Cloud IoT Core API在Google Cloud控制台中，单击左上方的菜单按钮，然后搜索IoT Core。 4.创建一个Cloud Pub / Sub主题在Google Cloud控制台中，单击左上方的菜单按钮，然后搜索Pub/Sub。 5.创建设备注册返回IoT Core设置页面并创建一个新注册。 6.创建一对公钥/私钥在Windows/Linux/MacOs的终端中使用Openssl，运行以下命令以生成私钥和公钥对。这些命令将创建两个文件，包含私钥的“ec_private.pem”和包含公钥的“ec_public.pem”。 7.创建一个设备返回IoT Core设置页面并创建新设备。 8.创建Cloud Pub/Sub 订阅要观察Ameba发送的消息，请在Pub/Sub中创建订阅。 :raw-html:`<p style="color:#E67E22; font-size:24px">` **程式码说明** :raw-html:`</p>` :raw-html:`<p style="color:#E67E22; font-size:24px">` **范例说明** :raw-html:`</p>` :raw-html:`<p style="color:#E67E22; font-size:24px">` **Google Cloud IoT 设置**:raw-html:`</p>` :raw-html:`<p style="color:#E67E22; font-size:24px">` **材料准备** :raw-html:`</p>` 创建主题后，转到面板的权限选项，并添加具有“Pub/Sub Publisher“ cloud-iot@system.gserviceaccount.com”。 选择一个合适的订阅ID，然后选择以前创建的主题。 选择合适的Registry ID，然后选择用于存储数据的服务器 **Region** 。请记住 **Registry ID** 和 **Region**，以便以后与Ameba一起使用。对于Pub/Sub主题，选择在上一步中创建的主题。 点击启用，为您的项目激活Google Cloud IoT API 连接到Google Cloud并发布消息： 为您的项目创建一个新主题，并为其指定合适的主题ID。 在下面标注的部分中输入所需的信息。 给设备一个合适的 **Device ID**，并记住它以便以后与Ameba一起使用。 如果创建新项目，请输入项目名称，并记下生成的 **Project ID** 。 在Google Cloud控制台中，转到Pub/Sub订阅，选择先前创建的订阅，然后单击查看消息。在这里您可以查看Ameba发送的消息。 在loop（）中，每个循环都会检查Internet状态，并在环境出现问题时重新连接到Internet。 在setup（）中，我们设置了RootCA，这是与Google服务器建立TLS连接所必需的。 在其他选项的身份验证部分，上载先前生成的“ec_public.pem”公钥 在黄色部分中，输入连接到WiFi网络所需的SSID和密码。在绿色部分中，输入之前在Google Cloud控制台中配置的项目ID，服务器区域，Registry ID和Device ID。在蓝色部分中，输入先前从私钥中提取的十六进制字符串。上传代码并在上传完成后按Ameba上的重置按钮。打开串行端口，观察Ameba连接并向Google Cloud IoT发送消息。 MQTT - 使用 Google Cloud IoT MQTT Server 设定: 打开范例 “File” -> “Examples” -> “AmebaMQTTClient” -> “Google_Cloud_IoT”。 运行下一个命令以提取私钥，并记住标注的十六进制字符串，以供以后与Ameba一起使用 要发布消息，需要mqtt_id，clientPass和pub_topic。通过project ID，服务器位置，registry ID和device ID来生成mqtt_id： clientPass是使用JSON web token（JWT）生成器函数生成的，该函数需要project ID和当前时间，并使用私钥对其进行签名： pub_topic是通过project ID和主题生成的： 