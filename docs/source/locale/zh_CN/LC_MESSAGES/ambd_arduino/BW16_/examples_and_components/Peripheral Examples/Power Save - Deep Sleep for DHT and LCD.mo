��          �               �     �     �  (   �  $   �  $   
  Y   /  R   �  T   �  W   1    �  �   �  �   <  �   �  `   �  �     '   �  �   �  &   �	  �   �	  �   X
  M   T  D   �  ]   �  �  E  
   �  
   �  )   �  '     '   /  Z   W  W   �  W   
  i   b    �  �   �  �   ^  �     ^   �  q     (   �  �   �  !   �  s   �  �   %  W   �  I   S  S   �   **Introduction** **Procedure** **Using AON GPIO pins as wakeup source** **Using AON Timer as wakeup source** **Using RTC Timer as wakeup source** :raw-html:`<p style="color:#E67E22; font-size:24px">` **Code Reference** :raw-html:`</p>` :raw-html:`<p style="color:#E67E22; font-size:24px">` **Example** :raw-html:`</p>` :raw-html:`<p style="color:#E67E22; font-size:24px">` **Materials** :raw-html:`</p>` AON timer can be set from 0 to 32760000 range (unit ms) by ``AON_TIMER_SLEEP_DURATION`` Ameba-D supports low power modes which are deepsleep mode. Deepsleep mode turns off most of the system power domain. The power consumptions of core module in DeepSleep Mode is around 7uA to 8uA compare to normal state around 22mA. This example gives demo of system switch between “working” and “sleep”(power save).Using DHT sensor to read data and display on LCD screen when system is awake. After 5 seconds system auto enter DeepSleep Mode for power save. System will wake up by wakeup source.( Aon timer, Aon Pins or RTC timer). For AMB21, there are 5 pins that can be set as AON pins and active high for wakeup, GPIOA25(D16), GPIOA26(D17), GPIOA21(D26), GPIOA20(D27), GPIOA(D28). For AMB23, there are 8 pins that can be set as AON pins and active high for wakeup, GPIOA12(D9), GPIOA13(D10), GPIOA14(D11), GPIOA15(D12), GPIOA16(D13), GPIOA18(D15), GPIOA19(D16), GPIOA21(D18). For BW16, there is only 6 pins that can be set as AON pin and active high for wakeup, GPIOA_25 (D7), GPIOA_26 (D8), GPIOA_15 (D9), GPIOA_14 (D10), GPIOA_13 (D11), GPIOA_12 (D12). Open ``“File” -> “Examples” -> “AmebaPowerSave” -> “DeepSleep_DHT_LCD_Example”`` Please refer to the `API Documents <https://www.amebaiot.com/rtl8722dm-arduino-online-api-documents/>`__ PowerSave section for detail description of all API. Power Save - Deep Sleep for DHT and LCD RTC timer wakeup system is by setting alarm. The alarm has 4 values, day, hour, min and sec. All 4 values can be set by ``DS_RTC_ALARM_DAY``, ``DS_RTC_ALARM_HOUR``, ``DS_RTC_ALARM_MIN``, and ``DS_RTC_ALARM_SEC`` Set condition values as picture below. These AON pins can be set by using ``SET_AON_GPIO_WAKEUP_GPIOA25`` or the pin that you want to use as shown in the picture below. When finished the condition values setting, system will run and switch between normal working mode and deepsleep mode controlled by wakeup source. LCD screen will display the temperature and humidity data measured from DHT sensor when system is awake. ``DHTPIN`` is used to set DHT sensor data pin. User can choose any GPIO pins. ``DHTTYPE`` is used to set DHT sensor type. (DHT11, DHT22 and DHT33) ``DS_WAKEUP_SOURCE`` is used to set the wake-up source, user can chose 3 wake up sources now, Project-Id-Version: AmebaDocs EPUB3
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
 **介绍** **流程** **使用 AON GPIO 引脚作为唤醒源** **使用 AON 定时器作为唤醒源** **使用 RTC 定时器作为唤醒源** :raw-html:`<p style="color:#E67E22; font-size:24px">` **程式码说明** :raw-html:`</p>` :raw-html:`<p style="color:#E67E22; font-size:24px">` **范例说明** :raw-html:`</p>` :raw-html:`<p style="color:#E67E22; font-size:24px">` **材料准备** :raw-html:`</p>` 可以通过 ``AON_TIMER_SLEEP_DURATION`` 在0到32760000范围（单位毫秒）之间设置AON计时器 Ameba-D支持低功耗模式，即深度睡眠模式。深度睡眠模式会关闭大多数系统power domain。 DeepSleep模式下核心模块的功耗约为7uA至8uA，而正常状态下约为22mA。这个范例演示了系统在“工作”和“睡眠”之间的切换（省电）。当系统处于唤醒状态时，使用DHT传感器读取数据并在LCD屏幕上显示。5秒钟后，系统自动进入DeepSleep模式以节电。系统将通过唤醒源（Aon计时器，Aon引脚或RTC计时器）唤醒。 对于AMB21，有5个引脚可以设置为AON引脚和上缘触发，GPIOA25(D16)、GPIOA26(D17)、GPIOA21(D26)、GPIOA20(D27)、GPIOA(D28)。 对于AMB23，有8个引脚可以设置为AON引脚和上缘触发，GPIOA12(D9), GPIOA13(D10), GPIOA14(D11), GPIOA15(D12), GPIOA16(D13), GPIOA18(D15), GPIOA19(D16)、GPIOA21(D18)。 对于BW16，有8个引脚可以设置为AON引脚和上缘触发， GPIOA_25 (D7), GPIOA_26 (D8), GPIOA_15 (D9), GPIOA_14 (D10),GPIOA_13 (D11), GPIOA_12 (D12)。 打开 “File” -> “Examples” -> “AmebaPowerSave” -> “DeepSleep_DHT_LCD_Example” 请参考 `API Documents <https://www.amebaiot.com/rtl8722dm-arduino-online-api-documents/>`__ 相关的说明。 Power Save - DHT 和 LCD 的深度睡眠 RTC定时器通过设置闹钟唤醒系统。闹钟具有4个值，日，时，分和秒。可以通过 ``DS_RTC_ALARM_DAY``， ``DS_RTC_ALARM_HOUR``， ``DS_RTC_ALARM_MIN``和 ``DS_RTC_ALARM_SEC`` 设置所有4个值。 如下图所示设置条件值。 这些 AON 引脚可以使用 SET_AON_GPIO_WAKEUP_GPIOA25 或您想使用的引脚进行设置，如下图所示。 但完成设置后，系统将运行正常模式和深度睡眠模式之间切换。然后由唤醒源控制。当系统处于唤醒状态时，液晶屏幕将显示从DHT传感器测得的温度和湿度数据。 ``DHTPIN`` 用于设置DHT传感器数据引脚。用户可以选择任何GPIO引脚。 ``DHTTYPE`` 用于设置DHT传感器类型。 （DHT11，DHT22和DHT33） ``DS_WAKEUP_SOURCE`` 用于设置唤醒源，用户现在可以选择3个唤醒源, 