=====================================
Class AmebaILI9341
=====================================
**AmebaILI9341 Class**

**Description**

Defines a class to use ILI9341 TFT SPI display for Ameba.

**Syntax**

class AmebaILI9341

**Members**

+-----------------------------+---------------------------------------+
| **Public Constructors**     |                                       |
+=============================+=======================================+
| AmebaILI9341::AmebaILI9341  | Constructs an AmebaILI9341 object     |
+-----------------------------+---------------------------------------+
| **Public Methods**          |                                       |
+-----------------------------+---------------------------------------+
| AmebaILI9341::begin         | Initialize SPI, pin mapping and       |
|                             | screen configuration                  |
+-----------------------------+---------------------------------------+
| AmebaILI9341::setAddress    | Initialize image size and position    |
+-----------------------------+---------------------------------------+
| AmebaILI9341::writecommand  | SPI transfer a command                |
+-----------------------------+---------------------------------------+
| AmebaILI9341::writedata     | SPI transfer a piece of data          |
+-----------------------------+---------------------------------------+
| AmebaILI9341::setRotation   | Set screen orientation                |
+-----------------------------+---------------------------------------+
| AmebaILI9341::fillScreen    | Fill the screen with a color          |
+-----------------------------+---------------------------------------+
| AmebaILI9341::clr           | Clear screen                          |
+-----------------------------+---------------------------------------+
| AmebaILI9341::fillRectangle | Fill a rectangular space with a color |
+-----------------------------+---------------------------------------+
| AmebaILI9341::drawPixel     | Turn on a pixel on the screen         |
+-----------------------------+---------------------------------------+
| AmebaILI9341::drawChar      | To print a character on the screen    |
+-----------------------------+---------------------------------------+
| AmebaILI9341::drawLine      | Draw line on the screen               |
+-----------------------------+---------------------------------------+
| AmebaILI9341::drawRectangle | Draw a rectangle on the screen        |
+-----------------------------+---------------------------------------+
| AmebaILI9341::drawCircle    | Draw a circle on the screen           |
+-----------------------------+---------------------------------------+
| AmebaILI9341::write         | Same as drawChar                      |
+-----------------------------+---------------------------------------+
| AmebaILI9341::getWidth      | Return the width 240                  |
+-----------------------------+---------------------------------------+
| AmebaILI9341::getHeight     | Return the height 320                 |
+-----------------------------+---------------------------------------+
| AmebaILI9341::setCursor     | Set cursor to the desired position    |
+-----------------------------+---------------------------------------+
| AmebaILI9341::setForeground | Set foreground color                  |
+-----------------------------+---------------------------------------+
| AmebaILI9341::setBackground | Set background color                  |
+-----------------------------+---------------------------------------+
| AmebaILI9341::setFontSize   | Set character font size               |
+-----------------------------+---------------------------------------+
| AmebaILI9341::reset         | Reset pin to High or Low              |
+-----------------------------+---------------------------------------+

**AmebaILI9341::AmebaILI9341**

**Description**

Constructs an AmebaILI9341 object and set CS, DC and RESET pins .

**Syntax**

AmebaILI9341::AmebaILI9341(int csPin, int dcPin, int resetPin)

**Parameters**

csPin: pin for Chip Select dcPin: pin for Data/Command resetPin: pin for
Reset

**Returns**

The function returns nothing.

**Example Code**

Example: : PM25_ON_ILI9341_TFT_LCD

This example demonstrates how to read pm2.5 value on PMS 3003
air-condition sensor and display it on ILI9341 TFT LCD.

/\*

PMS 3003 pin map is as follow:

PIN1 :VCC, connect to 5V

PIN2 :GND

PIN3 :SET, 0:Standby mode, 1:operating mode

PIN4 :RXD :Serial RX

PIN5 :TXD :Serial TX

PIN6 :RESET

PIN7 :NC

PIN8 :NC

In this example, we only use Serial to get PM 2.5 value.

The circuit:

\* RX is digital pin 0 (connect to TX of PMS 3003)

\* TX is digital pin 1 (connect to RX of PMS 3003)

For RTL8195A ILI9341 TFT LCD with SPI interface has these pins:

D/C : connect to pin 9

CS : connect to pin 10

MOSI : connect to pin 11

