��          �                 Y     b   w  R   �  T   -     �  y   �  o     [   x  �   �  �   �  �   ;  q       x  �   �  )      �  J  Z   �	  ]   '
  W   �
  T   �
  
   2  y   =  o   �  �   '  �   �  �   Y  �   �  m   �  �   �  l   �  "   9   :raw-html:`<p style="color:#E67E22; font-size:24px">` **Code Reference** :raw-html:`</p>` :raw-html:`<p style="color:#E67E22; font-size:24px">` **Comparison with Arduino** :raw-html:`</p>` :raw-html:`<p style="color:#E67E22; font-size:24px">` **Example** :raw-html:`</p>` :raw-html:`<p style="color:#E67E22; font-size:24px">` **Materials** :raw-html:`</p>` Antenna x 1 First we use ``WiFi.macAddress(mac)`` to get the MAC address of Ameba: https://www.arduino.cc/en/Reference/WiFiMACAddress First, make sure the correct Ameba development board is selected in Arduino IDE: ``“Tools” -> “Board”`` However, Ameba is already equipped with WiFi module. Therefore, ``#include`` is not needed. In the Arduino platform, we need to add an extra WiFi shield to be the WiFi module to realize the WiFi connection. And we must ``#include`` to use SPI to communicate with WiFi module. In this example, we use Ameba to scan available WiFi hotspots in the surroundings, and prints the SSID, encryption type, signal strength information of each detected hotspot. Then upload the sample code and press the reset button on Ameba. Afterwards, you can see “\*\*Scan Networks\*\*” message appears, with the detected WiFi hotspots and the information of each hotspot. Then we use ``WiFi.scanNetworks()`` to detect WiFi hotspots: https://www.arduino.cc/en/Reference/WiFiScanNetworks To get information of detected WiFi hotspot: We use ``WiFi.SSID(thisNet)`` to retrieve SSID of a network: https://www.arduino.cc/en/Reference/WiFiSSID We use ``WiFi.RSSI(thisNet)`` to get the signal strength of the connection to the router: https://www.arduino.cc/en/Reference/WiFiRSSI We use ``WiFi.encryptionType(thisNet)`` to get the encryption type of the network: https://www.arduino.cc/en/Reference/WiFiEncryptionType WiFi - Scan the surrounding WiFi networks Project-Id-Version: AmebaDocs EPUB3
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
 :raw-html:`<p style="color:#E67E22; font-size:24px">` **程式码说明** :raw-html:`</p>` :raw-html:`<p style="color:#E67E22; font-size:24px">` **与Arduino的差异**:raw-html:`</p>` :raw-html:`<p style="color:#E67E22; font-size:24px">` **范例说明** :raw-html:`</p>` :raw-html:`<p style="color:#E67E22; font-size:24px">` **Materials** :raw-html:`</p>` 天线 x 1 首先使用的是显示Ameba自己的物理地址WiFi.macAddress(mac):https://www.arduino.cc/en/Reference/WiFiMACAddress 首先先确定天线已经接上，确保在 “Tools” -> “Board” 中选择了正确的Ameba开发板。 但是Ameba自身就具有WiFi模块的功能，因此，不需要 ``#include`` 。若想要使用Arduino的范例，要先删掉这一项。 Arduino在完成WiFi的操作时，需要另外使用WiFi Shield来作为WiFi模块，因此在使用WiFi是需要#include 来使用SPI与WiFi模块进行通讯。 这个范例里，我们使用Ameba来检测周围的WiFi讯号，并将检测到WiFi的名称，加密方式，信号强度等信息打印出来。 上传程式码之后，按下Ameba的Reset按钮, 这时候会看到 **Scan Networks** 下会有搜索到WiFi的数目以及每一个WiFi的讯息。 然后开始搜索周围WiFi环境的WiFi.scanNetworks()https://www.arduino.cc/en/Reference/WiFiScanNetworks" 在打印WiFi具体讯息时使用到的有, 显示WiFi的名称WiFi.SSID(thisNet):https://www.arduino.cc/en/Reference/WiFiSSID 显示WiFi的讯号强度WiFi.RSSI(thisNet):https://www.arduino.cc/en/Reference/WiFiRSSI 显示WiFi的加密方式WiFi.encryptionType(thisNet):https://www.arduino.cc/en/Reference/WiFiEncryptionType WiFi - 扫描周围的 WiFi 网路 