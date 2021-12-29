##########################################################################
Power Save Deep Sleep DHT LCD
##########################################################################

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Materials**
:raw-html:`</p>`

  - AmebaD [RTL8722DM / RTL8722CSM / RTL8722DM MINI] x 1
  - DHT11 or DHT22 or DHT21 x 1
  - LCD I2C screen x 1

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Example**
:raw-html:`</p>`

**Introduction**

Ameba-D supports low power modes which are deepsleep mode. Deepsleep
mode turns off most of the system power domain. The power consumptions
of core module in DeepSleep Mode is around 7uA to 8uA compare to normal
state around 22mA. This example gives demo of system switch between
“working” and “sleep”(power save).Using DHT sensor to read data and
display on LCD screen when system is awake. After 5 seconds system auto
enter DeepSleep Mode for power save. System will wake up by wakeup
source.( Aon timer, Aon Pins or RTC timer).

| **Procedure**
| Open ``“File” -> “Examples” -> “AmebaPowerSave” ->
  “DeepSleep_DHT_LCD_Example”``
  
  |1|


| Set condition values as picture below.
| ``DS_WAKEUP_SOURCE`` is used to set the wake-up source, user can chose 3 
  wake up sources now,

.. code-block:: c

   AON timer (SET_DS_AON_TIMER_WAKEUP);
   AON pins (SET_DS_AON_WAKEPIN_WAKEUP);
   RTC timer (SET_DS_RTC_WAKEUP);

AON timer can be set from 0 to 32760000 range (unit ms) by
``AON_TIMER_SLEEP_DURATION``

There are 4 pins can be set as AON pins and active high for wake-up,
D16, D17, D26 and D27. The AON pin can be set by
``SET_DS_AON_WAKEPIN_WAKEUPPIN``

RTC timer wake-up system by set alarm. The alarm has 4 values, day,
hour, min and sec. All 4 values can be set by ``DS_RTC_ALARM_DAY``,
``DS_RTC_ALARM_HOUR``, ``DS_RTC_ALARM_MIN``, and ``DS_RTC_ALARM_SEC``

| ``DHTPIN`` is used to set DHT sensor data pin. User can choose any GPIO
  pins.
| ``DHTTYPE`` is used to set DHT sensor type. (DHT11, DHT22 and DHT33)

  |2|

When finished the condition values setting, system will run and switch
between normal working mode and deepsleep mode controlled by wakeup
source. LCD screen will display the temperature and humidity data
measured from DHT sensor when system is awake.

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Code Reference**
:raw-html:`</p>`

Please refer to the `API
Documents <https://www.amebaiot.com/rtl8722dm-arduino-online-api-documents/>`__ PowerSave
section for detail description of all API.

.. |1| image:: /ambd_arduino/media/Power_Save_Deep_Sleep_DHT_LCD/image1.png
   :width: 689
   :height: 704
   :scale: 50 %
.. |2| image:: /ambd_arduino/media/Power_Save_Deep_Sleep_DHT_LCD/image2.png
   :width: 716
   :height: 442
   :scale: 50 %