MISO : connect to pin 12

CLK : connect to pin 13

VCC : connect to 3V3

GND : connect to GND

\*/

**#include "SoftwareSerial.h"**

**#include "SPI.h"**

**#include "AmebaILI9341.h"**

**#if defined(BOARD_RTL8195A)**

SoftwareSerial mySerial(0, 1); // RX, TX

**#define TFT_RESET 8**

**#define TFT_DC 9**

**#define TFT_CS 10**

**#elif defined(BOARD_RTL8710)**

SoftwareSerial mySerial(17, 5); // RX, TX

// IMPORTANT: Due to limit pin, we do not connect TFT_RESET pin.

**#define TFT_RESET 0xFFFFFFFF**

**#define TFT_DC 2**

**#define TFT_CS 10**

**#endif**

AmebaILI9341 tft = AmebaILI9341(TFT_CS, TFT_DC, TFT_RESET);

**#define ILI9341_SPI_FREQUENCY 20000000**

**#define pmsDataLen 32**

**uint8_t** buf[pmsDataLen];

**int** idx = 0;

**int** pm10 = 0;

**int** last_pm25 = 0;

**int** pm25 = 0;

**int** pm100 = 0;

**uint16_t** pm25color[] = {

*0x9FF3*,

*0x37E0*,

*0x3660*,

*0xFFE0*,

*0xFE60*,

*0xFCC0*,

*0xFB2C*,

*0xF800*,

*0x9800*,

*0xC99F*

};

**void** setup() {

Serial.begin(57600);

mySerial.begin(9600); // PMS 3003 UART has baud rate 9600

SPI.setDefaultFrequency(ILI9341_SPI_FREQUENCY);

tft.begin();

drawPictureFrames();

}

**void** loop() { // run over and over

**uint8_t** c;

idx = 0;

memset(buf, 0, pmsDataLen);

**while** (**true**) {

**while** (c != *0x42*) {

**while** (!mySerial.available());

c = mySerial.read();

}

**while** (!mySerial.available());

c = mySerial.read();

**if** (c == *0x4d*) {

// now we got a correct header)

buf[idx++] = *0x42*;

buf[idx++] = *0x4d*;

**break**;

}

}

**while** (idx != pmsDataLen) {

**while**\ (!mySerial.available());

buf[idx++] = mySerial.read();

}

pm10 = ( buf[10] << 8 ) \| buf[11];

last_pm25 = pm25;

pm25 = ( buf[12] << 8 ) \| buf[13];

pm100 = ( buf[14] << 8 ) \| buf[15];

updateValueToTftScreen();

}

**void** drawPictureFrames() {

tft.setRotation(1);

tft.clr();

tft.setFontSize(1);

// Upper title

tft.setFontSize(1);

tft.setCursor(20,20);

tft.print("PM2.5 DETECTOR");

// PM 2.5 Circle Frame

tft.drawCircle(100,130,60, ILI9341_BLUE);

tft.drawCircle(100,130,61, ILI9341_BLUE);

tft.setFontSize(1);

tft.setCursor(90,85);

tft.print("PM2.5");

tft.setFontSize(1);

tft.setCursor(90,170);

tft.print("um/m3");

// PM 10 Circle Frame

tft.drawCircle(220,70,40, ILI9341_BLUE);

tft.setFontSize(1);

tft.setCursor(210,40);

tft.print("PM10");

tft.setFontSize(1);

tft.setCursor(205,95);

tft.print("um/m3");

// PM 1.0 Circle Frame

tft.drawCircle(220,170,40, ILI9341_BLUE);

tft.setFontSize(1);

tft.setCursor(205,140);

tft.print("PM1.0");

tft.setFontSize(1);

tft.setCursor(205,195);

tft.print("um/m3");

// right side bar, referenced from: http://taqm.epa.gov.tw/taqm/tw/

tft.fillRectangle(290, 30+ 0*2, 10, 12*2, pm25color[0]); // 0~11

tft.fillRectangle(290, 30+12*2, 10, 12*2, pm25color[1]); // 12-23

tft.fillRectangle(290, 30+24*2, 10, 12*2, pm25color[2]); // 24-35

tft.fillRectangle(290, 30+36*2, 10, 6*2, pm25color[3]); // 36-41

tft.fillRectangle(290, 30+42*2, 10, 6*2, pm25color[4]); // 42-47

tft.fillRectangle(290, 30+48*2, 10, 6*2, pm25color[5]); // 48-53

tft.fillRectangle(290, 30+54*2, 10, 6*2, pm25color[6]); // 54-58

tft.fillRectangle(290, 30+59*2, 10, 6*2, pm25color[7]); // 59-64

tft.fillRectangle(290, 30+65*2, 10, 6*2, pm25color[8]); // 65-70

tft.fillRectangle(290, 30+71*2, 10, 10*2, pm25color[9]); // >=71

tft.setCursor(302, 30);

tft.setFontSize(1);

tft.print("0");

tft.setCursor(302, 30+36*2);

tft.print("36");

tft.setCursor(302, 30+54*2);

tft.print("54");

tft.setCursor(302, 30+71*2);

tft.print("71");

// bottom right text

tft.setCursor(210,230);

tft.setFontSize(1);

tft.print("Powered by Realtek");

updateValueToTftScreen();

}

