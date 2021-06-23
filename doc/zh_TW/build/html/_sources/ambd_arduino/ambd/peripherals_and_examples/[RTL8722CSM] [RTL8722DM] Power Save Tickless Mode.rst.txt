[RTL8722CSM] [RTL8722DM] Power Save Tickless Mode
====================================================
Materials

-  RTL8722DM x 1

Example

**Introduction**

Ameba-D supports two low power modes which are deepsleep mode and sleep
mode. The power consumptions of Tickless Sleep Mode is around 28uA to
30uA compare to normal state around 15mA. This example describes how to
use freertos tickless with uart interruptable interface.

| **Procedure**
| Open “File” -> “Examples” -> “AmebaPowerSave” -> “TicklessMode”

.. image:: ../media/[RTL8722CSM]_[RTL8722DM]_Power_Save_Tickless_Mode/image1.png
   :alt: 1
   :width: 5.89583in
   :height: 7.40972in

| Set condition values as picture below.
| “TL_WAKEUP_SOURCE” is used to set the wake-up source, user can chose 3
  wake up sources now,
| LOGUART (SET_TL_UART_WAKEUP);
| RTC timer (SET_TL_RTC_WAKEUP);
| AON pins (SET_TL_AON_WAKEPIN_WAKEUP);

When apply the LOGUART wakeup, KM4 “TL_Suspend_function” then enter
sleep mode. KM0 keep alive 13s then enter sleep mode.

RTC timer wake-up system by set alarm. The alarm has 4 values, day,
hour, min and sec. All 4 values can be set by TL_RTC_ALARM_DAY,
TL_RTC_ALARM_HOUR, TL_RTC_ALARM_MIN, and TL_RTC_ALARM_SEC

There are 4 pins can be set as AON pins and active high for wake-up,
D16, D17, D26 and D27. The AON pin can be set by
SET_TL_AON_WAKEPIN_WAKEUP

TL_SYSACTIVE_TIME is for setting time duration of the system to keep
alive. (unit ms)

.. image:: ../media/[RTL8722CSM]_[RTL8722DM]_Power_Save_Tickless_Mode/image2.png
   :alt: 1
   :width: 6.5in
   :height: 5.64931in

.. image:: ../media/[RTL8722CSM]_[RTL8722DM]_Power_Save_Tickless_Mode/image3.png
   :alt: 1
   :width: 6.5in
   :height: 6.5in

.. image:: ../media/[RTL8722CSM]_[RTL8722DM]_Power_Save_Tickless_Mode/image4.png
   :alt: 1
   :width: 6.5in
   :height: 6.5in

.. image:: ../media/[RTL8722CSM]_[RTL8722DM]_Power_Save_Tickless_Mode/image5.png
   :alt: 1
   :width: 6.5in
   :height: 6.5in

Code Reference

Please refer to the `API
Documents <https://www.amebaiot.com/rtl8722dm-arduino-online-api-documents/>`__ PowerSave
section for detail description of all API.
