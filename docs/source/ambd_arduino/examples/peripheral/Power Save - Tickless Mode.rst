##########################################################################
Power Save - Tickless Mode
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

Ameba-D supports two low power modes which are deepsleep mode and sleep
mode. The power consumptions of Tickless Sleep Mode is around 28uA to
30uA compare to normal state around 15mA. This example describes how to
use freertos tickless with uart interruptable interface.

| **Procedure**
| Open ``“File” -> “Examples” -> “AmebaPowerSave” -> “TicklessMode”``

  |1|


| Set condition values as picture below.
| “TL_WAKEUP_SOURCE” is used to set the wake-up source, user can chose 3
  wake up sources now,

.. code-block:: c

   LOGUART(SET_TL_UART_WAKEUP);
   RTC Timer(SET_TL_RTC_WAKEUP);
   AON pins(SET_AON_WAKEPIN_WAKEUP);

| **Using LOGUART as wakeup source**
| When the LOGUART is selected as the wakeup source, the
  “TL_Suspend_function” will enter sleep mode. And then it is kept alive
  for 13s then enter sleep mode. To wakeup, press enter.

| **Using RTC Timer as wakeup source**
| RTC Timer wakeup system is by setting alarm. The alarm has 4 values to
  be set, day, hour, min and sec. All 4 values can be set by
  DS_RTC_ALARM_DAY, DS_RTC_ALARM_HOUR, DS_RTC_ALARM_MIN, and
  DS_RTC_ALARM_SEC.

  |2|

| **Using AON GPIO pins as wakeup source**
| For AMB21, there are 5 pins that can be set as AON pins and active
  high for wakeup, GPIOA25(D16), GPIOA26(D17), GPIOA21(D26),
  GPIOA20(D27), GPIOA(D28).

  |3| 

| For AMB23, there are 8 pins that can be set as AON pins and active high
  for wakeup, GPIOA12(D9), GPIOA13(D10), GPIOA14(D11), GPIOA15(D12),
  GPIOA16(D13), GPIOA18(D15), GPIOA19(D16), GPIOA21(D18).

  |4| 

| For BW16, there is only 6 pins that can be set as AON pin and active
  high for wakeup, GPIOA_25 (D7), GPIOA_26 (D8), GPIOA_15 (D9), GPIOA_14
  (D10), GPIOA_13 (D11), GPIOA_12 (D12).

  |5|


  |6|

| TL_SYSACTIVE_TIME is for setting time duration of the system to keep
  alive. (Unit ms)

**LOGUART**

|7|


**RTC Timer**

|8|


**AON GPIO Pins**

|9|

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Code Reference**
:raw-html:`</p>`

Please refer to the `API
Documents <https://www.amebaiot.com/rtl8722dm-arduino-online-api-documents/>`__ PowerSave
section for detail description of all API.

.. |1| image:: /media/ambd_arduino/Power_Save_Tickless_Mode/image1.png
   :alt: 1
   :width: 689
   :height: 704
   :scale: 80%
.. |2| image:: /media/ambd_arduino/Power_Save_Tickless_Mode/image2.png   
   :alt: 1
   :width: 963
   :height: 265
   :scale: 80%
.. |3| image:: /media/ambd_arduino/Power_Save_Tickless_Mode/image3.png
   :alt: 1
   :width: 730
   :height: 648
   :scale: 60%
.. |4| image:: /media/ambd_arduino/Power_Save_Tickless_Mode/image4.png
   :alt: 1
   :width: 764
   :height: 691
   :scale: 60%
.. |5| image:: /media/ambd_arduino/Power_Save_Tickless_Mode/image5.png
   :alt: 1
   :width: 423
   :height: 535
   :scale: 60%
.. |6| image:: /media/ambd_arduino/Power_Save_Tickless_Mode/image6.png
   :alt: 1
   :width: 960
   :height: 762
   :scale: 60%
.. |7| image:: /media/ambd_arduino/Power_Save_Tickless_Mode/image7.png
   :alt: 1
   :width: 859
   :height: 370
   :scale: 80%
.. |8| image:: /media/ambd_arduino/Power_Save_Tickless_Mode/image8.png
   :alt: 1
   :width: 857
   :height: 373
   :scale: 80%
.. |9| image:: /media/ambd_arduino/Power_Save_Tickless_Mode/image9.png
   :alt: 1
   :width: 1003
   :height: 465
   :scale: 65%