**void** updateValueToTftScreen() {

tft.setCursor(60, 111);

tft.setFontSize(5);

tft.setForeground( getPm25Color(pm25) );

**if** (pm25 < 10) {

tft.print(" ");

} **else** **if** (pm25 < 100) {

tft.print(" ");

}

tft.print(pm25);

tft.setCursor(195,60);

tft.setFontSize(3);

**if** (pm100 < 10) {

tft.print(" ");

} **else** **if** (pm100 < 100) {

tft.print(" ");

}

tft.print(pm100);

tft.setCursor(198,160);

**if** (pm10 < 10) {

tft.print(" ");

} **else** **if** (pm10 < 100) {

tft.print(" ");

}

tft.print(pm10);

tft.setFontSize(1);

tft.setForeground(ILI9341_WHITE);

**if** (last_pm25 > 80) {

tft.fillRectangle(275, 80*2+30-3, 12, 8, ILI9341_BLACK);

} **else** {

tft.fillRectangle(275, last_pm25*2+30-3, 12, 8, ILI9341_BLACK);

}

**if** (pm25 > 80) {

tft.setCursor(275, 80*2+30-3);

} **else** {

tft.setCursor(275, pm25*2+30-3);

}

tft.print("=>");

}

**uint16_t** getPm25Color(**int** v) {

**if** (v < 12) {

**return** pm25color[0];

} **else** **if** (v < 24) {

**return** pm25color[1];

} **else** **if** (v < 36) {

**return** pm25color[2];

} **else** **if** (v < 42) {

**return** pm25color[3];

} **else** **if** (v < 48) {

**return** pm25color[4];

} **else** **if** (v < 54) {

**return** pm25color[5];

} **else** **if** (v < 59) {

**return** pm25color[6];

} **else** **if** (v < 65) {

**return** pm25color[7];

} **else** **if** (v < 71) {

**return** pm25color[8];

} **else** {

**return** pm25color[9];

}

}

**Notes and Warnings**

NA

 

**AmebaILI9341::begin**

**Description**

Initialize hardware SPI, pin mapping and screen configuration

**Syntax**

void AmebaILI9341::begin(void)

**Parameters**

The function requires no input parameter.

**Returns**

The function returns nothing.

**Example Code**

Example: PM25_ON_ILI9341_TFT_LCD

Details of the code are given in the previous section of AmebaILI9341::
AmebaILI9341.

**Notes and Warnings**

This method is required to run first before other operations on the
display.

 

**AmebaILI9341::setAddress**

**Description**

Initialize image size and positioning on the display

**Syntax**

void AmebaILI9341::setAddress(uint16_t x0, uint16_t y0, uint16_t x1,
uint16_t y1)

**Parameters**

x0: leftmost coordinate of the image y0: top coordinate of the image x1:
rightmost coordinate of the image y1: bottom coordinate of the image

**Returns**

The function returns nothing.

**Example Code**

NA

**Notes and Warnings**

Do not use this to set the cursor, use the “setCursor” method instead.

 

**AmebaILI9341::writecommand**

**Description**

Write a single-byte command to display

**Syntax**

void AmebaILI9341::writecommand(uint8_t command)

**Parameters**

command: a single byte command

**Returns**

The function returns nothing.

