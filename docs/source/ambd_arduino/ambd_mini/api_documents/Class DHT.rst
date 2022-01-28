Class DHT
===========
**DHT Class**

| **Description**
| Defines a class of using DHT temperature & humidity sensors

| **Syntax**
| class DHT

**Members**

+-------------------------+-------------------------------------------+
| **Public Constructors** |                                           |
+=========================+===========================================+
| DHT::DHT                | Constructs a DHT object                   |
+-------------------------+-------------------------------------------+
| **Public Methods**      |                                           |
+-------------------------+-------------------------------------------+
| DHT::begin              | Initialize the DHT sensor                 |
+-------------------------+-------------------------------------------+
| DHT::readTemperature    | Read temperature(Fahrenheit or Celcius)   |
|                         | from the DHT sensor                       |
+-------------------------+-------------------------------------------+
| DHT::convertCtoF        | Convert a value from Celcius to           |
|                         | Fahrenheit                                |
+-------------------------+-------------------------------------------+
| DHT::convertFtoC        | Convert a value from Fahrenheit to        |
|                         | Celcius                                   |
+-------------------------+-------------------------------------------+
| DHT::readHumidity       | Read humidity(%) from the DHT sensor      |
+-------------------------+-------------------------------------------+
| DHT::computeHeatIndex   | Compute the HeatIndex from the readings   |
|                         | (Using both Rothfusz and Steadman’s       |
|                         | equations)                                |
+-------------------------+-------------------------------------------+
| DHT::read               | Check if the sensor is readable           |
+-------------------------+-------------------------------------------+

**DHT::DHT**

| **Description**
| Constructs a DHT object.

| **Syntax**
| DHT::DHT(uint8_t pin, uint8_t type, uint8_t count)

| **Parameters**
| pin: The Arduino digital PIN connected
| type: The DHT sensor type(DHT11, DHT22, or DHT21)
| count: The count is now ignored as the DHT reading algorithm adjusts
  itself based on the speed of the processor

| **Returns**
| The function returns nothing.

| **Example Code**
| Example:DHTTester
| The code demos basic testing for various DHT humidity & temperature
  sensors.

| **Notes and Warnings**
| Every time must include the header file “DHT.h” in front of the
  project to use the class function.

// Example testing sketch for various DHT humidity/temperature sensors

// Written by ladyada, public domain

**#include "DHT.h"**

// The digital pin we're connected to.

**#define DHTPIN 8**

// Uncomment whatever type you're using!

**#define DHTTYPE DHT11 // DHT 11**

//#define DHTTYPE DHT22 // DHT 22 (AM2302), AM2321

//#define DHTTYPE DHT21 // DHT 21 (AM2301)

// Connect pin 1 (on the left) of the sensor to +5V

// NOTE: If using a board with 3.3V logic like an Arduino Due connect
pin 1

// to 3.3V instead of 5V!

// Connect pin 2 of the sensor to whatever your DHTPIN is

// Connect pin 4 (on the right) of the sensor to GROUND

// Connect a 10K resistor from pin 2 (data) to pin 1 (power) of the
sensor

// Initialize DHT sensor.

// Note that older versions of this library took an optional third
parameter to

// tweak the timings for faster processors. This parameter is no longer
needed

// as the current DHT reading algorithm adjusts itself to work on faster
procs.

DHT dht(DHTPIN, DHTTYPE);

**void** setup() {

Serial.begin(115200);

Serial.println("DHTxx test!");

dht.begin();

}

**void** loop() {

// Wait a few seconds between measurements.

delay(2000);

// Reading temperature or humidity takes about 250 milliseconds!

// Sensor readings may also be up to 2 seconds 'old' (its a very slow
sensor)

**float** h = dht.readHumidity();

// Read temperature as Celsius (the default)

**float** t = dht.readTemperature();

// Read temperature as Fahrenheit (isFahrenheit = true)

**float** f = dht.readTemperature(**true**);

// Check if any reads failed and exit early (to try again).

**if** (isnan(h) \|\| isnan(t) \|\| isnan(f)) {

Serial.println("Failed to read from DHT sensor!");

**return**;

}

// Compute heat index in Fahrenheit (the default)

**float** hif = dht.computeHeatIndex(f, h);

// Compute heat index in Celsius (isFahreheit = false)

**float** hic = dht.computeHeatIndex(t, h, **false**);

Serial.print("Humidity: ");

Serial.print(h);

Serial.print(" %\t");

Serial.print("Temperature: ");

Serial.print(t);

Serial.print(" \*C ");

Serial.print(f);

Serial.print(" \*F\t");

Serial.print("Heat index: ");

