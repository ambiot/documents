Þ                                   .  Y   <  R     T   é     >     Y     j  Y   ò  ³   L        O     u  ð    f    s    	  
   
  
     Z      W   {  W   Ó     +     F  l   _  X   Ì     %     ¦  ?  1  N  q  õ   À  â   ¶   **Introduction** **Procedure** :raw-html:`<p style="color:#E67E22; font-size:24px">` **Code Reference** :raw-html:`</p>` :raw-html:`<p style="color:#E67E22; font-size:24px">` **Example** :raw-html:`</p>` :raw-html:`<p style="color:#E67E22; font-size:24px">` **Materials** :raw-html:`</p>` Android / iOS mobile phone BLE â BLE Scan If you have the Bluetooth app nRF Connect installed, you can also use it to send out Bluetooth advertisements for the Ameba to pick up. Open the example, ``âFilesâ â âExamplesâ â âAmebaBLEâ â âBLEScanâ`` This example configures the Ameba as a Bluetooth central device, uses the scan functionality to scan for other Bluetooth devices, and prints out the results to the serial monitor. ``beginCentral(0)`` is used to start the Bluetooth stack in Central mode. The argument 0 is used to indicate that no clients will be operating in central mode. ``setScanCallback(scanFunction)`` is used to register a function to be called when scan results are received. This can be used to set a user function for additional processing of scan data, such as looking for a specific device. If no function is registered, the scan results are formatted and printed to the serial monitor by default. ``setScanInterval()`` and ``setScanWindow()`` are used to set the frequency and duration of scans in milliseconds. A scan will start every interval duration, and each scan will last for the scan window duration. The scan window duration should be lesser or equal to the scan interval. Set a short interval to discover devices rapidly, set a long interval to conserve power. ``setScanMode(GAP_SCAN_MODE_ACTIVE)`` is used to set the scan mode. Active scanning will request for an additional scan response data packet from a device when it is found. Passive scanning will only look at the advertisement data, and not request for additional data. ``startScan(5000)`` is used to start the scanning process for a specified duration of 5000 milliseconds. The scan will repeat according to the set scan interval and scan window values. After 5000 milliseconds, the scan process will stop, and will be ready to be started again. Project-Id-Version: AmebaDocs EPUB3
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2022-08-12 04:08+0100
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: zh_CN
Language-Team: zh_CN <LL@li.org>
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.10.1
 **ä»ç»** **æµç¨** :raw-html:`<p style="color:#E67E22; font-size:24px">` **ç¨å¼ç è¯´æ** :raw-html:`</p>` :raw-html:`<p style="color:#E67E22; font-size:24px">` **èä¾è¯´æ** :raw-html:`</p>` :raw-html:`<p style="color:#E67E22; font-size:24px">` **ææåå¤** :raw-html:`</p>` Android / iOS æºè½ææº BLE - æ«æéè¿è®¾å¤ å¦æä½ å·²ç¶å®è£äºèçapp â nRF Connectï¼ä½ ä¹å¯ä»¥ç¨å®ç¼éèçå»£åè®Amebaä¾æ¥æ¶ã æéArduinoçç¯ä¾, âFilesâ -> âExamplesâ -> âAmebaBLEâ -> âBLEScanâ æ¬ä¾å°Amebaéç½®çºèçä¸­å¿è¨­åï¼ä½¿ç¨ææåè½ææå¶ä»èçè¨­åï¼ä¸¦å°çµææå°å°ä¸²è¡ç£è¦å¨ã ``beginCentral(0)`` ç¨æ¼å¨ä¸­å¿æ¨¡å¼ä¸ååèçå æ£§ãåæ¸0ç¨æ¼æç¤ºç¶åæ²æå®¢æ¶ç«¯å¨ä¸­å¤®æ¨¡å¼ä¸é²è¡æä½ã ``setScanCallback(scanFunction)`` ç¨æ¼è¨»åä¸åæ¥æ¶å°ææçµææèª¿ç¨çå½æ¸ãå®å¯ä»¥ç¨ä¾è¨­ç½®ç¨æ¶èªå®ç¾©å½æ¸ï¼ä»¥ä¾¿å°æææ¸æé²è¡é¡å¤çèçï¼ä¾å¦æ¥æ¾ç¹å®çè¨­åãå¦ææ²æè¨»åå½æ¸ï¼ææçµæå°è¢«æ¶éæ´çä¸¦å¨é»èªææ³ä¸æå°å°ä¸²è¡ç£è¦å¨ã ``setScanInterval()`` å ``setScanWindow()`` ç¨æ¼è¨­ç½®ä»¥æ¯«ç§çºå®ä½çææé »çåæçºæéãææå°æ¯éä¸æ®µæéååä¸æ¬¡ï¼ä¸¦ä¸æ¯æ¬¡ææé½å°æçºæ´åææçªå£æéãææçªå£æéæè©²å°æ¼æç­æ¼ææééãè¨­ç½®ç­ééå¯å¿«éç¼ç¾è¨­åï¼è¨­ç½®é·ééå¯ç¯ç´é»è½ã ``setScanMode(GAP_SCAN_MODE_ACTIVE)`` ç¨æ¼è¨­ç½®æææ¨¡å¼ãç¶æ¾å°è¨­åæï¼ä¸»åæææ¨¡å¼å°åè¨­åè«æ±å¤ä¸æ¬¡é¡å¤çææé¿ææ¸æåãèè¢«åæææ¨¡å¼åªææ¥çå»£åæ¸æï¼èä¸æè«æ±é¡å¤çæ¸æã ``startScan(5000)`` ç¨æ¼ååä¸åç¹å®æçºæéçº5000æ¯«ç§çææé²ç¨ãææå°æç§è¨­å®çææééåææçªå£å¼é²è¡éè¤ãå¨5000æ¯«ç§ä¹å¾ï¼ææé²ç¨å°åæ­¢ï¼ä¸¦æºååæ¬¡ååã 