**Example Code**

NA

**Notes and Warnings**

NA

 

**AmebaILI9341::writedata**

**Description**

Write 1 byte of data to display

**Syntax**

void AmebaILI9341::writedata(uint8_t data)

**Parameters**

data: 1 byte data

**Returns**

The function returns nothing.

**Example Code**

NA

**Notes and Warnings**

Only use this method to write 1 byte at a time.

 

**AmebaILI9341::setRotation**

**Description**

Setting screen orientation, “0” for no rotation, “1” for 90 degrees
rotation and so on so forth.

**Syntax**

void AmebaILI9341::setRotation(uint8_t m)/span> **Parameters**

m: one of the 4 rotation modes -> “0” for no rotation, “1” for 90⁰, “2”
for 180⁰, “3” for 270⁰

**Returns**

The function returns nothing.

**Example Code**

Example: PM25_ON_ILI9341_TFT_LCD

Details of the code are given in the previous section of AmebaILI9341::
AmebaILI9341.

**Notes and Warnings**

if m=4, it’s equivalent to mode 0, and m=5 for mode 1, m=6 for mode 2 so
on so forth.

 

**AmebaILI9341::fillScreen**

**Description**

Fill the entire screen with one color

**Syntax**

void AmebaILI9341::fillScreen(uint16_t color)

**Parameters**

color: a 16-bit color reference defined in AmebaILI9341.h

**Returns**

The function returns nothing.

**Example Code**

NA

**Notes and Warnings**

Refer to AmebaILI9341.h for available colors.

 

**AmebaILI9341::clr**

**Description**

Fill the entire screen with a certain background-color

**Syntax**

void AmebaILI9341::clr(void)

**Parameters**

The function requires no input parameter.

**Returns**

The function returns nothing.

**Example Code**

Example: PM25_ON_ILI9341_TFT_LCD

Details of the code are given in the previous section of AmebaILI9341::
AmebaILI9341

**Notes and Warnings**

background-color can be set by calling setBackground method.

 

**AmebaILI9341::fillRectangle**

**Description**

Fill a rectangular space with a color on the screen

**Syntax**

void AmebaILI9341::fillRectangle(int16_t x, int16_t y, int16_t w,
int16_t h, uint16_t color)

**Parameters**

x: leftmost coordinate of the image y: top coordinate of the image w:
width of the image h: height of the image color: the color of the image

**Returns**

The function returns nothing.

**Example Code**

Example: PM25_ON_ILI9341_TFT_LCD

Details of the code are given in the previous section of AmebaILI9341::
AmebaILI9341.

**Notes and Warnings**

NA

 

**AmebaILI9341::drawPixel**

**Description**

Turn on a pixel on the screen

**Syntax**

void AmebaILI9341::drawPixel(int16_t x, int16_t y, uint16_t color)

**Parameters**

x: leftmost coordinate of the image y: top coordinate of the image
color: the color of the image

**Returns**

The function returns nothing.

**Example Code**

NA

**Notes and Warnings**

NA

 

**AmebaILI9341::drawChar**

**Description**

Draw character on the screen

**Syntax**

void AmebaILI9341::drawChar(unsigned char c) void
AmebaILI9341::drawChar(int16_t x, int16_t y, unsigned char c, uint16_t
\_fontcolor, uint16_t \_background, uint8_t \_fontsize)

**Parameters**

x: leftmost coordinate of the image y: top coordinate of the image c: a
character \_fontcolor: font color \_background: background color
\_fontsize: font size

**Returns**

The function returns nothing.

**Example Code**

NA

**Notes and Warnings**

In the actual example, the Print method is used to print a string of
character on the screen instead of using this method.

 

**AmebaILI9341::drawLine**

**Description**

Draw a straight line on the screen

**Syntax**

void AmebaILI9341::drawLine(int16_t x0, int16_t y0, int16_t x1, int16_t
y1) void AmebaILI9341::drawLine(int16_t x0, int16_t y0, int16_t x1,
int16_t y1, uint16_t color)

**Parameters**

x0: leftmost coordinate of the image y0: top coordinate of the image x1:
leftmost coordinate of the image y1: top coordinate of the image color:
the color of the image

**Returns**

The function returns nothing.

**Example Code**

NA

**Notes and Warnings**

