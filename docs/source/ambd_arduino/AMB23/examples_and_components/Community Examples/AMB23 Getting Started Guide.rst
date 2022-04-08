##################################################
AMB23 Getting Started Guide
##################################################

**CONTRIBUTED BY: 董勝源** (`<tung79107910@gmail.com>`__ )

| Ameba RTL8722DM物聯網開發板為瑞昱(Realtek)公司的產品，
  它是Ameba物聯網解決方案系列的最新一代SoC，並內含高性能32-bit的雙Arm®的新架構與最新的無線技術，具有高性能、超低功耗，適用於物聯網（IoT）應用。

**一、RTL87系列產品與型號區分如下：**


|image0|

| 其中AmebaD為超低功耗多功能物聯網單晶片解決方案(RTL8722DM)，具有非常高的安全級別架構和低功耗。成為智能門鎖和IoT
  Wi-Fi音頻/娛樂設備的最佳IoT解決方案。使客戶能夠開發具有最高安全性的高級物聯網應用程序。

**二、RTL8722DM特性：**

1. 支持 Arduino IDE可掛載部份 Arduino的擴展板。

2. 雙Arm®的CPU：內含串列線偵錯器(SWD: Serial Wire Debug)、巢狀向量中斷控制器(NVIC: Nested Vectored Interrupt
   Controller)、不可遮蔽中斷(NMI: Non-maskable Interrupt)及系統節拍計時器(System tick timer)，可共同使用SRAM及周邊設備。

      | (1) 低功耗的Cortex-M23，內含16KB指令快取(I-Cache)及4KB資料快取(D-Cache)記憶體，最高工作頻率為20MHz，其性能相當於Cortex-M0。

      | (2) 高性能的Cortex-M33，內含浮點運算器(FPU: floating point unit)、數位信號處理(DSP: Digital signal processing)、
            三階管道的TrustZone-M、記憶體保護單元(MPU: Memory Protection Unit)、安全指令、32-bit硬體整數除法、
            32KB指令快取(I-Cache)及4KB資料快取(D-Cache)記憶體，最高工作頻率為200MHz。其性能相當於Cortex-M4。

3. 超大容量記憶體：RTL8722DM記憶體分配，如下：

      |image1|

      | (1) KM0 CPU內部記憶體專用於Cortex-M23，最高128K-Byte的指令ITCH
            ROM、32K-Byte的資料DTCH ROM、64K-Byte
            SRAM及1K-Byte的SRAM用於在省電模式時可以保留資料，最高工作頻率為20MHz。

      | (2) KM4 CPU內部記憶體專用於Cortex-M33，最高768K-Byte的指令ITCH
            ROM、96K-Byte的資料DTCH ROM、128K-Byte的、512K-Byte的SRAM工作頻率200MHz

      | (3) 外部擴展PSRAM，記憶體容量4M-Byte，工作頻率50MHz。

      | (4) 外部擴展Flash，最高2/4M-Byte(32M-bit)，可藉由串列介面SPI/DSPI/QSPI控制及線上燒錄(ICP:In-Circuit Programming)來存取程式。

      | (5) 外部擴展DDR，可外接8-bit的DDR SDRAM（Double Data Rate \ `SDRAM <https://zh.wikipedia.org/wiki/SDRAM>`__\ ）。

      | (6) 周邊直接記憶體存取(GDMA：Peripheral Direct Memory Access)，可直接令周邊設備與KM0及KM4記憶體存取大量的資料，如語音及影像資料等。