Serial.print(hic);

Serial.print(" \*C ");

Serial.print(hif);

Serial.println(" \*F");

}

 

**DHT::begin**

| **Description**
| Initialize the DHT sensor.

| **Syntax**
| void DHT::begin(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: DHTTester
| The code demos basic testing for various DHT humidity & temperature
  sensors. Please refer to code in the “DHT: DHT” section.

| **Notes and Warnings**
| Every time must include the header file “DHT.h” in front of the
  project to use the class function.
|  

**DHT::readTemperature**

| **Description**
| Read temperature(Fahrenheit or Celcius) from the DHT sensor.

| **Syntax**
| float DHT::readTemperature(bool S, bool force);

| **Parameters**
| S: Temperature scale, True is Fahrenheit and False is Celcius
| force: Index of checking sensor readability, default is False

| **Returns**
| The function returns the current temperature as a float value.

| **Example Code**
| Example: DHTTester
| The code demos basic testing for various DHT humidity & temperature
  sensors. Please refer to code in the “DHT: DHT” section.

| **Notes and Warnings**
| Every time must include the header file “DHT.h” in front of the
  project to use the class function.
|  

**DHT::convertCtoF**

| **Description**
| Convert a value from Celcius to Fahrenheit.

| **Syntax**
| float DHT::convertCtoF(float c);

| **Parameters**
| c: The value in Celcius

| **Returns**
| The function returns the temperature in Fahrenheit as a float number.

| **Example Code**
| Example: DHTTester
| The code demos basic testing for various DHT humidity & temperature
  sensors. Please refer to code in the “DHT: DHT” section.

| **Notes and Warnings**
| Every time must include the header file “DHT.h” in front of the
  project to use the class function.
|  

**DHT::convertFtoC**

| **Description**
| Convert a value from Fahrenheit to Celcius.

| **Syntax**
| float DHT::convertFtoC(float f);

| **Parameters**
| f: The value in Fahrenheit

| **Returns**
| The function returns the temperature in Celcius as a float number.

| **Example Code**
| Example: DHTTester
| The code demos basic testing for various DHT humidity & temperature
  sensors. Please refer to code in the “DHT: DHT” section.

| **Notes and Warnings**
| Every time must include the header file “DHT.h” in front of the
  project to use the class function.
|  

**DHT::computeHeatIndex**

| **Description**
| Compute the HeatIndex from the readings (Using both Rothfusz and
  Steadman’s equations). More details refer
  to `http://www.wpc.ncep.noaa.gov/html/heatindex_equation.shtml  <http://www.wpc.ncep.noaa.gov/html/heatindex_equation.shtml>`__.

| **Syntax**
| float DHT::computeHeatIndex(float temperature, float percentHumidity,
  bool isFahrenheit);

| **Parameters**
| temperature: The temperature value
| percentHumidity: The humidity percent value
| isFahrenheit: True, temperature value in Fahrenheit (Default); False,
  temperature value in Celcius

| **Returns**
| The function returns the heat index in Fahrenheit or Celsius as a
  float value.

| **Example Code**
| Example: DHTTester
| The code demos basic testing for various DHT humidity & temperature
  sensors. Please refer to code in the “DHT: DHT” section.

| **Notes and Warnings**
| Every time must include the header file “DHT.h” in front of the
  project to use the class function.
|  

**DHT::readHumidity**

| **Description**
| Reading temperature or humidity from the DHT sensor and return as a
  float value(%).

| **Syntax**
| float DHT::readHumidity(bool force);

| **Parameters**
| force: Ignored.

| **Returns**
| The function returns current humidity in a float number (in %).

| **Example Code**
| Example: DHTTester
| The code demos basic testing for various DHT humidity & temperature
  sensors. Please refer to code in the “DHT: DHT” section.

| **Notes and Warnings**
| Every time must include the header file “DHT.h” in front of the
  project to use the class function. Reading temperature or humidity
  takes about 250 milliseconds! Sensor readings may also be up to 2
  seconds.
|  

**DHT::read**

| **Description**
| Check if the sensor is readable.

| **Syntax**
| boolean DHT::read(bool force);

| **Parameters**
| force: Index of whether checking the sensor was read less than two
  seconds ago or not. False, checking; True, not checking.

| **Returns**
| Return the last correct measurement of the sensor. False, low means
  not readable; True, high means readable.

| **Example Code**
| Example: DHTTester
| The code demos basic testing for various DHT humidity & temperature
  sensors. Please refer to code in the “DHT: DHT” section.

| **Notes and Warnings**
| Every time must include the header file “DHT.h” in front of the
  project to use the class function.
