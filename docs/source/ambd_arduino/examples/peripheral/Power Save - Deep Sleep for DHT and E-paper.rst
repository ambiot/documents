##########################################################################
Power Save - Deep Sleep for DHT and E-paper
##########################################################################

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Materials**
:raw-html:`</p>`

  - AmebaD [AMB21 / AMB22 / AMB23 / BW16] x 1
  - DHT11 or DHT22 or DHT21 x 1
  - LCD I2C screen x 1

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Example**
:raw-html:`</p>`

| **Introduction**
| Ameba-D supports low power modes which are deepsleep mode. Deepsleep
  mode turns off most of the system power domain. The power consumptions
  of core module in DeepSleep Mode is around 7uA to 8uA compare to normal
  state around 22mA. This example gives demo of system switch between
  “working” and “sleep”(power save).Using DHT sensor to read data and
  display on Eink screen when system is awake. After 5 seconds system auto
  enter DeepSleep Mode for power save. System will wake up by wakeup
  source.( Aon timer, Aon Pins or RTC timer).

| **Procedure**
| Download the Eink zip library, AmebaEink.zip, at 
  https://github.com/ambiot/tree/master/Arduino_zip_libraries. 
  Then install the AmebaEink.zip.
| Open ``“File” → “Examples” → “AmebaPowerSave” →
  “DeepSleep_For_DHT_Epaper_Example”``

  |1|

| Set condition values as picture below.
| ``DS_WAKEUP_SOURCE`` is used to set the wake-up source, user can chose 3 
  wake up sources now,

.. code-block:: c

   AON timer (SET_DS_AON_TIMER_WAKEUP);
   AON pins (SET_AON_WAKEPIN_WAKEUP);
   RTC timer (SET_DS_RTC_WAKEUP);

| **Using AON Timer as wakeup source**
| AON timer can be set from 0 to 32760000 range (unit ms) by ``AON_TIMER_SLEEP_DURATION``

| **Using AON GPIO pins as wakeup source**
| For AMB21, there are 5 pins that can be set as AON pins and active
  high for wakeup, GPIOA25(D16), GPIOA26(D17), GPIOA21(D26),
  GPIOA20(D27), GPIOA(D28). 

| For AMB23, there are 8 pins that can be set as AON pins and active high
  for wakeup, GPIOA12(D9), GPIOA13(D10), GPIOA14(D11), GPIOA15(D12),
  GPIOA16(D13), GPIOA18(D15), GPIOA19(D16), GPIOA21(D18).

| For BW16, there is only 6 pins that can be set as AON pin and active
  high for wakeup, GPIOA_25 (D7), GPIOA_26 (D8), GPIOA_15 (D9), GPIOA_14
  (D10), GPIOA_13 (D11), GPIOA_12 (D12).

| These AON pins can be set by using ``SET_AON_GPIO_WAKEUP_GPIOA25`` or the pin that you want to use as shown in the picture below.
 
  |2|

| **Using RTC Timer as wakeup source**
| RTC timer wakeup system is by setting alarm. The alarm has 4 values, day,
  hour, min and sec. All 4 values can be set by ``DS_RTC_ALARM_DAY``,
  ``DS_RTC_ALARM_HOUR``, ``DS_RTC_ALARM_MIN``, and ``DS_RTC_ALARM_SEC``

| ``DHTPIN`` is used to set DHT sensor data pin. User can choose any GPIO
  pins.
| ``DHTTYPE`` is used to set DHT sensor type. (DHT11, DHT22 and DHT33)

  |3|

When finished the condition values setting, system will run and switch
between normal working mode and deepsleep mode controlled by wakeup
source. Eink screen will display the temperature and humidity data
measured from DHT sensor when system is awake.

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Code Reference**
:raw-html:`</p>`

Please refer to the `API
Documents <https://www.amebaiot.com/rtl8722dm-arduino-online-api-documents/>`__ PowerSave
section for detail description of all API.

.. |1| image:: /media/ambd_arduino/Power_Save_Deep_Sleep_For_DHT_Epaper/image1.png
   :width: 689
   :height: 704
   :scale: 70 %
.. |2| image:: /media/ambd_arduino/Power_Save_Deep_Sleep_For_DHT_Epaper/image2.png
   :width: 957
   :height: 647
   :scale: 50 %
.. |3| image:: /media/ambd_arduino/Power_Save_Deep_Sleep_For_DHT_Epaper/image3.png
   :width: 959
   :height: 780
   :scale: 50 %