4. 豐富的I/O周邊設備，可應用於各種物聯網控制場合：

      | (1)  GPIO腳：PA0~PA31(無PA3、PA29)及PB0~PB31(無PB8~PB11、PB24~PB27)共54支腳。
          每支腳輸入時可配置內含提升(pull-up)或下降(pull-down)電阻，且均具有外部中斷(GPIOINT)功能，
          觸發條件可設定為上升緣(rising)、下降緣(falling)或雙邊緣(both)。

      | (2)  通用非同步收發傳輸器(UART: Universal Asynchronous Receiver/Transmitter)：
          有三組高速HS\_UART0及低功耗(LP\_UART0、LP\_UART1)，可外接UART模組，如USB、藍牙、Wi-Fi、GPS等。

      | (3)  串列周邊介面(SPI: Serial Peripheral Interface)：有兩組高速HS\_SPI0及HS\_SPI1，可外接SPI晶片與模組，如Flash、繪圖型LCD等。

      | (4)  積體匯流排電路(I²C: Inter-Integrated Circuit）：有一組低功耗LP\_I2C0，可外接I\ :sup:`2`\ C 晶片與模組，如EEPROM、LCD等。

      | (5)  通用串列介面(USI: Universal SerialInterface)：可設定為高速HS\_USI\_UART、HS\_USI\_SPI或HS\_USI\_I2C。

      | (6)  紅外線(IR: Infra Ray)：可外接紅外線感測器。

      | (7)  單線One wire(SGPIO)介面：可藉由一條信號線來進行串列資料傳輸，來控制串列元件。

      | (8)  計時器(Timer)：含基本(BASE)計時(HS\_TIM0 ~ HS\_TIM3 & LP\_TIM0 ~LP\_TIM3)、PWM計時器(HS\_TIM5 &LP\_TIM5)及脈衝(Pulse)計時器(HS\_TIM4 & LP\_TIM4)。

      | (9)  脈波寬度調變(PWM:Pulse Width Modulation)輸出：有17通道(PWM1~17)，藉由方波的佔空比(duty)來進行功率控制，如LED亮度、馬達轉速等。

      | (10) 即時時脈(RTC: Real Time Clock)：關機時，可使用電池及石英晶體32.768KHz，提供年、月、日、週、時、分、秒的萬年曆與鬧鐘計時功能。

      | (11) 類比數位轉換器(ADC: Analog-to-Digital Converter)：有7通道(A0~A6)，
             最高精度為12-bit，但平時精度為10-bit，可將類比電壓0~3.3V轉換為數位資料0~1023(10-bit)或0~4095(12-bit)。

      | (12) 脈衝編碼調變(PCM:Pulse-code modulation)：是一種\ 
            `類比 <https://zh.wikipedia.org/wiki/%E6%A8%A1%E6%93%AC%E4%BF%A1%E8%99%9F>`__\ 訊號的\ `數位 <https://zh.wikipedia.org/wiki/%E6%95%B8%E4%BD%8D>`__\ 化方法，常被用於數位\ 
            `電信 <https://zh.wikipedia.org/wiki/%E9%9B%BB%E4%BF%A1>`__\ 系統上。

      | (13) 音頻編解碼器(I\ :sup:`2`\ S: Inter-IC Sound或Integrated InterchipSound）：
             是IC間傳輸數位音訊資料的一種介面標準，常用於CD等音頻信號處理。

      | (14) 安全數位介面(SD: Secure Digital)與高速SDIO，可外接SD記憶卡。

      | (15) 通用序列匯流排(USB：Universal Serial Bus)：為USB 2.0可設定為HS/FS/LS模式，具有host(主控制器)或device(裝置)功能。

      | (16) 按鍵掃描：最多可使用16支 GPIO腳來進行8\*8按鍵掃描。

      | (17) 觸摸按鍵：可連接4通道電容式觸摸感測器。

      | (18) LCD面板控制器：具有8-bit、16-bit及RGB模式控制，可連接TFT(Thin Film Transistor)彩色LCD。

5. 內含最新的無線技術：雙頻Wi-Fi（2.4GHz/5GHz）和低功耗藍牙(BLE5)。

6. 超低功耗，適合物聯網應用。

7. 最新的高安全性架構，附帶安全啟動。

8. 全方位便捷的開發套件，可從IAR/GCC/Arduino軟體SDK入手。

9. 應用領域：可以連接LED、開關、壓力計、濕度計、PM2.5粉塵感測器等電子元件，由Ameba所收集的資料可以通過Wi-Fi無線上傳，可應用於物聯網範圍如下：

      | (1)智能家居

      | (2)智慧城市

      | (3)工業物聯網

      | (4)物聯網中心/網關

      | (5)智能玩具

      | (6)Wi-Fi音頻/娛樂設備

      | (7)遊戲操縱桿/Wi-Fi遙控器

**三、RTL8722DM相關電路板介紹：有RTL8722DM及RTL8722DM\_MINI比較如下表所示：**

    |image2|

    RTL8722DM\_MINI電路板外型如下圖(a)(b)所示：

|image3|

圖1-(a) RTL8722DM\_MINI電路板正面圖

|image4|

圖1-(b) RTL8722DM\_MINI電路板背面圖

1. RTL8722DM\_MINI電路板的GPIO接腳有D0~D22共23支腳，均可作為外部中斷(INT)及兼具各種特殊功能接腳，如下表所示：

|image5|

2. RTL8722DM\_MINI內含實習電路，如下：

      | (1) LED電路：LED1藍(PA9)，LED2綠(PA10)，輸出高電位(1)時亮。

      | (2) User按鍵開關(SW2)：Button(PA20)，未按鍵時輸入為0，按鍵時輸入為1，具有防止機械彈跳電路。

      | (3) 麥克風(MK1)：MIC1\_P(PA4)及MIC1\_Bias(PA0)。

      | (4) 耳機(J4)：左聲道AOUTP\_L(PB31)及右聲道AOUTP\_R(PB29)

      | (5) USB轉UART(CON3)：插入Micro
            USB埠提供+5V電源，轉換成工作電壓+3.3V，經FT232提供虛擬UART連接MCU的接腳FT\_UART\_RX(PA7)及FT\_UART\_TX(PA8)，來燒錄程式與UART傳輸。

      | (6) Download(SW1)：連接FT\_UART\_RX(PA7)，SW1按下再重置(Reset)會進入燒錄功能。

      | (7) Reset(S1)：按下時為重置(Reset)動作。

      | (8) Host USB(CON1)：連接HSDP(PA26)及HSDM(PA25)。

      | (9) Micro SD卡(CON2)：SD\_D1(PA23)、SD\_D0(PA22)、SD\_CLK(PA21)、SD\_CMD(PA20)、SD\_D3(PA19)、SD\_D2(PA18)，SD\_PWR\_EN(PA20)

3. RTL8722DM\_MINI程式燒錄操作：

       1. 進入下載模式：按SW1(Download)按S1(Reset)鍵放開S1(Reset)鍵放開SW1(Download)，即可進入Download(下載)模式。

       2. 允許燒錄程式，燒錄程式完畢。

       3. 按S1(Reset)鍵放開S1(Reset)鍵進入執行模式。

**四、RTL8722DM\_MINI的Arduino IDE開發環境：**

1. 首先使用Micro USB經CON3將RTL8722DM\_MINI連接到電腦:

2. 如果是第一次將RTL8722DM\_MINI連接電腦，會自動安裝USB驅動程式(FT232)，在裝置管理員顯示連接埠COM編號(如COM５):

|image6|

3. 設定Arduino IDE環境：

      | (1) 必須執行Arduino IDE的1.8.1以後版本，才可以使用Arduino
            IDE在RTL8722DM上開發應用程式，

      | (2) 打開Arduino IDE的“偏好設定“，如下：

      |image7|

      | (3)  並將以下網址複製到“額外的開發板管理員網址”欄位:
             `https://github.com/ambiot/ambd\_arduino/raw/master/Arduino\_package/package\_realtek.com\_RTL8722DM\_MINI\_index.json <https://github.com/ambiot/ambd_arduino/raw/master/Arduino_package/package_realtek.com_amebad_index.json>`__

      | (4) 選擇“工具”->“開發板”->“開發板管理員”:

      |image8|

      | (5) 在“開發板管理員”用RTL8722DM來尋找及點擊“安裝”，Arduino
            IDE會自動開始下載RTL8722DM\_MINI所需的檔案與範例程式。

      |image9|

      | (6) 開始在網路下載RTL8722DM\_MINI所需的檔案，包括軟體開發套件(SDK:
            Software Development Kit)及範例程式：

      |image10|

      | (7) 選擇選擇RTL8722DM\_MINI作為開發板:

      |image11|

      | 同時會加入各種範程式，包括RTL8722DM\_MINI的範例程式(Ameba\*\*\*\*\*)。

      |image12|

4. 測試GPIO輸出範例：RTL8722DM\_MINI的GPIO接腳，如下：

      | (1) 開啟內部範例程式(Blink)：

      |image13|

      |image14|

      | (2) LED\_BUILTIN預定為LED1(藍)，可改為LED\_B(LED1藍)、LED\_G(LED2綠)或0~22(D0~D22)。不過改為PA\_0~PA\_31及PB\_0~PB\_7雖然編譯正確，但無輸出。

      | (3) RTL8722DM\_MINI程式燒錄操作順序：(a)按SW1(Download)，(b)按、放S1(Reset)鍵，(c)放開SW1(Download)鍵等待燒錄程式，燒錄完畢(d)按、放S1(Reset)鍵開始執行程式。如下圖所示：

      |image15|

      | (4) 編譯並上傳：在底下視窗顯示編譯及上傳結果，如下：

      |image16|

         | a. 編譯時會顯示警告(WARNING)訊息。

         | b. 編譯完畢，顯示使用程式碼(草稿)記憶體的容量(192K-byte)、比率與上限(2M-byte)。

         | c. 進入上傳(upload)模式，即開始燒錄程式碼，上傳過程需要相當長的時間(大約30秒到1分鐘)。

         | d. 下載完畢，按、放S1(Reset)鍵會進入執行模式，令LED1(藍)閃爍。如下圖所示：

         |image17|

5. 測試GPIO輸入與輸出範例：由按鍵開關(PUSH\_BTN)控制LED\_G(綠)，如下圖所示：

|image18|

      | (1) 開啟內部範例程式(Button)：修改按鍵開關接腳為buttonPin =
            PUSH\_BTN及LED接腳為ledPin = LED\_G，如下圖所示：

      |image19|

6. 測試ADC範例：RTL8722DM\_MINI的ADC接腳有A0~A6，如下圖所示：

|image20|

      | (1) 開啟內部範例程式(AnalogReadSerial)：RTL8722DM\_MINI的ADC應為12-bit，其中在Arduino執行時bit0~1會被捨棄，可應用的數位資料僅有10-bit為0~1023。

      |image21|

      |image22|

      | (2) 其中類比輸入接腳A0可改為A0~A6。

      | (3) 進入序列埠監控視窗。

      |image23|

      | (4) 在接腳D4(A0)輸入類比電壓(0~3.3V)，會在序列埠監控視窗顯示數位資料(0~1023)，顯示如下圖所示：

      |image24|

7. 測試呼吸燈範例：RTL8722DM\_MINI的PWM接腳，以D9(PWM)為例，如下圖所示：

|image25|

開啟內部範例程式(Fade)：其中9(D9)外接LED，執行時可觀察呼吸燈的動作，如下所示：

|image26|

|image27|

1. 在ARDUINO內建範例，配合RTL8722DM\_MINI接腳可修改的名稱如下表所示：

+---------------+----------------+----------------------+------------------+    
| **Category**  | **Name**       | **Comment**          | **Remarks**      |        
+===============+================+======================+==================+    
| 01.           | AnalogRead     | Connect              | ADC pin options  |    
| Basics        | Serial         | potentiometer to     | A0, A1, A2, A3,  |    
|               |                | 3.3V.                | A4, A5 and A6.   |   
|               |                |                      | ADC pin reading  |    
|               |                |                      | voltage range 0  |    
|               |                |                      | to 3.3V.         |    
+---------------+----------------+----------------------+------------------+    
|               | Bare           |                      |                  |   
|               | Minimum        |                      |                  |   
+---------------+----------------+----------------------+------------------+    
|               | Blink          | Pin LED_BUILTIN sets | Onboard LEDs     |    
|               |                | to LED_B             | options LED_B    |   
|               |                |                      | and LED_G. (blue |  
|               |                |                      | and green)       |    
+---------------+----------------+----------------------+------------------+    
|               | DigitalRead    |                      | Onboard button   |   
|               | Serial         |                      | PUSH_BTN.        |    
+---------------+----------------+----------------------+------------------+    
|               | Fade           | Replace "led = 9;"   |                  |    
|               |                | by a PWM pin (D4,    |                  |    
|               |                | D5, D7, D12, D13,    |                  |    
|               |                | D14, D17, D20, or    |                  |  
|               |                | D21). e.g. "led =    |                  |   
|               |                | 4;"                  |                  |    
+---------------+----------------+----------------------+------------------+    
|               | ReadAnalog     |                      | ADC pin options  |  
|               | Voltage        |                      | A0, A1, A2, A3,  |    
|               |                |                      | A4, A5 and A6.   |    
|               |                |                      | ADC pin reading  |    
|               |                |                      | voltage range 0  |   
|               |                |                      | to 3.3V.         |    
+---------------+----------------+----------------------+------------------+    
|  02.          | BlinkWitout    | The onboard blue LED | Onboard LEDs     |    
|  Digital      | Delay          | (LED_B) has been     | options LED_G.   |    
|               |                | used.                |                  |  
+---------------+----------------+----------------------+------------------+    
|               | Button         |                      | Onboard LEDs     |   
|               |                |                      | options LED_B    |    
|               |                |                      | and LED_G.       |    
|               |                |                      | Onboard button   |    
|               |                |                      | PUSH_BTN.        |    
+---------------+----------------+----------------------+------------------+   
|               | Debounce       |                      | Onboard LEDs     |    
|               |                |                      | options LED_B    |    
|               |                |                      | and LED_G.       |   
|               |                |                      | Onboard button   |    
|               |                |                      | PUSH_BTN.        |    
+---------------+----------------+----------------------+------------------+    
|               | DigitalInput   |                      | Onboard LEDs     |    
|               | Pullup         |                      | options LED_B    |    
|               |                |                      | and LED_G.       |    
+---------------+----------------+----------------------+------------------+    
|               | StateChange    |                      | Onboard LEDs     |    
|               | Detection      |                      | options LED_B    |    
|               |                |                      | and LED_G.       |    
|               |                |                      | Onboard button   |    
|               |                |                      | PUSH_BTN.        |    
+---------------+----------------+----------------------+------------------+    
|               | toneKeyboard   | Replace "tone(8,     |                  |    
|               |                | notes[thisSensor],   |                  |    
|               |                | 20);" by a PWM pin   |                  |    
|               |                | (D4, D5, D7, D12,    |                  |    
|               |                | D13, D14, D17, D20,  |                  |    
|               |                | or D21). e.g.        |                  |    
|               |                | "tone(21,            |                  |    
|               |                | notes[thisSensor],   |                  |    
|               |                | 20);"                |                  |    
+---------------+----------------+----------------------+------------------+    
|               | toneMelody     |                      |                  |    
|               |                |                      |                  |    
+---------------+----------------+----------------------+------------------+    
|               | tone           |                      |                  |    
|               | Multiple       |                      |                  |    
+---------------+----------------+----------------------+------------------+    
|               | tonePitch      |                      |                  |    
|               | Follower       |                      |                  |    
+---------------+----------------+----------------------+------------------+    
|  03.          | AnalogIn       | Replace              | ADC pin options  |    
|  Analog       | OutSerial      | "analogOutPin = 9;"  | A0, A1, A2, A3,  |    
|               |                | by a PWM pin (D4,    | A4, A5 and A6.   |   
|               |                | D5, D7, D12, D13,    | ADC pin reading  |    
|               |                | D14, D17, D20, or    | voltage range 0  |    
|               |                | D21). e.g.           | to 3.3V.         |    
|               |                | "analogOutPin = 4;"  |                  |    
+---------------+----------------+----------------------+------------------+    
|               | AnalogInput    |                      | Onboard LEDs     |    
|               |                |                      | options LED_B    |    
|               |                |                      | and LED_G. ADC   |    
|               |                |                      | pin reading      |    
|               |                |                      | voltage range 0  |    
|               |                |                      | to 3.3V.         |    
+---------------+----------------+----------------------+------------------+    
|               | Analog         | Use PWM pins D4, D5, |                  |    
|               | Write          | D7, D12, D13, D14,   |                  |    
|               | Mega           | D17, D20, or D21.    |                  |    
+---------------+----------------+----------------------+------------------+    
|               | Calibration    |                      | Onboard LEDs     |    
|               |                |                      | options LED_B    |    
|               |                |                      | and LED_G.       |    
|               |                |                      | Onboard button   |    
|               |                |                      | PUSH_BTN. ADC    |    
|               |                |                      | pin options A0,  |    
|               |                |                      | A1, A2, A3, A4,  |    
|               |                |                      | A5 and A6. ADC   |    
|               |                |                      | pin reading      |    
|               |                |                      | voltage range 0  |    
|               |                |                      | to 3.3V.         |    
+---------------+----------------+----------------------+------------------+    
|               | Fading         | Replace "ledPin =    |                  |    
|               |                | 9;" by a PWM pin     |                  |    
|               |                | (D4, D5, D7, D12,    |                  |    
|               |                | D13, D14, D17, D20,  |                  |    
|               |                | or D21). e.g.        |                  |    
|               |                | "ledPin = 4;"        |                  |   
+---------------+----------------+----------------------+------------------+    
|               | Smoothing      |                      | ADC pin options  |    
|               |                |                      | A0, A1, A2, A3,  |    
|               |                |                      | A4, A5 and A6.   |    
|               |                |                      | ADC pin reading  |    
|               |                |                      | voltage range 0  |    
|               |                |                      | to 3.3V.         |    
+---------------+----------------+----------------------+------------------+    
|  04.          | ASCIITable     |                      |                  |    
|  Communication|                |                      |                  |    
|               |                |                      |                  |    
|               |                |                      |                  |    
+---------------+----------------+----------------------+------------------+    
|               | Dimmer         |                      | Onboard LEDs     |    
|               |                |                      | options LED_B    |    
|               |                |                      | and LED_G.       |    
+---------------+----------------+----------------------+------------------+    
|               | Graph          | Connect              | ADC pin options  |   
|               |                | potentiometer to     | A0, A1, A2, A3,  |    
|               |                | 3.3V.                | A4, A5 and A6.   |    
|               |                |                      | ADC pin reading  |    
|               |                |                      | voltage range 0  |    
|               |                |                      | to 3.3V.         |   
+---------------+----------------+----------------------+------------------+   
|               | Midi           | Use Serial1 and pin  |                  |  
|               |                | D18, or use Serial2  |                  |    
|               |                | and pin D1.          |                  |    
+---------------+----------------+----------------------+------------------+   
|               | MultiSerial    |                      |                  |    
|               |                |                      |                  |    
+---------------+----------------+----------------------+------------------+    
|               | Physical       |                      | Onboard LEDs     |   
|               | Pixel          |                      | options LED_B    |    
|               |                |                      | and LED_G.       |    
+---------------+----------------+----------------------+------------------+   
|               | ReadASCII      | Use PWM pin for LED  |                  |    
|               | String         | (D4, D5, D7, D12,    |                  |    
|               |                | D13, D14, D17, D20,  |                  |    
|               |                | or D21).             |                  |    
+---------------+----------------+----------------------+------------------+    
|               | SerialCall     |                      | ADC pin options  |    
|               | Response       |                      | A0, A1, A2, A3,  |    
|               |                |                      | A4, A5 and A6.   |    
|               |                |                      | ADC pin reading  |    
|               |                |                      | voltage range 0  |    
|               |                |                      | to 3.3V.         |    
+---------------+----------------+----------------------+------------------+    
|               | Serial         |                      | ADC pin options  |   
|               | CallResponse   |                      | A0, A1, A2, A3,  |    
|               | ASCII          |                      | A4, A5 and A6.   |    
|               |                |                      | ADC pin reading  |    
|               |                |                      | voltage range 0  |    
|               |                |                      | to 3.3V.         |   
+---------------+----------------+----------------------+------------------+    
|               | SerialEvent    |                      |                  |    
|               |                |                      |                  |    
+---------------+----------------+----------------------+------------------+    
|               | SerialPa       |                      | Serial options,  |    
|               | ssthrough      |                      | Serial1 or       |    
|               |                |                      | Serial2.         |   
+---------------+----------------+----------------------+------------------+    
|               | VirtualColor   |                      | ADC pin options  |    
|               | Mixer          |                      | A0, A1, A2, A3,  |    
|               |                |                      | A4, A5 and A6.   |    
|               |                |                      | ADC pin reading  |    
|               |                |                      | voltage range 0  |    
|               |                |                      | to 3.3V.         |    
+---------------+----------------+----------------------+------------------+   
|  05.          | Arrays         | Use pins D1, D2, D3, |                  |    
|  Control      |                | D4, D5, D6.          |                  |   
|               |                |                      |                  |    
+---------------+----------------+----------------------+------------------+    
|               | ForLoop        | Use pins D1, D2, D3, |                  |   
|               | Iteration      | D4, D5, D6.          |                  |    
+---------------+----------------+----------------------+------------------+   
|               | IfStatement    |                      | ADC pin options  |    
|               | Conditional    |                      | A0, A1, A2, A3,  |    
|               |                |                      | A4, A5 and A6.   |    
|               |                |                      | ADC pin reading  |    
|               |                |                      | voltage range 0  |    
|               |                |                      | to 3.3V. Onboard |    
|               |                |                      | LEDs options     |    
|               |                |                      | LED_B and LED_G. |    
+---------------+----------------+----------------------+------------------+    
|               | switchCase     |                      | ADC pin options  |    
|               |                |                      | A0, A1, A2, A3,  |    
|               |                |                      | A4, A5 and A6.   |    
|               |                |                      | ADC pin reading  |    
|               |                |                      | voltage range 0  |    
|               |                |                      | to 3.3V.         |    
+---------------+----------------+----------------------+------------------+    
|               | switchCase2    | Use pins D1, D2, D3, |                  |    
|               |                | D4, D5, D6.          |                  |    
+---------------+----------------+----------------------+------------------+    
|               | WhileStatement | Replace "ledPin =    | ADC pin options  |    
|               | Conditional    | 9;" by a PWM pin     | A0, A1, A2, A3,  |    
|               |                | (D4, D5, D7, D12,    | A4, A5 and A6.   |    
|               |                | D13, D14, D17, D20,  | ADC pin reading  |   
|               |                | or D21). e.g.        | voltage range 0  |    
|               |                | "ledPin = 4;"        | to 3.3V.         |    
+---------------+----------------+----------------------+------------------+    
|  06.          | barGraph       |                      | ADC pin options  |   
|  Display      |                |                      | A0, A1, A2, A3,  |    
|               |                |                      | A4, A5 and A6.   |    
|               |                |                      | ADC pin reading  |    
|               |                |                      | voltage range 0  |    
|               |                |                      | to 3.3V.         |   
+---------------+----------------+----------------------+------------------+    
|               | RowColumn      |                      | ADC pin options  |    
|               | Scanning       |                      | A0, A1, A2, A3,  |   
|               |                |                      | A4, A5 and A6.   |   
|               |                |                      | ADC pin reading  |    
|               |                |                      | voltage range 0  |    
|               |                |                      | to 3.3V.         |    
+---------------+----------------+----------------------+------------------+    
|  07.          | Character      |                      |                  |    
|  Strings      | Analysis       |                      |                  |    
|               |                |                      |                  |    
+---------------+----------------+----------------------+------------------+   
|               | String         |                      |                  |    
|               | Addition       |                      |                  |    
|               | Operator       |                      |                  |    
+---------------+----------------+----------------------+------------------+    
|               | String         |                      |                  |    
|               | Append         |                      |                  |    
|               | Operator       |                      |                  |    
+---------------+----------------+----------------------+------------------+    
|               | StringCase     |                      |                  |    
|               | Changes        |                      |                  |    
+---------------+----------------+----------------------+------------------+    
|               | String         |                      |                  |    
|               | Characters     |                      |                  |    
+---------------+----------------+----------------------+------------------+    
|               | String         |                      | ADC pin options  |   
|               | Comparison     |                      | A0, A1, A2, A3,  |    
|               | Operators      |                      | A4, A5 and A6.   |    
|               |                |                      | ADC pin reading  |    
|               |                |                      | voltage range 0  |    
|               |                |                      | to 3.3V.         |    
+---------------+----------------+----------------------+------------------+    
|               | String         |                      |                  |    
|               | IndexOf        |                      |                  |    
+---------------+----------------+----------------------+------------------+   
|               | String         |                      |                  |    
|               | Length         |                      |                  |    
+---------------+----------------+----------------------+------------------+    
|               | StringLength   |                      |                  |   
|               | Trim           |                      |                  |    
+---------------+----------------+----------------------+------------------+    
|               | String         |                      |                  |    
|               | Replace        |                      |                  |   
+---------------+----------------+----------------------+------------------+    
|               | String         |                      |                  |    
|               | StartsWith     |                      |                  |   
|               | EndsWith       |                      |                  |    
+---------------+----------------+----------------------+------------------+    
|               | String         |                      |                  |    
|               | Substring      |                      |                  |    
+---------------+----------------+----------------------+------------------+   
|               | String         |                      |                  |   
|               | ToInt          |                      |                  |   
+---------------+----------------+----------------------+------------------+   

