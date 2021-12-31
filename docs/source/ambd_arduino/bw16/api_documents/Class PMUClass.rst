Class PMUClass
==============

**PMUClass Class**

| **Description**
| Defines a class of using Power Save API

| **Syntax**
| class PMUClass

**Members**

+----------------------------------+-----------------------------------+
| **Public Constructors**          |                                   |
+==================================+===================================+
| PMUClass::PMUClass               | Constructs a PMUClass object      |
+----------------------------------+-----------------------------------+
| **Public Methods**               |                                   |
+----------------------------------+-----------------------------------+
| PMUCLASS::begin                  | Initialize the PMUCLASS and       |
|                                  | select sleep mode                 |
+----------------------------------+-----------------------------------+
| PMUCLASS::AONTimerDuration       | Set the duration of AON Timer     |
+----------------------------------+-----------------------------------+
| PMUCLASS::AONTimerCmd            | Disable the AON Timer for power   |
|                                  | save usage                        |
+----------------------------------+-----------------------------------+
| PMUCLASS::RTCWakeSetup           | Set up RTC Timer for power save   |
|                                  | usage                             |
+----------------------------------+-----------------------------------+
| PMUCLASS::enable                 | Enable power save deep sleep mode |
+----------------------------------+-----------------------------------+
| PMUCLASS::AONWakeReason          | Check AON wakeup source           |
+----------------------------------+-----------------------------------+
| PMUCLASS::WakePinCheck           | Check AON GPIO pin wakeup source  |
+----------------------------------+-----------------------------------+
| PMUCLASS::AONWakeClear           | Clear all the AON wakeup source   |
+----------------------------------+-----------------------------------+
| PMUCLASS::DsleepWakeStatusGet    | Check if deepsleep mode is set    |
+----------------------------------+-----------------------------------+
| PMUCLASS::TL_sysactive_time      | Tickless mode system active time  |
+----------------------------------+-----------------------------------+
| PMUCLASS::TL_wakelock            | Tickless mode wake lock, select   |
|                                  | acquire of release                |
+----------------------------------+-----------------------------------+
| PMUCLASS::DS_AON_TIMER_WAKEUP    | Return the Wakeup source          |
+----------------------------------+-----------------------------------+
| PMUCLASS::DS_RTC_WAKEUP          | Return the Wakeup source          |
+----------------------------------+-----------------------------------+
| PMUCLASS::TL_UART_WAKEUP         | Return the Wakeup source          |
+----------------------------------+-----------------------------------+
| PMUCLASS::TL_RTC_WAKEUP          | Return the Wakeup source          |
+----------------------------------+-----------------------------------+
| PMUC                             | Return the Wakeup source          |
| LASS::AON_WAKEPIN_WAKEUP_GPIOA12 |                                   |
+----------------------------------+-----------------------------------+
| PMUC                             | Return the Wakeup source          |
| LASS::AON_WAKEPIN_WAKEUP_GPIOA13 |                                   |
+----------------------------------+-----------------------------------+
| PMUC                             | Return the Wakeup source          |
| LASS::AON_WAKEPIN_WAKEUP_GPIOA14 |                                   |
+----------------------------------+-----------------------------------+
| PMUC                             | Return the Wakeup source          |
| LASS::AON_WAKEPIN_WAKEUP_GPIOA15 |                                   |
+----------------------------------+-----------------------------------+
| PMUC                             | Return the Wakeup source          |
| LASS::AON_WAKEPIN_WAKEUP_GPIOA16 |                                   |
+----------------------------------+-----------------------------------+
| PMUC                             | Return the Wakeup source          |
| LASS::AON_WAKEPIN_WAKEUP_GPIOA17 |                                   |
+----------------------------------+-----------------------------------+
| PMUC                             | Return the Wakeup source          |
| LASS::AON_WAKEPIN_WAKEUP_GPIOA18 |                                   |
+----------------------------------+-----------------------------------+
| PMUC                             | Return the Wakeup source          |
| LASS::AON_WAKEPIN_WAKEUP_GPIOA19 |                                   |
+----------------------------------+-----------------------------------+
| PMUC                             | Return the Wakeup source          |
| LASS::AON_WAKEPIN_WAKEUP_GPIOA20 |                                   |
+----------------------------------+-----------------------------------+
| PMUC                             | Return the Wakeup source          |
| LASS::AON_WAKEPIN_WAKEUP_GPIOA21 |                                   |
+----------------------------------+-----------------------------------+
| PMUC                             | Return the Wakeup source          |
| LASS::AON_WAKEPIN_WAKEUP_GPIOA25 |                                   |
+----------------------------------+-----------------------------------+
| PMUC                             | Return the Wakeup source          |
| LASS::AON_WAKEPIN_WAKEUP_GPIOA26 |                                   |
+----------------------------------+-----------------------------------+

