Class EpdIF
================
**GTimerClass Class**

| **Description**
| GTimer is a hardware timer and this class is to operate it. The GTimer
  occupy same resource as PWM. Please make sure the timer is not
  conflict with you PWM index.

| **Syntax**
| class GTimerClass

**Members**

======================== ===========================================
**Public Constructors**   
======================== ===========================================
GTimerClass::GTimerClass Constructs a GTimerClass object
**Public Methods**        
GTimerClass::begin       Initialize a timer and start it immediately
GTimerClass::stop        Stop a specific timer
GTimerClass::reload      Reload a specific timer
GTimerClass::read_us     Read current countdown value
======================== ===========================================

**GTimerClass::begin**

| **Description**
| Initialize a timer and start it immediately.

| **Syntax**
| void GTimerClass::begin(uint32_t timerid, uint32_t duration_us, void
  (*handler)(uint32_t), bool periodical, uint32_t userdata);

| **Parameters**
| timerid: There are 5 valid GTimer with timer id 0~4.
| duration_us: The duration of the timer. The time unit is microsecond
  and the precision is 32768Hz.
| periodical: By default, the timer would keep periodically countdown
  and reload which means the handler would periodically be invoked.
| userdate: The user data brings to the handler.

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: TimerOneshot

/\*

This sketch shows how to use several hardware timers in invoke handler
only once for each timer.

\*/

**#include <GTimer.h>**

**void** myhandler(**uint32_t** data) {

Serial.print("I am timer!");

Serial.println(data);

}

**void** setup() {

// Open serial communications and wait for port to open:

Serial.begin(115200);

**while** (!Serial) {

; // wait for serial port to connect. Needed for native USB port only

}

// timerid 0, period 1s, invoke myhandler, invoke only once, user data
is 0

GTimer.begin(0, 1 \* 1000 \* 1000, myhandler, **false**, 0);

// timerid 1, period 2s, invoke myhandler, invoke only once, user data
is 1

GTimer.begin(1, 2 \* 1000 \* 1000, myhandler, **false**, 1);

GTimer.begin(2, 3 \* 1000 \* 1000, myhandler, **false**, 2);

GTimer.begin(3, 4 \* 1000 \* 1000, myhandler, **false**, 3);

}

**void** loop() {

delay(1000);

}

Example: TimerPeriodical

/\*

This sketch shows how to use hardware timer and invoke interrupt handler
periodically

\*/

**#include <GTimer.h>**

**int** counter = 0;

**void** myhandler(**uint32_t** data) {

counter++;

Serial.print("counter: ");

Serial.println(counter);

**if** (counter >= 10) {

Serial.println("stop timer");

GTimer.stop(0);

}

}

**void** setup() {

// Open serial communications and wait for port to open:

Serial.begin(115200);

**while** (!Serial) {

; // wait for serial port to connect. Needed for native USB port only

}

// timerid 0, period 1s, invoke myhander

GTimer.begin(0, (1 \* 1000 \* 1000), myhandler);

}

**void** loop() {

delay(1000);

}

| **Notes and Warnings**
| Include “GTimer.h” to use the class function.
|  

**GTimerClass::stop**

| **Description**
| Stop a specific timer

| **Syntax**
| void GTimerClass::stop(uint32_t timerid);

| **Parameters**
| timerid: Stop the timer with this timer id

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: TimerPeriodical, please refer to GTimerClass:: begin for more
  details.

| **Notes and Warnings**
| Include “GTimer.h” to use the class function.
|  

**GTimerClass::reload**

| **Description**
| Reload a specific timer. The GTimer is a countdown timer. Reload it
  would make it discard the current countdown value and restart
  countdown based on the duration.

| **Syntax**
| void GTimerClass::reload(uint32_t timerid, uint32_t duration_us);

| **Parameters**
| timerid: The timer to be modified
| duration_us: The updated duration in unit of microseconds

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| Include “GTimer.h” to use the class function.
|  

**GTimerClass::read_us**

| **Description**
| Read the current countdown value

| **Syntax**
| uint64_t GTimerClass::read_us(uint32_t timerid);

| **Parameters**
| timerid: The timer to be read

| **Returns**
| The function returns the current countdown value.

| **Example Code**
| NA

| **Notes and Warnings**
| Include “GTimer.h” to use the class function.
