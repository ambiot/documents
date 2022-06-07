��          �               ,     -     >  Y   L  R   �  T   �  �   N  "   B  t   e  e   �    @  �   ^  h   K  d   �  �     P   �  �   )  �  �  
   U
  
   `
  Z   k
  W   �
  W     �   v     J  S   c  W   �      �     _   �  V   *  �   �  A   8  �   z   **Introduction** **Procedure** :raw-html:`<p style="color:#E67E22; font-size:24px">` **Code Reference** :raw-html:`</p>` :raw-html:`<p style="color:#E67E22; font-size:24px">` **Example** :raw-html:`</p>` :raw-html:`<p style="color:#E67E22; font-size:24px">` **Materials** :raw-html:`</p>` After the Ameba board connects to the WiFi network, the following message will be shown. Tap “Try another AP” to connect to another WiFi network or tap “Confirm” to keep the current WiFi network and disconnect BLE from the Ameba board. BLE – WiFi Configuration Service BLEWifiConfigService is used to create an instance of the WiFi configuration service to run on the Bluetooth device. Ensure that the Realtek WiFi configuration app is installed on your mobile phone, it is available at: If your phone is currently connected to a WiFi network, the app will ask for the WiFi password to connect the Ameba board to the same WiFi network. Tap “Select AP” to choose another WiFi network, or enter the password and tap continue to connect Ameba to the selected WiFi network. In this example, a WiFi configuration service is set up on the Ameba Bluetooth stack. A mobile phone with the configuration app connects to the Ameba device using BLE and configures the Ameba to connect to the correct WiFi access point. On your mobile phone, open the Realtek WiFiConfig app and tap the round button to scan for Ameba boards. Open the example, ``“Files” -> “Examples” -> “AmebaBLE” -> “BLEWifiConfigService”``. Select the correct Ameba board from the scan results. The app will connect to the Ameba board and ask the board to scan for WiFi networks and send the scan results back to the app using BLE. Upload the code and press the reset button on Ameba once the upload is finished. ``BLE.configAdvert()->setAdvType(configService.advData())`` is used to set the correct advertisement data necessary for the phone app to find the Ameba Bluetooth device. Project-Id-Version: AmebaDocs EPUB3
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
 **介绍** **流程** :raw-html:`<p style="color:#E67E22; font-size:24px">` **程式码说明** :raw-html:`</p>` :raw-html:`<p style="color:#E67E22; font-size:24px">` **范例说明** :raw-html:`</p>` :raw-html:`<p style="color:#E67E22; font-size:24px">` **材料准备** :raw-html:`</p>` Ameba板连接到WiFi网络后，将显示以下消息。点击“Try another AP”以连接到其他WiFi网络，或者点击“Confirm”以保持当前的WiFi网络并将Ameba板断开与手机的BLE连接。 BLE - WiFi 设置服务  BLEWifiConfig用于创建要在蓝牙设备上运行的WiFi配置服务的实例。 确保您的手机上安装了Realtek WiFi配置应用程序，请参考下列连结： 如果手机当前已连接到WiFi网络，则该应用程序将要求输入WiFi密码以将Ameba板连接到同一WiFi网络。点击 “Select AP” 以选择另一个WiFi网络，或者输入密码，然后点击Continue将Ameba连接到所选的WiFi网络。 在此范例中，在Ameba蓝牙堆栈上设置了WiFi配置服务。带有应用程序的手机使用BLE连接到Ameba设备，并将Ameba配置连线至正确的WiFi路由器。 打开手机上的Realtek WiFiConfig应用程序，然后点击圆形按钮以扫描Ameba板。 打开范例，”Files” -> “Examples” -> “AmebaBLE” -> “BLEWifiConfig”. 从扫描结果中选择正确的Ameba板。该应用程序将连接到Ameba开发板，并要求开发板扫描WiFi网络，然后使用BLE将扫描结果发送回该应用程序。 上传程式码并在上传完成后按Ameba上的重置按钮。 BLE.configAdvert（）-> setAdvType（configService.advData（)）用于设置手机应用程序找到Ameba蓝牙设备所需的正确广播数据。 