**PMUCLASS::PMUCLASS**
~~~~~~~~~~~~~~~~~~~~~~

| **Description**
| Constructs a PMUCLASS object.

| **Syntax**
| PMUCLASS::PMUCLASS(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: DeepSleep_DHT_Eink_Example; DeepSleep_DHT_LCD_Example;
  DeepSleepMode; TicklessMode;

| **Notes and Warnings**
| Include “PMUCLASS.h” in order to use the class function.

**PMUCLASS::begin**
~~~~~~~~~~~~~~~~~~~

| **Description**
| Initialize the PMUCLASS and select sleep mode.

| **Syntax**
| void PMUClass::begin(uint32_t sleep_mode);

| **Parameters**
| sleep_mode: Selection value, “11” enters the DeepSleep Mode, “22”
  enters the Tickless Mode

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: DeepSleep_DHT_Eink_Example; DeepSleep_DHT_LCD_Example;
  DeepSleepMode; TicklessMode;

| **Notes and Warnings**
| Include “PMUCLASS.h” in order to use the class function.

**PMUCLASS::AONTimerDuration**
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

| **Description**
| Set the duration of AON Timer

| **Syntax**
| void PMUClass::AONTimerDuration(uint32_t duration_ms);

| **Parameters**
| duration_ms: Timer duration between 0 to 32760000ms.

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: DeepSleep_DHT_Eink_Example; DeepSleep_DHT_LCD_Example;
  DeepSleepMode; TicklessMode;

| **Notes and Warnings**
| Include “PMUCLASS.h” in order to use the class function.

**PMUCLASS::AONTimerCmd**
~~~~~~~~~~~~~~~~~~~~~~~~~

| **Description**
| Disable the AON timer for power save usage.

| **Syntax**
| void PMUClass::AONTimerCmd(void);

| **Parameters**
| c: The value in Celcius.

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: DeepSleep_DHT_Eink_Example; DeepSleep_DHT_LCD_Example;
  DeepSleepMode; TicklessMode;

| **Notes and Warnings**
| Include “PMUCLASS.h” in order to use the class function.

**PMUCLASS::RTCWakeSetup**
~~~~~~~~~~~~~~~~~~~~~~~~~~

| **Description**
| Set up the RTC timer for power save usage.

| **Syntax**
| void PMUClass::RTCWakeSetu(uint32_t duration_d, unit32_t duration_h,
  uint32_t duration_m, uint32_t duration_s);

| **Parameters**
| duration_d: Set alarm for number of days from 0.
| duration_h: Set alarm for number of hours from 0.
| duration_m: Set alarm for number of minutes from 0.
| duration_s: Set alarm for number of seconds from0.

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: DeepSleep_DHT_Eink_Example; DeepSleep_DHT_LCD_Example;
  DeepSleepMode; TicklessMode;

| **Notes and Warnings**
| Include “PMUCLASS.h” in order to use the class function.

**PMUCLASS::enable**
~~~~~~~~~~~~~~~~~~~~

| **Description**
| Enable power save deep sleep mode

| **Syntax**
| void PMUClass::enable(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: DeepSleep_DHT_Eink_Example; DeepSleep_DHT_LCD_Example;
  DeepSleepMode; TicklessMode;

| **Notes and Warnings**
| Include “PMUCLASS.h” in order to use the class function.

**PMUCLASS::AONWakeReason**
~~~~~~~~~~~~~~~~~~~~~~~~~~~

| **Description**
| Check the AON wakeup source

| **Syntax**
| uint32_t PMUClass::AONWakeReason(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| Returns the value of wakeup deepsleep source. “11” for AON pin, “22”
  for AON timer, “33” for RTC timer and “0” for none.

| **Example Code**
| Example: DeepSleep_DHT_Eink_Example; DeepSleep_DHT_LCD_Example;
  DeepSleepMode; TicklessMode;

| **Notes and Warnings**
| Include “PMUCLASS.h” in order to use the class function.

**PMUCLASS::WakePinCheck**
~~~~~~~~~~~~~~~~~~~~~~~~~~

| **Description**
| Check which AON GPIO pins are the wakeup source

| **Syntax**
| int PMUClass::WakePinCheck(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| Return the pin number for indicating Arduino pin names.

| **Example Code**
| Example: DeepSleep_DHT_Eink_Example; DeepSleep_DHT_LCD_Example;
  DeepSleepMode; TicklessMode;

| **Notes and Warnings**
| Include “PMUCLASS.h” in order to use the class function.

**PMUCLASS::AONWakeClear**
~~~~~~~~~~~~~~~~~~~~~~~~~~

| **Description**
| Clear all AON Wakeup source.

| **Syntax**
| void PMUClass::AONWakeClear(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: DeepSleep_DHT_Eink_Example; DeepSleep_DHT_LCD_Example;
  DeepSleepMode; TicklessMode;

| **Notes and Warnings**
| Include “PMUCLASS.h” in order to use the class function.

**PMUCLASS::DsleepWakeStatusGet**
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

| **Description**
| Check if deepsleep mode is set.

| **Syntax**
| bool PMUClass::DsleepWakeStatusGet(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| Return TRUE when enter DeepSleep Mode or FALSE for negative.

| **Example Code**
| Example: DeepSleep_DHT_Eink_Example; DeepSleep_DHT_LCD_Example;
  DeepSleepMode; TicklessMode;

| **Notes and Warnings**
| Include “PMUCLASS.h” in order to use the class function.

**PMUCLASS::TL_sysactive_time**
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

| **Description**
| Tickless mode system active time.

| **Syntax**
| void PMUClass::TL_sysactive_time(uint32_t duration_ms);

| **Parameters**
| duration_ms: Set the duration of system active time. The unit is in
  milliseconds.

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: DeepSleep_DHT_Eink_Example; DeepSleep_DHT_LCD_Example;
  DeepSleepMode; TicklessMode;

| **Notes and Warnings**
| Include “PMUCLASS.h” in order to use the class function.

**PMUCLASS::TL_wakelock**
~~~~~~~~~~~~~~~~~~~~~~~~~

| **Description**
| Tickless mode wake lock, select acquire or release.

| **Syntax**
| void PMUClass::TL_wakelock(uint32_t select_lock);

| **Parameters**
| select_lock: Wake lock selection value, “1” for acquire or “0” for
  release.

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: DeepSleep_DHT_Eink_Example; DeepSleep_DHT_LCD_Example;
  DeepSleepMode; TicklessMode;

| **Notes and Warnings**
| Include “PMUCLASS.h” in order to use the class function.

**PMUCLASS::DS_AON_TIMER_WAKEUP**
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

| **Description**
| Return the Wakeup source for DeepSleep Mode.

| **Syntax**
| void PMUClass::DS_AON_TIMER_WAKEUP(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| This function returns AON Timer as the wakeup source and output it on
  the Serial monitor.

| **Example Code**
| Example: DeepSleep_DHT_Eink_Example; DeepSleep_DHT_LCD_Example;
  DeepSleepMode; TicklessMode;

| **Notes and Warnings**
| Include “PMUCLASS.h” in order to use the class function.

**PMUCLASS::DS_RTC_WAKEUP**
~~~~~~~~~~~~~~~~~~~~~~~~~~~

| **Description**
| Return the Wakeup source for DeepSleep Mode.

| **Syntax**
| void PMUClass::DS_RTC_WAKEUP(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| This function returns RTC as the wakeup source and output it on the
  Serial monitor.

| **Example Code**
| Example: DeepSleep_DHT_Eink_Example; DeepSleep_DHT_LCD_Example;
  DeepSleepMode; TicklessMode;

| **Notes and Warnings**
| Include “PMUCLASS.h” in order to use the class function.

**PMUCLASS::TL_UART_WAKEUP**
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

| **Description**
| Return the Wakeup source for Tickless Mode.

| **Syntax**
| void PMUClass::TL_UART_WAKEUP(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| This function returns LOGUART as the wakeup source and output it on
  the Serial monitor.

| **Example Code**
| Example: DeepSleep_DHT_Eink_Example; DeepSleep_DHT_LCD_Example;
  DeepSleepMode; TicklessMode;

| **Notes and Warnings**
| Include “PMUCLASS.h” in order to use the class function.

**PMUCLASS::TL_RTC_WAKEUP**
~~~~~~~~~~~~~~~~~~~~~~~~~~~

| **Description**
| Return the Wakeup source for Tickless Mode.

| **Syntax**
| void PMUClass::TL_RTC_WAKEUP(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| This function returns RTC as the wakeup source and output it on the
  Serial monitor.

| **Example Code**
| Example: DeepSleep_DHT_Eink_Example; DeepSleep_DHT_LCD_Example;
  DeepSleepMode; TicklessMode;

| **Notes and Warnings**
| Include “PMUCLASS.h” in order to use the class function.

**PMUCLASS::AON_WAKEPIN_WAKEUP_GPIOA12**
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

| **Description**
| Return the Wakeup source.

| **Syntax**
| void PMUClass::AON_WAKEPIN_WAKEUP_GPIOA12(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| This function returns AON GPIOA12 pin as the wakeup source and output
  it on the Serial monitor.

| **Example Code**
| Example: DeepSleep_DHT_Eink_Example; DeepSleep_DHT_LCD_Example;
  DeepSleepMode; TicklessMode;

| **Notes and Warnings**
| Include “PMUCLASS.h” in order to use the class function.

**PMUCLASS::AON_WAKEPIN_WAKEUP_GPIOA13**
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

| **Description**
| Return the Wakeup source.

| **Syntax**
| void PMUClass::AON_WAKEPIN_WAKEUP_GPIOA13(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| This function returns AON GPIOA13 pin as the wakeup source and output
  it on the Serial monitor.

| **Example Code**
| Example: DeepSleep_DHT_Eink_Example; DeepSleep_DHT_LCD_Example;
  DeepSleepMode; TicklessMode;

| **Notes and Warnings**
| Include “PMUCLASS.h” in order to use the class function.

**PMUCLASS::AON_WAKEPIN_WAKEUP_GPIOA14**
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

| **Description**
| Return the Wakeup source.

| **Syntax**
| void PMUClass::AON_WAKEPIN_WAKEUP_GPIOA14(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| This function returns AON GPIOA14 pin as the wakeup source and output
  it on the Serial monitor.

| **Example Code**
| Example: DeepSleep_DHT_Eink_Example; DeepSleep_DHT_LCD_Example;
  DeepSleepMode; TicklessMode;

| **Notes and Warnings**
| Include “PMUCLASS.h” in order to use the class function.

**PMUCLASS::AON_WAKEPIN_WAKEUP_GPIOA15**
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

| **Description**
| Return the Wakeup source.

| **Syntax**
| void PMUClass::AON_WAKEPIN_WAKEUP_GPIOA15(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| This function returns AON GPIOA15 pin as the wakeup source and output
  it on the Serial monitor.

| **Example Code**
| Example: DeepSleep_DHT_Eink_Example; DeepSleep_DHT_LCD_Example;
  DeepSleepMode; TicklessMode;

| **Notes and Warnings**
| Include “PMUCLASS.h” in order to use the class function.

**PMUCLASS::AON_WAKEPIN_WAKEUP_GPIOA16**
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

| **Description**
| Return the Wakeup source.

| **Syntax**
| void PMUClass::AON_WAKEPIN_WAKEUP_GPIOA16(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| This function returns AON GPIOA16 pin as the wakeup source and output
  it on the Serial monitor.

| **Example Code**
| Example: DeepSleep_DHT_Eink_Example; DeepSleep_DHT_LCD_Example;
  DeepSleepMode; TicklessMode;

| **Notes and Warnings**
| Include “PMUCLASS.h” in order to use the class function.

**PMUCLASS::AON_WAKEPIN_WAKEUP_GPIOA17**
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

| **Description**
| Return the Wakeup source.

| **Syntax**
| void PMUClass::AON_WAKEPIN_WAKEUP_GPIOA17(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| This function returns AON GPIOA17 pin as the wakeup source and output
  it on the Serial monitor.

| **Example Code**
| Example: DeepSleep_DHT_Eink_Example; DeepSleep_DHT_LCD_Example;
  DeepSleepMode; TicklessMode;

| **Notes and Warnings**
| Include “PMUCLASS.h” in order to use the class function.

**PMUCLASS::AON_WAKEPIN_WAKEUP_GPIOA18**
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

| **Description**
| Return the Wakeup source.

| **Syntax**
| void PMUClass::AON_WAKEPIN_WAKEUP_GPIOA18(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| This function returns AON GPIOA18 pin as the wakeup source and output
  it on the Serial monitor.

| **Example Code**
| Example: DeepSleep_DHT_Eink_Example; DeepSleep_DHT_LCD_Example;
  DeepSleepMode; TicklessMode;

| **Notes and Warnings**
| Include “PMUCLASS.h” in order to use the class function.

**PMUCLASS::AON_WAKEPIN_WAKEUP_GPIOA19**
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

| **Description**
| Return the Wakeup source.

| **Syntax**
| void PMUClass::AON_WAKEPIN_WAKEUP_GPIOA19(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| This function returns AON GPIOA19 pin as the wakeup source and output
  it on the Serial monitor.

| **Example Code**
| Example: DeepSleep_DHT_Eink_Example; DeepSleep_DHT_LCD_Example;
  DeepSleepMode; TicklessMode;

| **Notes and Warnings**
| Include “PMUCLASS.h” in order to use the class function.

**PMUCLASS::AON_WAKEPIN_WAKEUP_GPIOA20**
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

| **Description**
| Return the Wakeup source.

| **Syntax**
| void PMUClass::AON_WAKEPIN_WAKEUP_GPIOA20(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| This function returns AON GPIOA20 pin as the wakeup source and output
  it on the Serial monitor.

| **Example Code**
| Example: DeepSleep_DHT_Eink_Example; DeepSleep_DHT_LCD_Example;
  DeepSleepMode; TicklessMode;

| **Notes and Warnings**
| Include “PMUCLASS.h” in order to use the class function.

**PMUCLASS::AON_WAKEPIN_WAKEUP_GPIOA21**
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

| **Description**
| Return the Wakeup source.

| **Syntax**
| void PMUClass::AON_WAKEPIN_WAKEUP_GPIOA21(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| This function returns AON GPIOA21 pin as the wakeup source and output
  it on the Serial monitor.

| **Example Code**
| Example: DeepSleep_DHT_Eink_Example; DeepSleep_DHT_LCD_Example;
  DeepSleepMode; TicklessMode;

| **Notes and Warnings**
| Include “PMUCLASS.h” in order to use the class function.

**PMUCLASS::AON_WAKEPIN_WAKEUP_GPIOA25**
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

| **Description**
| Return the Wakeup source.

| **Syntax**
| void PMUClass::AON_WAKEPIN_WAKEUP_GPIOA25(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| This function returns AON GPIOA25 pin as the wakeup source and output
  it on the Serial monitor.

| **Example Code**
| Example: DeepSleep_DHT_Eink_Example; DeepSleep_DHT_LCD_Example;
  DeepSleepMode; TicklessMode;

| **Notes and Warnings**
| Include “PMUCLASS.h” in order to use the class function.

**PMUCLASS::AON_WAKEPIN_WAKEUP_GPIOA26**
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

| **Description**
| Return the Wakeup source.

| **Syntax**
| void PMUClass::AON_WAKEPIN_WAKEUP_GPIOA26(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| This function returns AON GPIOA26 pin as the wakeup source and output
  it on the Serial monitor.

| **Example Code**
| Example: DeepSleep_DHT_Eink_Example; DeepSleep_DHT_LCD_Example;
  DeepSleepMode; TicklessMode;

| **Notes and Warnings**
| Include “PMUCLASS.h” in order to use the class function.
