##########################################################################
Power Save Deep Sleep Mode
##########################################################################

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Materials**
:raw-html:`</p>`

- AmebaD [RTL8722DM / RTL8722CSM / RTL8722DM MINI] x 1

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Example**
:raw-html:`</p>`

**Introduction**

Ameba-D supports two low power modes which are deepsleep mode and sleep
mode. Deepsleep mode turns off more power domain than sleep mode. The
power consumptions of DeepSleep Mode is around 7uA to 8uA compare to
normal state around 22mA. This example describes how to enter deepsleep
mode and configure wakeup source.

| **Procedure**
| Open ``“File” -> “Examples” -> “AmebaPowerSave” -> “DeepSleepMode”``

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

  |2|

When finished the condition values setting, system will run and switch
between normal and deepsleep mode controlled by wakeup source. Serial
Monitor displays the switching log.

  |3|

  |4|

  |5|

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Code Reference**
:raw-html:`</p>`

Please refer to the `API
Documents <https://www.amebaiot.com/rtl8722dm-arduino-online-api-documents/>`__ PowerSave
section for detail description of all API.

.. |1| image:: /ambd_arduino/media/Power_Save_Deep_Sleep_Mode/image1.png
   :width: 689
   :height: 704
   :scale: 50 %
.. |2| image:: /ambd_arduino/media/Power_Save_Deep_Sleep_Mode/image2.png
   :width: 616
   :height: 466
   :scale: 100 %
.. |3| image:: /ambd_arduino/media/Power_Save_Deep_Sleep_Mode/image3.png
   :width: 859
   :height: 369
   :scale: 50 %
.. |4| image:: /ambd_arduino/media/Power_Save_Deep_Sleep_Mode/image4.png
   :width: 860
   :height: 374
   :scale: 50 %
.. |5| image:: /ambd_arduino/media/Power_Save_Deep_Sleep_Mode/image5.png
   :width: 860
   :height: 370
   :scale: 50 %