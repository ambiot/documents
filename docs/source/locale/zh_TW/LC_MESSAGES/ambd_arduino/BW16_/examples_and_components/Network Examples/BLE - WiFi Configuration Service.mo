��          �               <     =     N  Y   \  R   �  T   	  �   ^     R  "   m  t   �  e       k  �   �  h   v  d   �  �   D  P     �   T  �  �  
   �
     �
  Y   �
  W   �
  W   W  �   �     �     �  S   �  W   
    b  �   h  _     V   |  �   �  A   �  �   �   **Introduction** **Procedure** :raw-html:`<p style="color:#E67E22; font-size:24px">` **Code Reference** :raw-html:`</p>` :raw-html:`<p style="color:#E67E22; font-size:24px">` **Example** :raw-html:`</p>` :raw-html:`<p style="color:#E67E22; font-size:24px">` **Materials** :raw-html:`</p>` After the Ameba board connects to the WiFi network, the following message will be shown. Tap “Try another AP” to connect to another WiFi network or tap “Confirm” to keep the current WiFi network and disconnect BLE from the Ameba board. Android / iOS mobile phone BLE – WiFi Configuration Service BLEWifiConfigService is used to create an instance of the WiFi configuration service to run on the Bluetooth device. Ensure that the Realtek WiFi configuration app is installed on your mobile phone, it is available at: If your phone is currently connected to a WiFi network, the app will ask for the WiFi password to connect the Ameba board to the same WiFi network. Tap “Select AP” to choose another WiFi network, or enter the password and tap continue to connect Ameba to the selected WiFi network. In this example, a WiFi configuration service is set up on the Ameba Bluetooth stack. A mobile phone with the configuration app connects to the Ameba device using BLE and configures the Ameba to connect to the correct WiFi access point. On your mobile phone, open the Realtek WiFiConfig app and tap the round button to scan for Ameba boards. Open the example, ``“Files” -> “Examples” -> “AmebaBLE” -> “BLEWifiConfigService”``. Select the correct Ameba board from the scan results. The app will connect to the Ameba board and ask the board to scan for WiFi networks and send the scan results back to the app using BLE. Upload the code and press the reset button on Ameba once the upload is finished. ``BLE.configAdvert()->setAdvType(configService.advData())`` is used to set the correct advertisement data necessary for the phone app to find the Ameba Bluetooth device. Project-Id-Version: AmebaDocs EPUB3
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
 **介紹** **具體的步驟如下** :raw-html:`<p style="color:#E67E22; font-size:24px">` **程式碼説明**:raw-html:`</p>` :raw-html:`<p style="color:#E67E22; font-size:24px">` **範例説明** :raw-html:`</p>` :raw-html:`<p style="color:#E67E22; font-size:24px">` **材料準備** :raw-html:`</p>` Ameba板連接到WiFi網絡後，將顯示以下消息。點擊“Try another AP”以連接到其他WiFi網絡，或者點擊“Confirm”以保持當前的WiFi網絡並將Ameba板斷開與手機的BLE連接。 Android / iOS 智能手機 BLE - WiFi 設置服務 BLEWifiConfig用於創建要在藍牙設備上運行的WiFi配置服務的實例。 確保您的手機上安裝了Realtek WiFi配置應用程序，請參考下列連結： 如果手機當前已連接到WiFi網絡，則該應用程序將要求輸入WiFi密碼以將Ameba板連接到同一WiFi網絡。 點擊“Select AP”以選擇另一個WiFi網絡，或者輸入密碼，然後點擊Continue將Ameba連接到所選的WiFi網絡。 在此範例中，在Ameba藍牙堆棧上設置了WiFi配置服務。帶有應用程序的手機使用BLE連接到Ameba設備，並將Ameba配置連線至正確的WiFi路由器。 打開手機上的Realtek WiFiConfig應用程序，然後點擊圓形按鈕以掃描Ameba板。 打開範例，”Files” -> “Examples” -> “AmebaBLE” -> “BLEWifiConfig”. 從掃描結果中選擇正確的Ameba板。 該應用程序將連接到Ameba開發板，並要求開發板掃描WiFi網絡，然後使用BLE將掃描結果發送回該應用程序。 上傳程式碼並在上傳完成後按Ameba上的重置按鈕。 BLE.configAdvert（）-> setAdvType（configService.advData（)）用於設置手機應用程序找到Ameba藍牙設備所需的正確廣播數據。 