.. |image0| image:: /media/ambd_arduino/AMB23_Getting_Started_Guide/image0.png
   :width: 683
   :height: 552
   :scale: 70%
.. |image1| image:: /media/ambd_arduino/AMB23_Getting_Started_Guide/image1.png
   :width: 698
   :height: 408
   :scale: 80%
.. |image2| image:: /media/ambd_arduino/AMB23_Getting_Started_Guide/image2.png
   :width: 716
   :height: 959
   :scale: 50%
.. |image3| image:: /media/ambd_arduino/AMB23_Getting_Started_Guide/image3.png
   :width: 873
   :height: 401
   :scale: 90%
.. |image4| image:: /media/ambd_arduino/AMB23_Getting_Started_Guide/image4.png
   :width: 331
   :height: 441
   :scale: 100%
.. |image5| image:: /media/ambd_arduino/AMB23_Getting_Started_Guide/image5.png
   :width: 739
   :height: 989
   :scale: 60%
.. |image6| image:: /media/ambd_arduino/AMB23_Getting_Started_Guide/image6.png
   :width: 447
   :height: 216
   :scale: 100%
.. |image7| image:: /media/ambd_arduino/AMB23_Getting_Started_Guide/image7.png
   :width: 874
   :height: 515
   :scale: 85%
