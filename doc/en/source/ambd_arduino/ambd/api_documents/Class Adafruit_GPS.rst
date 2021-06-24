=====================================
Class Adafruit_GPS
=====================================
**Adafruit_GPS Class**

| **Description**
| Defines a class to use GPS module on Ameba.

| **Syntax**
| class Adafruit_GPS

**Members**

+---------------------------------+-----------------------------------+
| **Public Constructors**         |                                   |
+=================================+===================================+
| Adafruit_GPS::Adafruit_GPS      | Constructs an Adafruit_GPS object |
+---------------------------------+-----------------------------------+
| **Public Methods**              |                                   |
+---------------------------------+-----------------------------------+
| Adafruit_GPS::begin             | Initialize serial communication   |
+---------------------------------+-----------------------------------+
| \*Adafruit_GPS:: lastNMEA       | Returns the last NMEA line        |
|                                 | received and unsets the received  |
|                                 | flag                              |
+---------------------------------+-----------------------------------+
| Adafruit_GPS:: newNMEAreceived  | Check to see if a new NMEA line   |
|                                 | has been received                 |
+---------------------------------+-----------------------------------+
| Adafruit_GPS:: common_init      | Initialization code used by all   |
|                                 | constructor types                 |
+---------------------------------+-----------------------------------+
| Adafruit_GPS:: sendCommand      | Send a command to the GPS device  |
+---------------------------------+-----------------------------------+
| Adafruit_GPS:: pause            | Pause/unpause receiving new data  |
+---------------------------------+-----------------------------------+
| Adafruit_GPS:: parseHex         | Read a Hex value and return the   |
|                                 | decimal equivalent                |
+---------------------------------+-----------------------------------+
| Adafruit_GPS:: read             | Read one character from the GPS   |
|                                 | device                            |
+---------------------------------+-----------------------------------+
| Adafruit_GPS:: parse            | Parse an NMEA string              |
+---------------------------------+-----------------------------------+
| Adafruit_GPS:: wakeup           | Wake the sensor up                |
+---------------------------------+-----------------------------------+
| Adafruit_GPS:: standby          | Standby Mode Switches             |
+---------------------------------+-----------------------------------+
| Adafruit_GPS::waitForSentence   | Wait for a specified sentence     |
|                                 | from the device                   |
+---------------------------------+-----------------------------------+
| Adafruit_GPS::LOCUS_StartLogger | Start the LOCUS logger            |
+---------------------------------+-----------------------------------+
| Adafruit_GPS::LOCUS_StopLogger  | Stop the LOCUS logger             |
+---------------------------------+-----------------------------------+
| Adafruit_GPS::LOCUS_ReadStatus  | Read the logger status            |
+---------------------------------+-----------------------------------+

**Adafruit_GPS::Adafruit_GPS**

| **Description**
| Constructs an Adafruit_GPS object and initialize serial using a
  SoftSerial object.

| **Syntax**
| Adafruit_GPS::Adafruit_GPS(SoftwareSerial \*ser)
| Adafruit_GPS::Adafruit_GPS(HardwareSerial \*ser)

| **Parameters**
| ser: a Serial instance

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: Adafruit_GPS_parsing
| This example code from Adafruit demonstrates GPS modules using
  MTK3329/MTK3339 driver. This code shows how to listen to the GPS
  module in an interrupt which allows the program to have more ‘freedom’
  – just parse when a new NMEA sentence is available! Then access data
  when desired.

**#include <Adafruit_GPS.h>**

**#include <SoftwareSerial.h>**

// If you're using a GPS module:

// Connect the GPS Power pin to 3.3V

// Connect the GPS Ground pin to ground

// Connect the GPS TX (transmit) pin to Digital 0

// Connect the GPS RX (receive) pin to Digital 1

**#if defined(BOARD_RTL8195A)**

SoftwareSerial mySerial(0, 1);

**#elif defined(BOARD_RTL8710)**

SoftwareSerial mySerial(17, 5); // RTL8710 need change GPS TX/RX to pin
17 and 5

**#else**

SoftwareSerial mySerial(0, 1);

**#endif**

Adafruit_GPS GPS(&mySerial);

// Set GPSECHO to 'false' to turn off echoing the GPS data to the Serial
console

// Set to 'true' if you want to debug and listen to the raw GPS
sentences.

**#define GPSECHO false**

**void** setup()

{

Serial.begin(38400);

Serial.println("Adafruit GPS library basic test!");

// 9600 NMEA is the default baud rate for Adafruit MTK GPS's- some use
4800

GPS.begin(9600);

// uncomment this line to turn on RMC (recommended minimum) and GGA (fix
data) including altitude

