###################
Class WS2812B
###################

**Description**

Defines a class to use WS2812B LED with AmebaD.

**Syntax**

.. code:: cpp

    class WS2812B

**Members**

**Public Constructors**

+--------------------------------------------+-------------------------+
| WS2812B::WS2812B                           | Constructs a WS2812B    |
|                                            | object                  |
+--------------------------------------------+-------------------------+

**Public Methods**

+-------------------------------------------+--------------------------+
| WS2812B::begin                            | Check for correct pin    |
|                                           | settings and prepare to  |
|                                           | drive the WS2812B        |
+-------------------------------------------+--------------------------+
| WS2812B::show                             | Pushes the color data    |
|                                           | out to the LEDs          |
+-------------------------------------------+--------------------------+
| WS2812B::clear                            | Clear the memory         |
+-------------------------------------------+--------------------------+
| WS2812B::setLEDCount                      | Allocate memory for all  |
|                                           | the LEDs                 |
+-------------------------------------------+--------------------------+
| WS2812B::setPixelColor                    | Set the color of a LED   |
+-------------------------------------------+--------------------------+
| WS2812B::fill                             | Set multiple LEDs with   |
|                                           | the same color           |
+-------------------------------------------+--------------------------+
| WS2812B::colorHSV                         | Convert to RGB values    |
|                                           | from HSV                 |
+-------------------------------------------+--------------------------+
| WS2812B::rainbow                          | Fill all the LEDs with   |
|                                           | one or more cycle of     |
|                                           | hues                     |
+-------------------------------------------+--------------------------+

----

.. method:: WS2812B::WS2812B

**Description**

Constructs a WS2812B object

**Syntax**

.. code:: cpp

    WS2812B::WS2812(uint8_t input_pin, uint16_t num_leds)

**Parameters**

``input_pin`` : The MOSI pin that is connected to the WS2812B LED.

``num_leds`` : The number of LEDs that needs to be light up

**Returns**

The function returns nothing

**Example Code**

Example: WS2812B_Basics; WS2812B_Patterns

**Notes and Warnings**

Only SPI MOSI pin is valid for driving WS2812B LEDs.

----

.. method:: WS2812B::begin

**Description**

Check for correct pin settings and prepare to drive the WS2812B

**Syntax**

.. code:: cpp

    void WS2812B::begin(void)

**Parameters**

This function does not require any input parameters

**Returns**

The function returns nothing

**Example Code**

Example: WS2812B_Basics; WS2812B_Patterns

**Notes and Warnings**

NA

----

.. method:: WS2812B::show

**Description**

Pushes the color data out to the LEDs

**Syntax**

.. code:: cpp

    void WS2812B::show(void)

**Parameters**

This function does not require any input parameters

**Returns**

The function returns nothing

**Example Code**

Example: WS2812B_Basics; WS2812B_Patterns

**Notes and Warnings**

The amount of time needed to push the color data will increase with more
LEDs.

----

.. method:: WS2812B::clear

**Description**

Clear the memory

**Syntax**

.. code:: cpp

    void WS2812B::clear(void)

**Parameters**

This function does not require any input parameters

**Returns**

The function returns nothing

**Example Code**

Example: WS2812B_Patterns

**Notes and Warnings**

This function only clears the color data from memory. To turn off the
LED, please use ``WS2812B::show()``.

----

.. method:: WS2812B::setLEDCount

**Description**

Allocate memory for all the LEDs

**Syntax**

.. code:: cpp

    void WS2812B::setLEDCount(uint16_t num_leds)

**Parameters**

This function does not require any input parameters

**Returns**

The function returns nothing

**Example Code**

NA

**Notes and Warnings**

NA

-----

.. method:: WS2812B::setPixelColor

**Description**

Set the color of a LED

**Syntax**

.. code:: cpp

    void WS2812B::setPixelColor(uint16_t led_Number, uint8_t rColor, uint8_t gColor, uint8_t bColor)

**Parameters**

``Led_Number`` : The LED number, with 0 being the LED closest to the data
input pin

``rColor`` : Red brightness level, from 0 (Off) – 255 (Maximum brightness)

``gColor`` : Green brightness level, from 0 (Off) – 255 (Maximum brightness)

``bColor`` : Blue brightness level, from 0 (Off) – 255 (Maximum brightness)

**Returns**

The function returns nothing

**Example Code**

Example: WS2812B_Basics; WS2812B_Patterns

**Notes and Warnings**

NA

----

.. method:: WS2812B::fill

**Description**

Set multiple LEDs with the same colors

**Syntax**

.. code:: cpp

    WS2812B::fill(uint8_t rColor, uint8_t gColor, uint8_t bColor, uint16_t first, uint16_t count)

**Parameters**

``rColor`` : Red brightness level, from 0 (Off) – 255 (Maximum brightness)

``gColor`` : Green brightness level, from 0 (Off) – 255 (Maximum brightness)

``bColor`` : Blue brightness level, from 0 (Off) – 255 (Maximum brightness)

``first`` : The index of the first LED to start filling with color

``count`` : Total number of LEDs to be set with the color

**Returns**

The function returns nothing

**Example Code**

Example: WS2812B_Basics

**Notes and Warnings**

If the first and count is not provided, the default behaviour would be
to fill all LEDs.

-----

.. method:: WS2812B::colorHSV

**Description**

Convert to RGB values from HSV

**Syntax**

.. code:: cpp

    uint32_t colorHSV(uint16_t hue, uint8_t sat, uint8_t val);

**Parameters**

``hue`` : Expressed as 16-bit number. Starting from 0 for red, it increments
first towards yellow, and on through green, cyan, blue, magenta, and
black to red.

``sat`` : Intensity or purity of the color. Expressed as 8-bit number ranging
from 0 to 255. In the middle, you will get something sort of pastel.

``val`` : Brightness of a color. Expressed as an 8-bit number ranging from 0
to 255.

**Returns**

The function returns the RGB values converted from HSV.

**Example Code**

Example: WS2812B_Patterns

**Notes and Warnings**

NA

-----

.. method:: WS2812B::rainbow

**Description**

Fill all the LEDs with one or more cycle of hues

**Syntax**

.. code:: cpp

    void rainbow(uint16_t first_hue = 0, int8_t reps = 1, uint8_t saturation = 255, uint8_t brightness = 60);

**Parameters**

``first_hue`` : hue of first LED, 0 – 65535, representing one full cycle of
the color wheel.

``reps`` : Number of cycles of the color wheel over the length of the strip.
Default is 1. Negative values can be used to reverse the hue order.

``saturation`` : Intensity or purity of the color. Expressed as 8-bit number
ranging from 0 to 255. In the middle, you will get something sort of
pastel.

``brightness`` : Brightness of a color. Expressed as an 8-bit number ranging
from 0 to 255.

**Returns**

The function returns nothing

**Example Code**

Example: WS2812B_Patterns

**Notes and Warnings**

NA
