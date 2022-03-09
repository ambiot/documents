##########################################################################
Power Save - Deep Sleep Mode
##########################################################################

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Materials**
:raw-html:`</p>`

  - AmebaD [AMB21 / AMB22 / AMB23 / BW16] x 1

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Example**
:raw-html:`</p>`

**Introduction**

Ameba-D supports 2 low power modes which are deepsleep mode and sleep
mode. Deep Sleep mode turns off more power domain than sleep mode. The power consumption of Deep Sleep mode is around 7μA to 8μA as compared
to normal state which is around 22mA. This example describes how to enter Deep Sleep mode and configure the wakeup source

| **Procedure**
| Open ``“File” -> “Examples” -> “AmebaPowerSave” -> “DeepSleepMode”``
| |1|


| Set condition values as picture below.
| “DS_WAKEUP_SOURCE” is used to set the wake-up source, user can chose 3
  wake up sources now,

.. code-block:: c

   AON Timer(SET_DS_AON_TIMER_WAKEUP);
   AON GPIO pins(SET_AONWAKEPIN_WAKEUP);
   RTC Timer(SET_DS_RTC_WAKEUP);

| **Using AON Timer as wakeup source**
| AON Timer can be set from 0 to 32760000ms range by ``AON_TIMER_SLEEP_DURATION``

| **Using AON GPIO pins as wakeup source**
| For AMB21, there are 5 pins that can be set as AON pins and active
  high for wakeup, GPIOA25(D16), GPIOA26(D17), GPIOA21(D26),
  GPIOA20(D27), GPIOA(D28).
| |2| 

| For AMB23, there are 8 pins that can be set as AON pins and active high
  for wakeup, GPIOA12(D9), GPIOA13(D10), GPIOA14(D11), GPIOA15(D12),
  GPIOA16(D13), GPIOA18(D15), GPIOA19(D16), GPIOA21(D18).
| |3| 

| For BW16, there is only 6 pins that can be set as AON pin and active
  high for wakeup, GPIOA_25 (D7), GPIOA_26 (D8), GPIOA_15 (D9), GPIOA_14
  (D10), GPIOA_13 (D11), GPIOA_12 (D12).
| |4|

| These AON pins can be set by using ``SET_AON_GPIO_WAKEUP_GPIOA25`` or the pin that you want to use as shown in the picture below

| |5|

| **Using RTC Timer as wakeup source**
| RTC Timer wakeup system is by setting alarm. The alarm has 4 values, day,
  hour, min and sec. All 4 values can be set by ``DS_RTC_ALARM_DAY``,
  ``DS_RTC_ALARM_HOUR``, ``DS_RTC_ALARM_MIN``, and ``DS_RTC_ALARM_SEC``

| |6|
| When all the condition values are set, the system will run and switch between normal and deep sleep mode which is controlled by the wakeup source. The serial monitor will display the switching log as shown below.




**AON Timer**

|7|


**AON GPIO Pin**

|8|


**RTC Timer**

|9|

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Code Reference**
:raw-html:`</p>`

Please refer to the `API
Documents <https://www.amebaiot.com/rtl8722dm-arduino-online-api-documents/>`__ PowerSave
section for detail description of all API.

.. |1| image:: /media/ambd_arduino/Power_Save_Deep_Sleep_Mode/image1.png
   :alt: 1
   :width: 689
   :height: 704
   :scale: 80%
.. |2| image:: /media/ambd_arduino/Power_Save_Deep_Sleep_Mode/image2.png   
   :alt: 1
   :width: 699
   :height: 669
   :scale: 60%
.. |3| image:: /media/ambd_arduino/Power_Save_Deep_Sleep_Mode/image3.png
   :alt: 1
   :width: 729
   :height: 694
   :scale: 60%
.. |4| image:: /media/ambd_arduino/Power_Save_Deep_Sleep_Mode/image4.png
   :alt: 1
   :width: 423
   :height: 535
   :scale: 60%
.. |5| image:: /media/ambd_arduino/Power_Save_Deep_Sleep_Mode/image5.png
   :alt: 1
   :width: 903
   :height: 651
   :scale: 80%
.. |6| image:: /media/ambd_arduino/Power_Save_Deep_Sleep_Mode/image6.png
   :alt: 1
   :width: 665
   :height: 262
   :scale: 80%
.. |7| image:: /media/ambd_arduino/Power_Save_Deep_Sleep_Mode/image7.png
   :alt: 1
   :width: 859
   :height: 370
   :scale: 80%
.. |8| image:: /media/ambd_arduino/Power_Save_Deep_Sleep_Mode/image8.png
   :alt: 1
   :width: 859
   :height: 369
   :scale: 80%
.. |9| image:: /media/ambd_arduino/Power_Save_Deep_Sleep_Mode/image9.png
   :alt: 1
   :width: 860
   :height: 370
   :scale: 80%