GPS.sendCommand(PMTK_SET_NMEA_OUTPUT_RMCGGA);

// uncomment this line to turn on only the "minimum recommended" data

//GPS.sendCommand(PMTK_SET_NMEA_OUTPUT_RMCONLY);

// For parsing data, we don't suggest using anything but either RMC only
or RMC+GGA since

// the parser doesn't care about other sentences at this time

// Set the update rate

GPS.sendCommand(PMTK_SET_NMEA_UPDATE_1HZ); // 1 Hz update rate

// For the parsing code to work nicely and have time to sort thru the
data, and

// print it out we don't suggest using anything higher than 1 Hz

// Request updates on antenna status, comment out to keep quiet

GPS.sendCommand(PGCMD_ANTENNA);

delay(1000);

// Ask for firmware version

mySerial.println(PMTK_Q_RELEASE);

}

**uint32_t** timer = millis();

**void** loop() // run over and over again

{

// in case you are not using the interrupt above, you'll

// need to 'hand query' the GPS, not suggested :(

// read data from the GPS in the 'main loop'

**char** c = GPS.read();

// if you want to debug, this is a good time to do it!

**if** (GPSECHO)

**if** (c) Serial.print(c);

// if a sentence is received, we can check the checksum, parse it...

**if** (GPS.newNMEAreceived()) {

// a tricky thing here is if we print the NMEA sentence, or data

// we end up not listening and catching other sentences!

// so be very wary if using OUTPUT_ALLDATA and trytng to print out data

//Serial.println(GPS.lastNMEA()); // this also sets the
newNMEAreceived() flag to false

**if** (!GPS.parse(GPS.lastNMEA())) // this also sets the
newNMEAreceived() flag to false

**return**; // we can fail to parse a sentence in which case we should
just wait for another

}

// if millis() or timer wraps around, we'll just reset it

**if** (timer > millis()) timer = millis();

// approximately every 2 seconds or so, print out the current stats

**if** (millis() - timer > 2000) {

timer = millis(); // reset the timer

Serial.print("\nTime: ");

Serial.print(GPS.hour, DEC); Serial.print(':');

Serial.print(GPS.minute, DEC); Serial.print(':');

Serial.print(GPS.seconds, DEC); Serial.print('.');

Serial.println(GPS.milliseconds);

Serial.print("Date: ");

Serial.print(GPS.day, DEC); Serial.print('/');

Serial.print(GPS.month, DEC); Serial.print("/20");

Serial.println(GPS.year, DEC);

Serial.print("Fix: "); Serial.print((**int**)GPS.fix);

Serial.print(" quality: "); Serial.println((**int**)GPS.fixquality);

**if** (GPS.fix) {

Serial.print("Location: ");

Serial.print(GPS.latitude, 4); Serial.print(GPS.lat);

Serial.print(", ");

Serial.print(GPS.longitude, 4); Serial.println(GPS.lon);

Serial.print("Location (in degrees, works with Google Maps): ");

Serial.print(GPS.latitudeDegrees, 4);

Serial.print(", ");

Serial.println(GPS.longitudeDegrees, 4);

Serial.print("Speed (knots): "); Serial.println(GPS.speed);

Serial.print("Angle: "); Serial.println(GPS.angle);

Serial.print("Altitude: "); Serial.println(GPS.altitude);

Serial.print("Satellites: "); Serial.println((**int**)GPS.satellites);

}

}

}

| **Notes and Warnings**
| IMPORTANT: SoftSerial is using hardware serial so pin mapping cannot
  be altered.
|  

**Adafruit_GPS::begin**

| **Description**
| Initialize serial communication

| **Syntax**
| void Adafruit_GPS::begin(uint16_t baud)

| **Parameters**
| baud: serial baud rate

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: Adafruit_GPS_parsing
| The details of the code can be found in the previous section of
  Adafruit_GPS:: Adafruit_GPS.

| **Notes and Warnings**
| NA
|  

**\*Adafruit_GPS::lastNMEA**

| **Description**
| Returns the last NMEA line received and unsets the received flag

| **Syntax**
| char \*Adafruit_GPS::lastNMEA(void)

| **Parameters**
| The function requires no input parameter.

| **Returns**
| Pointer to the last line string

| **Example Code**
| Example: Adafruit_GPS_parsing
| The details of the code can be found in the previous section of
  Adafruit_GPS:: Adafruit_GPS.

| **Notes and Warnings**
| NA
|  

**Adafruit_GPS::newNMEAreceived**

| **Description**
| Check to see if a new NMEA line has been received

| **Syntax**
| boolean Adafruit_GPS::newNMEAreceived(void)