.. |image8| image:: /media/ambd_arduino/AMB23_Getting_Started_Guide/image8.png
   :width: 741
   :height: 368
   :scale: 85%
.. |image9| image:: /media/ambd_arduino/AMB23_Getting_Started_Guide/image9.png
   :width: 609
   :height: 141
   :scale: 100%
.. |image10| image:: /media/ambd_arduino/AMB23_Getting_Started_Guide/image10.png
   :width: 796
   :height: 188
   :scale: 80%
.. |image11| image:: /media/ambd_arduino/AMB23_Getting_Started_Guide/image11.png
   :width: 459
   :height: 662
   :scale: 80%
.. |image12| image:: /media/ambd_arduino/AMB23_Getting_Started_Guide/image12.png
   :width: 694
   :height: 775
   :scale: 60%
.. |image13| image:: /media/ambd_arduino/AMB23_Getting_Started_Guide/image13.png
   :width: 502
   :height: 400
   :scale: 80%
.. |image14| image:: /media/ambd_arduino/AMB23_Getting_Started_Guide/image14.png
   :width: 531
   :height: 483
   :scale: 70%
.. |image15| image:: /media/ambd_arduino/AMB23_Getting_Started_Guide/image15.png
   :width: 671
   :height: 400
   :scale: 70%
