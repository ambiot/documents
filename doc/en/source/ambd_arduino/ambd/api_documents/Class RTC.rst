Class RTC
=============
**RTC Class**

| **Description**
| A class used for displaying date and time and alarm configuration
  using RTC, the independent BCD (Binary-Coded-Decimal) timer.

| **Syntax**
| class RTC

**Members**

+-----------------------------------------------------------------+---+
| **Public Constructors**                                         |   |
+=================================================================+===+
| A public constructor should not be used as this class is        |   |
| intended to be a singleton class. Access member functions using |   |
| the object instance named RTC.                                  |   |
+-----------------------------------------------------------------+---+

+--------------------+------------------------------------------------+
| **Public Methods** |                                                |
+====================+================================================+
| RTC:: Init         | Initializes the RTC device, including the      |
|                    | Clock, the RTC registers, and other functions  |
+--------------------+------------------------------------------------+
| RTC:: DeInit       | Deinitialize the RTC device                    |
+--------------------+------------------------------------------------+
| RTC:: Write        | Set the specified timestamp in seconds to RTC  |
+--------------------+------------------------------------------------+
| RTC:: Read         | Get the current timestamp in seconds from RTC  |
+--------------------+------------------------------------------------+
| RTC:: Wait         | Wait for 1 second                              |
+--------------------+------------------------------------------------+
| RTC:: SetEpoch     | Convert human-readable time to epoch time      |
+--------------------+------------------------------------------------+

**RTC::Init**

| **Description**
| Initializes the RTC device, including the Clock, the RTC registers,
  and other functions.

| **Syntax**
| void RTC::Init(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: RTC

/*\*

\* This function describes how to use the RTC API.

\* The RTC function is implemented by an independent BCD timer/counter.

\* This example will print out the time information every second.

\*/

**#include <stdio.h>**

**#include <time.h>**

**#include "rtc.h"**

**#define YEAR 2020**

**#define MONTH 9**

**#define DAY 10**

**#define HOUR 20**

**#define MIN 30**

**#define SEC 40**

/\* Create an rtc object \*/

RTC rtc;

**int32_t** seconds;

**struct** tm \*timeinfo;

**void** setup() {

Serial.begin(115200);

rtc.Init(); // initialize RTC

}

**void** loop() {

// step 1: convert user time to epoch

**int** epochTime = humanReadableToEpoch(YEAR, MONTH, DAY, HOUR, MIN,
SEC);

// step 2: write epoch time to rtc

rtc.Write(epochTime);

**while** (1) {

seconds = rtc.Read();

printf("Epoch Time (in s) since January 1, 1970 = %ds\n", seconds);

printf("Time as a basic string = %s", ctime(&seconds));

timeinfo = localtime(&seconds);

printf("Time as a custom formatted string = %d-%d-%d %d:%d:%d\n",

(timeinfo->tm_year + 1900), (timeinfo->tm_mon + 1), timeinfo->tm_mday,
timeinfo->tm_hour,

timeinfo->tm_min, timeinfo->tm_sec);

Serial.println();

rtc.wait(1);

}

}

// convert human readable time to epoch time

**int** humanReadableToEpoch(**int** year, **int** month, **int** day,
**int** hour, **int** min, **int** sec) {

**struct** tm t;

time_t t_of_day;

t.tm_year = year - 1900; // Year - 1970

t.tm_mon = month - 1; // Month, where 0 = jan

t.tm_mday = day; // Day of the month

t.tm_hour = hour;

t.tm_min = min;

t.tm_sec = sec;

t.tm_isdst = -1; // Is DST on? 1 = yes, 0 = no, -1 = unknown

t_of_day = mktime(&t);

// printf("seconds since the Epoch: %d\n", (long)t_of_day);

**return** t_of_day;

}

| **Notes and Warnings**
| NA

**RTC::DeInit**

| **Description**
| Deinitializes the RTC device.

| **Syntax**
| void RTC::DeInit(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: RTC
| Details of the code can be found in the previous section of RTC::
  Init.

| **Notes and Warnings**
| NA

**RTC:: Write**

| **Description**
| Set the specified timestamp in seconds to RTC. Seconds from 1970.1.1
  00:00:00 (YEAR.MONTH.DAY, HOUR: MIN: SECONDS) to specified date and
  time which is to be set.

| **Syntax**
| void RTC::Write(int t);

| **Parameters**
| Parameters
| t: Seconds from 1970.1.1 00:00:00 (YEAR.MONTH.DAY, HOUR: MIN: SECONDS)
  to specified date and time which is to be set.

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: RTC
| Details of the code can be found in the previous section of RTC::
  Init.

| **Notes and Warnings**
| NA

**RTC::Read**

| **Description**
| Get the current timestamp in seconds from RTC. The current timestamp
  in seconds which is calculated from 1970.1.1 00:00:00 (YEAR.MONTH.DAY,
  HOUR: MIN: SECONDS).

| **Syntax**
| int32_t RTC::Read(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns the current timestamp in seconds which is
  calculated from 1970.1.1 00:00:00 (YEAR.MONTH.DAY, HOUR: MIN:
  SECONDS).

| **Example Code**
| Example: RTC
| Details of the code can be found in the previous section of RTC::
  Init.

| **Notes and Warnings**
| NA

**RTC:: Wait**

| **Description**
| Send IR raw data.

| **Syntax**
| void RTC::wait(float s);

| **Parameters**
| s: unit microseconds (1 us)

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: RTC
| Details of the code can be found in the previous section of RTC::
  Init.

| **Notes and Warnings**
| NA

**RTC:: SetEpoch**

| **Description**
| Convert human-readable time to epoch time

| **Syntax**
| int RTC:: SetEpoch(int year, int month, int day, int hour, int min,
  int sec);

| **Parameters**
| year: user input year
| month: user input month
| day: user input day
| hour: user input hour
| min: user input minutes
| sec: user input seconds

| **Returns**
| The function returns epoch time in seconds for RTC use.

| **Example Code**
| Example: RTC
| Details of the code can be found in the previous section of RTC::
  Init.

| **Notes and Warnings**
| NA