| **Parameters**
| The function requires no input parameter.

| **Returns**
| True if received, false if not

| **Example Code**
| Example: Adafruit_GPS_parsing
| The details of the code can be found in the previous section of
  Adafruit_GPS:: Adafruit_GPS.

| **Notes and Warnings**
| NA
|  

**Adafruit_GPS::common_init**

| **Description**
| Initialization code used by all constructor types

| **Syntax**
| void Adafruit_GPS::common_init(void)

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| NA
|  

**Adafruit_GPS::sendCommand**

| **Description**
| Send a command to the GPS device

| **Syntax**
| void Adafruit_GPS::sendCommand(const char \*str)

| **Parameters**
| str: Pointer to a string holding the command to send

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: Adafruit_GPS_parsing
| The details of the code can be found in the previous section of
  Adafruit_GPS:: Adafruit_GPS.

| **Notes and Warnings**
| NA
|  

**Adafruit_GPS::pause**

| **Description**
| Pause/unpause receiving new data

| **Syntax**
| void Adafruit_GPS::pause(boolean p)

| **Parameters**
| p: True = pause, false = unpause

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| NA
|  

**Adafruit_GPS::parseHex**

| **Description**
| Read a Hex value and return the decimal equivalent

| **Syntax**
| uint8_t Adafruit_GPS::parseHex(char c)

| **Parameters**
| c: Hex value

| **Returns**
| The decimal equivalent of the Hex value

| **Example Code**
| NA

| **Notes and Warnings**
| NA
|  

**Adafruit_GPS::read**

| **Description**
| Read one character from the GPS device

| **Syntax**
| char Adafruit_GPS::read(void)

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The character that we received, or 0 if nothing was available

| **Example Code**
| Example: Adafruit_GPS_parsing
| The details of the code can be found in the previous section of
  Adafruit_GPS:: Adafruit_GPS.

| **Notes and Warnings**
| NA
|  

**Adafruit_GPS::parse**

| **Description**
| Parse an NMEA string

| **Syntax**
| boolean Adafruit_GPS::parse(char \*nmea)

| **Parameters**
| nmea: an NMEA string

| **Returns**
| True if we parsed it, false if it has invalid data

| **Example Code**
| Example: Adafruit_GPS_parsing

| **Notes and Warnings**
| NA
|  

**Adafruit_GPS::wakeup**

| **Description**
| Wake the sensor up

| **Syntax**
| boolean Adafruit_GPS::wakeup(void)

| **Parameters**
| The function requires no input parameter.

| **Returns**
| True if woken up, false if not in standby or failed to wake

| **Example Code**
| NA

| **Notes and Warnings**
| NA
|  

**Adafruit_GPS::standby**

| **Description**
| Standby Mode Switches

| **Syntax**
| boolean Adafruit_GPS::standby(void)

| **Parameters**
| The function requires no input parameter.

| **Returns**
| False if already in standby, true if it entered standby

| **Example Code**
| NA

| **Notes and Warnings**
| NA
|  

**Adafruit_GPS::waitForSentence**

| **Description**
| Wait for a specified sentence from the device

| **Syntax**
| boolean Adafruit_GPS::waitForSentence(const char \*wait4me, uint8_t
  max)

| **Parameters**
| wait4me: Pointer to a string holding the desired response
| max: How long to wait, default is MAXWAITSENTENCE

| **Returns**
| True if we got what we wanted, false otherwise

| **Example Code**
| NA

| **Notes and Warnings**
| NA
|  

**Adafruit_GPS::LOCUS_StartLogger**

| **Description**
| Start the LOCUS logger

| **Syntax**
| boolean Adafruit_GPS::LOCUS_StartLogger(void)

| **Parameters**
| The function requires no input parameter.

| **Returns**
| True on success, false if it failed

| **Example Code**
| NA

| **Notes and Warnings**
| NA
|  

**Adafruit_GPS::LOCUS_StopLogger**

| **Description**
| Stop the LOCUS logger

| **Syntax**
| boolean Adafruit_GPS::LOCUS_StopLogger(void)

| **Parameters**
| The function requires no input parameter.

| **Returns**
| True on success, false if it failed

| **Example Code**
| NA

| **Notes and Warnings**
| NA
|  

**Adafruit_GPS::LOCUS_ReadStatus**

| **Description**
| Read the logger status

| **Syntax**
| boolean Adafruit_GPS::LOCUS_ReadStatus(void)

| **Parameters**
| The function requires no input parameter.

| **Returns**
| True if we read the data, false if there was no response

| **Example Code**
| NA

| **Notes and Warnings**
| NA
|  
