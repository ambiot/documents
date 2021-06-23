Class AmebaServo
=====================================

**AmebaServo Class**

**Description**

Defines a class of manipulating servo motors connected to Arduino pins.

**Syntax**

class AmebaServo

**Members**

+-------------------------------+-------------------------------------+
| **Public Constructors**       |                                     |
+===============================+=====================================+
| AmebaServo::AmebaServo        | Constructs an AmebaServo object.    |
+-------------------------------+-------------------------------------+
| **Public Methods**            |                                     |
+-------------------------------+-------------------------------------+
| AmebaServo::attach            | Attach the given pin to the next    |
|                               | free channel.                       |
+-------------------------------+-------------------------------------+
| AmebaServo::detach            | Detach the servo.                   |
+-------------------------------+-------------------------------------+
| AmebaServo::write             | Write value, if the value is < 200  |
|                               | it's treated as an angle, otherwise |
|                               | as pulse-width in microseconds.     |
+-------------------------------+-------------------------------------+
| AmebaServo::writeMicroseconds | Write pulse width in microseconds.  |
+-------------------------------+-------------------------------------+
| AmebaServo::read              | Output current pulse width as an    |
|                               | angle between 0 and 180 degrees.    |
+-------------------------------+-------------------------------------+
| AmebaServo::readMicroseconds  | Output current pulse width in       |
|                               | microseconds for this servo.        |
+-------------------------------+-------------------------------------+
| AmebaServo::attached          | Check if the servo is attached.     |
+-------------------------------+-------------------------------------+

**AmebaServo::attach**

**Description**

Attach the given pin to the next free channel, sets pinMode (including
minimum and maximum values for writes), returns channel number, or 0 if
failure.

**Syntax**

uint8_t attach(int pin);

uint8_t attach(int pin, int min, int max);

**Parameters**

pin: ThThe Arduino/Ameba1 PIN to be attachede Arduino pin number to be
attached.

min: Minimum values for writes.

max: Maximum values for writes.

**Returns**

The function returns channel number or 0

**Example Code**

Example: ServoSweep

The code demos servo motor sweeping from 0 degrees to 180 degrees then
sweep back to 0 degrees in the step of 1 degree.

/\* Sweep

by BARRAGAN < http://barraganstudio.com >

This example code is in the public domain.

modified 8 Nov 2013

by Scott Fitzgerald

http://www.arduino.cc/en/Tutorial/Sweep

refined 2016/03/18 by Realtek

\*/

**#include "AmebaServo.h"**

// create servo object to control a servo

// 4 servo objects can be created correspond to PWM pins

AmebaServo myservo;

// variable to store the servo position

**int** pos = 0;

**void** setup() {

**#if defined(BOARD_RTL8195A)**

// attaches the servo on pin 9 to the servo object

myservo.attach(9);

**#elif defined(BOARD_RTL8710)**

// attaches the servo on pin 13 to the servo object

myservo.attach(13);

**#elif defined(BOARD_RTL8721D)**

// attaches the servo on pin 8 to the servo object

myservo.attach(8);

**#else**

// attaches the servo on pin 9 to the servo object

myservo.attach(9);

**#endif**

}

**void** loop() {

// goes from 0 degrees to 180 degrees in steps of 1 degree

**for** (pos = 0; pos <= 180; pos += 1) {

// tell servo to go to position in variable 'pos'

myservo.write(pos);

// waits 15ms for the servo to reach the position

delay(15);

}

// goes from 180 degrees to 0 degrees

**for** (pos = 180; pos >= 0; pos -= 1) {

// tell servo to go to position in variable 'pos'

myservo.write(pos);

// waits 15ms for the servo to reach the position

delay(15);

}

}

**Notes and Warnings**

Every time must include the header file “AmebaServo.h” in front of the
project to use the class function.

 

**AmebaServo::detach**

**Description**

Detach the servo.

**Syntax**

void AmebaServo::detach(void);

**Parameters**

The function requires no input parameter.

**Returns**

The function returns nothing.

**Example Code**

NA

**Notes and Warnings**

Every time must include the header file “AmebaServo.h” in front of the
project to use the class function.

 

**AmebaServo::write**

**Description**

Write an integer value to the function, if the value is < 200, it’s
being treated as an angle, otherwise as pulse-width in microseconds.

**Syntax**

void AmebaServo::write(int value);

**Parameters**

value: The value < 200 its treated as an angle; otherwise as pulse width
in microseconds.

**Returns**

The function returns nothing.

**Example Code**

Example: ServoSweep

The code demos servo motor sweeping from 0 degrees to 180 degrees then
sweep back to 0 degrees in the step of 1 degree. Please refer to code in
“AmebaServo:: attach” section.

**Notes and Warnings**

Every time must include the header file “AmebaServo.h” in front of the
project to use the class function.

 

**AmebaServo::writeMicroseconds**

**Description**

Write pulse width to the servo in microseconds.

**Syntax**

void AmebaServo::writeMicroseconds(int value);

**Parameters**

value: Write value the pulse width in microseconds.

**Returns**

The function returns nothing.

**Example Code**

NA

**Notes and Warnings**

Every time must include the header file “AmebaServo.h” in front of the
project to use the class function.

 

**AmebaServo::read**

**Description**

The function reads current pulse width and returns as an angle between 0
and 180 degrees.

**Syntax**

int AmebaServo::read(void);

**Parameters**

The function requires no input parameter.

**Returns**

The pulse width as an angle between 0 ~ 180 degrees.

**Example Code**

NA

**Notes and Warnings**

Every time must include the header file “AmebaServo.h” in front of the
project to use the class function.

 

**AmebaServo::readMicroseconds**

**Description**

The function returns a Boolean value “true” if this servo is attached,
otherwise returns “false”.

**Syntax**

int AmebaServo::readMicroseconds(void);

**Parameters**

The function requires no input parameter.

**Returns**

The function returns current servo pulse width in microseconds.

**Example Code**

NA

**Notes and Warnings**

Every time must include the header file “AmebaServo.h” in front of the
project to use the class function.

 

**AmebaServo::attached**

**Description**

It returns true if this servo is attached, otherwise false.

**Syntax**

bool AmebaServo::attached(void);

**Parameters**

The function requires no input parameter.

**Returns**

The function returns a Boolean value as true or false.

**Example Code**

Example: ServoSweep

The code demos servo motor sweeping from 0 degrees to 180 degrees then
sweep back to 0 degrees in the step of 1 degree. Please refer to code in
“AmebaServo:: attach” section.

**Notes and Warnings**

Every time must include the header file “AmebaServo.h” in front of the
project to use the class function.
