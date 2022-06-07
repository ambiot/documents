��          �               �  !   �     �  R   �  V     )   s  9   �  #   �  �   �  p   �  �   W  �   �  3  �  q   �  '   1  N   Y  D   �  t   �  ,   b  p   �  3    	     4	  j   Q	  �  �	  "   >     a  W   u  W   �  &   %  4   L     �  �   �  `   9  t   �  �         n        ~  ?   �  &   �  I   �  L   E  g   �  (   �     #  l   <   **AMB21 / AMB22** Wiring Diagram: **AMB23** Wiring Diagram: :raw-html:`<p style="color:#E67E22; font-size:24px">` **Example** :raw-html:`</p>` :raw-html:`<p style="color:#E67E22; font-size:24px">` **Preparation** :raw-html:`</p>` A: Active, meaning the GPS signal is fix. Compile and upload to Ameba, then press the reset button. Each field is separated by a comma. First field is the GMT time (Greenwich Mean Time), that is 032122.000 in this example. The time format is HH:MM:SS.SSS, i.e., 03:21:22.000. Note that the time zone and the daylight-saving time adjustment should be handled on your own. In this example we are only interested in the “$GPRMC (Global Positioning Recommended Minimum Coordinates)”: In this example, 2446.8181,N represents 24 degrees 46.8181 minutes north latitude, and 12059.7251,E represents 120 degrees 59.7251 minutes east longitude. In this example, we use Adafruit Ultimate GPS Breakout. Its data format is pure text, so we can connect it to USB to TTL Adapter and observe the output. It follows the NMEA sentence format (refer to http://aprs.gids.nl/nmea/) The GPS signal is weak in indoor environment. The status that the GPS signal is not received is called “not fix”. Bring the GPS module outdoors, when the GPS signal is “fix”, you would get message similar to the figure below. Open the example in ``“Files” -> “Examples” -> “AmebaSoftwareSerial” -> “Adafruit_GPS_parsing”``. Second field represents the status code The eighth field is the moving angle, which is calculated by its moving orbit. The last field is checksum. In the example we have \*53 as checksum. The ninth field is the date with format ddMMyy. In this example, “270116” stands for day 27, January, year 2016. The result will be output to Serial Monitor: The seventh field is relative speed(knot). 1 knot = 1.852km/hr, in this example the relative speed is 0.39 knot. The third to sixth fields represent the geolocation UART - Retrieve GPS Position We can search **+24 46.8181’, +120 59.7251’** in Google map to check whether the position is correct. Project-Id-Version: AmebaDocs EPUB3
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2022-03-08 02:53+0000
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: zh_TW
Language-Team: zh_TW <LL@li.org>
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.10.1
 **AMB21 / AMB22** 接線圖如下: **AMB23** 接線圖 :raw-html:`<p style="color:#E67E22; font-size:24px">` **範例説明** :raw-html:`</p>` :raw-html:`<p style="color:#E67E22; font-size:24px">` **材料準備** :raw-html:`</p>` A: Active, 這個狀態下GPS可以fix 編譯並上傳到Ameba, 完成之後按Reset按鈕, 每個欄位都用逗號隔開 第1欄是GMT(Greenwich Mean Time), 這邊的例子是032122.000, 格式為HH:MM:SS.SSS, 也就是03:21:22.000。時區與日光節約需要自行調整 這邊我們目前關心的內容是$GPRMC (Global Positioning Recommended Minimum Coordinates): 例子中，2446.8181,N 表示北半球緯度24度46.8181分，12059.7251,E 表示東半球經度120度59.7251分， 市面上常看到的GPS模組大多都是UART介面，資料格式也大多遵循NMEA sentence。這邊介紹使用Adafruit Ultimate GPS Breakout。它的資料格式是文字介面，所以可以直接接在USB to TTL Adapter上直接看GPS內容： 的格式使用NMEA sentence,詳細內容可以參考http://aprs.gids.nl/nmea/ 但在室內不太容易收到GPS訊號，上一張圖尚未收到訊號，稱之為還沒“fix”。帶GPS模組到室外做測試，等到fix有訊號的內容長的像這樣： 打開範例程式, “Files” -> “Examples” -> “AmebaSoftwareSerial” -> “Adafruit_GPS_parsing”,  第2欄是status code 第8欄是行進角度, 這是根據之前的軌跡算出來的 最後1欄為checksum, 例子中是*53 第9欄是日期, 格式是ddMMyy, 例子中270116為27日, 1月, 2016年 結果會輸出到Serial Monitor上, 所以帶著筆電到戶外試試看： 第7欄是相對地面速度, 單位是節(knot), 每節等同於時速1.852公里, 例子中是0.39節 3~6欄是地理位置定位(geolocation) UART - 檢索 GPS 位置 我們可以在google map的搜尋欄輸入+24 46.8181′, +120 59.7251′ 就可以檢查位置是否正確 