NA

 

**AmebaILI9341::drawRectangle**

**Description**

Draw a rectangular shape on the screen

**Syntax**

void AmebaILI9341::drawRectangle(int16_t x, int16_t y, int16_t w,
int16_t h) void AmebaILI9341::drawRectangle(int16_t x, int16_t y,
int16_t w, int16_t h, uint16_t color)

**Parameters**

x: leftmost coordinate of the image y: top coordinate of the image w:
width of the image h: height of the image color: the color of the image

**Returns**

The function returns nothing.

**Example Code**

NA

**Notes and Warnings**

NA

 

**AmebaILI9341::drawCircle**

**Description**

Draw a circular shape on the screen

**Syntax**

void AmebaILI9341::drawCircle(int16_t x0, int16_t y0, int16_t r) void
AmebaILI9341::drawCircle(int16_t x0, int16_t y0, int16_t r, uint16_t
color)

**Parameters**

x0: leftmost coordinate of the image y0: top coordinate of the image r:
radius of the image color: the color of the image

**Returns**

The function returns nothing.

**Example Code**

NA

**Notes and Warnings**

Include “AmebaServo.h” to use the class function.

 

**AmebaILI9341::write**

**Description**

Same as drawChar, write a character on the screen

**Syntax**

size_t AmebaILI9341::write(uint8_t c)

**Parameters**

c: a character to be written on the screen

**Returns**

Number of bytes written

**Example Code**

NA

**Notes and Warnings**

This an inherited method from Print class and is seldom used.

 

**AmebaILI9341::getWidth**

**Description**

Get the width of the image

**Syntax**

int16_t AmebaILI9341::getWidth(void)

**Parameters**

The function requires no input parameter.

**Returns**

Width of the image

**Example Code**

NA

**Notes and Warnings**

NA

 

**AmebaILI9341::getHeight**

**Description**

Get the height of the image

**Syntax**

int16_t AmebaILI9341::getHeight(void)

**Parameters**

The function requires no input parameter.

**Returns**

Height of the image

**Example Code**

NA

**Notes and Warnings**

NA

 

**AmebaILI9341::setCursor**

**Description**

Set the cursor to a specific position on the screen

**Syntax**

void AmebaILI9341::setCursor(int16_t x, int16_t y)

**Parameters**

x: coordinate on the x-axis y: coordinate on the y-axis

**Returns**

The function returns nothing.

**Example Code**

Example: PM25_ON_ILI9341_TFT_LCD

Details of the code are given in the previous section of AmebaILI9341::
AmebaILI9341.

**Notes and Warnings**

NA

 

**AmebaILI9341::setForeground**

**Description**

Set foreground color

**Syntax**

void AmebaILI9341::setForeground(uint16_t color)

**Parameters**

color: one of the colors available in AmebaILI9341.h

**Returns**

The function returns nothing.

**Example Code**

Example: PM25_ON_ILI9341_TFT_LCD

Details of the code are given in the previous section of AmebaILI9341::
AmebaILI9341.

**Notes and Warnings**

NA

 

**AmebaILI9341::setBackground**

**Description**

Set background color

**Syntax**

void AmebaILI9341::setBackground(uint16_t \_background)

**Parameters**

\_background: one of the colors available in AmebaILI9341.h

**Returns**

The function returns nothing.

**Example Code**

Example: PM25_ON_ILI9341_TFT_LCD

Details of the code are given in the previous section of AmebaILI9341::
AmebaILI9341.

**Notes and Warnings**

NA

 

**AmebaILI9341::setFontSize**

**Description**

Set the font size of the characters printed on the screen.

**Syntax**

void AmebaILI9341::setFontSize(uint8_t size)

**Parameters**

size: font size, default 1 for smallest, 5 for largest font size

**Returns**

The function returns nothing.

**Example Code**

Example: PM25_ON_ILI9341_TFT_LCD

Details of the code are given in the previous section of AmebaILI9341::
AmebaILI9341.

**Notes and Warnings**

NA

 

**AmebaILI9341::reset**

**Description**

Reset the pin to High or Low

**Syntax**

void AmebaILI9341::reset(void)

**Parameters**

The function requires no input parameter.

**Returns**

The function returns nothing.

**Example Code**

NA

**Notes and Warnings**

NA