.. |image16| image:: /media/ambd_arduino/AMB23_Getting_Started_Guide/image16.png
   :width: 799
   :height: 555
   :scale: 75%
.. |image17| image:: /media/ambd_arduino/AMB23_Getting_Started_Guide/image17.png
   :width: 873
   :height: 405
   :scale: 100%
.. |image18| image:: /media/ambd_arduino/AMB23_Getting_Started_Guide/image18.png
   :width: 873
   :height: 399
   :scale: 80%
.. |image19| image:: /media/ambd_arduino/AMB23_Getting_Started_Guide/image19.png
   :width: 839
   :height: 554
   :scale: 65%
.. |image20| image:: /media/ambd_arduino/AMB23_Getting_Started_Guide/image20.png
   :width: 873
   :height: 405
   :scale: 90%
.. |image21| image:: /media/ambd_arduino/AMB23_Getting_Started_Guide/image21.png
   :width: 479
   :height: 392
   :scale: 70%
.. |image22| image:: /media/ambd_arduino/AMB23_Getting_Started_Guide/image22.png
   :width: 464
   :height: 423
   :scale: 75%
.. |image23| image:: /media/ambd_arduino/AMB23_Getting_Started_Guide/image23.png
   :width: 354
   :height: 247
   :scale: 100%
.. |image24| image:: /media/ambd_arduino/AMB23_Getting_Started_Guide/image24.png
   :width: 589
   :height: 559
   :scale: 65%
.. |image25| image:: /media/ambd_arduino/AMB23_Getting_Started_Guide/image25.png
   :width: 873
   :height: 405
   :scale: 80%
.. |image26| image:: /media/ambd_arduino/AMB23_Getting_Started_Guide/image26.png
   :width: 479
   :height: 391
   :scale: 80%
.. |image27| image:: /media/ambd_arduino/AMB23_Getting_Started_Guide/image27.png
   :width: 555
   :height: 813
   :scale: 65%
