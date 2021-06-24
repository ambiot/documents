Class PMUClass
===================
**PMUClass Class**

| **Description**
| Defines a class of using power save API.

| **Syntax**
| class PMUClass

**Members**

+-------------------------------+-------------------------------------+
| **Public Constructors**       |                                     |
+===============================+=====================================+
| PMUClass::PMUClass            | Constructs a PMUClass object        |
+-------------------------------+-------------------------------------+
| **Public Methods**            |                                     |
+-------------------------------+-------------------------------------+
| PMUCLASS::begin               | Initialize the PMUCLASS select      |
|                               | sleep mode                          |
+-------------------------------+-------------------------------------+
| PMUCLASS::AONTimerDuration    | Set time duration of AON timer      |
+-------------------------------+-------------------------------------+
| PMUCLASS::AONTimerCmd         | Disable the AON timer for power     |
|                               | save usage                          |
+-------------------------------+-------------------------------------+
| PMUCLASS::RTCWakeSetup        | Setup RTC timer for power save      |
|                               | usage                               |
+-------------------------------+-------------------------------------+
| PMUCLASS::enable              | Enable power save deep sleep mode   |
+-------------------------------+-------------------------------------+
| PMUCLASS::AONWakeReason       | Check the AON wakeup source         |
+-------------------------------+-------------------------------------+
| PMUCLASS::WakePinCheck        | Check AON pin as wake up source     |
+-------------------------------+-------------------------------------+
| PMUCLASS::AONWakeClear        | Clear all AON wake up source        |
+-------------------------------+-------------------------------------+
| PMUCLASS::DsleepWakeStatusGet | Check if set deepsleep mode         |
+-------------------------------+-------------------------------------+
| PMUCLASS::TL_sysactive_time   | Tickless mode system active time    |
+-------------------------------+-------------------------------------+
| PMUCLASS::TL_wakelock         | Tickless mode wake lock, select     |
|                               | acquire or release                  |
+-------------------------------+-------------------------------------+

**PMUCLASS::PMUCLASS**

| **Description**
| Constructs a PMUCLASS object.

| **Syntax**
| PMUCLASS::PMUCLASS(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: DeepSleep_DHT_LCD_Example; DeepSleepMode; TicklessMode

| **Notes and Warnings**
| Include “PMUCLASS.h” in order to use the class function.
|  

**PMUCLASS::begin**

| **Description**
| Initialize the PMUCLASS select sleep mode.

| **Syntax**
| void PMUClass::begin(uint32_t sleep_mode);

| **Parameters**
| sleep_mode: Selection value, “11” enters the DeepSleep Mode, “22”
  enters the Tickless Mode.

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: DeepSleep_DHT_LCD_Example; DeepSleepMode; TicklessMode

| **Notes and Warnings**
| Include “PMUCLASS.h” in order to use the class function.
|  

**PMUCLASS::AONTimerDuration**

| **Description**
| Set time duration of AON timer.

| **Syntax**
| void PMUClass::AONTimerDuration(uint32_t duration_ms);

| **Parameters**
| duration_ms: Timer duration between 0 to 32760000ms.

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: DeepSleep_DHT_LCD_Example; DeepSleepMode; TicklessMode

| **Notes and Warnings**
| Include “PMUCLASS.h” in order to use the class function.
|  

**PMUCLASS::AONTimerCmd**

| **Description**
| Disable the AON timer for power save usage.

| **Syntax**
| void PMUClass::AONTimerCmd(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: DeepSleep_DHT_LCD_Example; DeepSleepMode; TicklessMode

| **Notes and Warnings**
| Include “PMUCLASS.h” in order to use the class function.
|  

**PMUCLASS::RTCWakeSetup**

| **Description**
| Setup RTC timer for power save usage.

| **Syntax**
| void PMUClass::RTCWakeSetup(uint32_t duration_d, uint32_t duration_h,
  uint32_t duration_m, uint32_t duration_s);

| **Parameters**
| duration_d: Set alarm number of days from 0.
| duration_h: Set alarm number of hours from 0.
| duration_m: Set alarm number of minutes from 0.
| duration_s: Set alarm number of seconds from 0.

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: DeepSleep_DHT_LCD_Example; DeepSleepMode; TicklessMode

| **Notes and Warnings**
| Include “PMUCLASS.h” in order to use the class function.
|  

**PMUCLASS::enable**

| **Description**
| Enable power save deep sleep mode.

| **Syntax**
| void PMUClass::enable(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: DeepSleep_DHT_LCD_Example; DeepSleepMode; TicklessMode

| **Notes and Warnings**
| Include “PMUCLASS.h” in order to use the class function.
|  

**PMUCLASS::AONWakeReason**

| **Description**
| Check the AON wakeup source.

| **Syntax**
| uint32_t PMUClass::AONWakeReason(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| Return value of wakeup deepsleep source. “11” for AON pin, “22” for
  AON timer, “33” for RTC timer and “0” for none.

| **Example Code**
| Example: DeepSleep_DHT_LCD_Example; DeepSleepMode; TicklessMode

| **Notes and Warnings**
| Include “PMUCLASS.h” in order to use the class function.
|  

**PMUCLASS::WakePinCheck**

| **Description**
| Check AON pin as wake up source.

| **Syntax**
| int PMUClass::WakePinCheck(void);

| **Parameters**
| int PMUClass::WakePinCheck(void);

| **Returns**
| Return the pin number for indicating Arduino pin names.

| **Example Code**
| Example: DeepSleep_DHT_LCD_Example; DeepSleepMode; TicklessMode

| **Notes and Warnings**
| Include “PMUCLASS.h” in order to use the class function.
|  

**PMUCLASS::AONWakeClear**

| **Description**
| Clear all AON wake up source.

| **Syntax**
| void PMUClass::AONWakeClear(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: DeepSleep_DHT_LCD_Example; DeepSleepMode; TicklessMode

| **Notes and Warnings**
| Include “PMUCLASS.h” in order to use the class function.
|  

**PMUCLASS::DsleepWakeStatusGet**

| **Description**
| Check if set deepsleep mode.

| **Syntax**
| bool PMUClass::DsleepWakeStatusGet(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| Return True for enter DeepSleep Mode or False for negative.

| **Example Code**
| Example: DeepSleep_DHT_LCD_Example; DeepSleepMode; TicklessMode

| **Notes and Warnings**
| Include “PMUCLASS.h” in order to use the class function.
|  

**PMUCLASS::TL_sysactive_time**

| **Description**
| Tickless mode system active time.

| **Syntax**
| void PMUClass::TL_sysactive_time(uint32_t duration_ms);

| **Parameters**
| duration_ms: Set time duration of system active time. Unit is
  milliseconds.

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: DeepSleep_DHT_LCD_Example; DeepSleepMode; TicklessMode

| **Notes and Warnings**
| Include “PMUCLASS.h” in order to use the class function.
|  

**PMUCLASS::TL_wakelock**

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
| Example: DeepSleep_DHT_LCD_Example; DeepSleepMode; TicklessMode

| **Notes and Warnings**
| Include “PMUCLASS.h” in order to use the class function.
