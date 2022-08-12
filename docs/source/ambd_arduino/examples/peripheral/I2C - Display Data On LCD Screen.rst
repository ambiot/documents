##########################################################################
I2C - Display Data On LCD Screen
##########################################################################

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Preparation**
:raw-html:`</p>`

  - AmebaD [AMB21 / AMB22 / AMB23 / BW16] x 1
  - I2C 2×16 LCD

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Example**
:raw-html:`</p>`

Normally there are many pins on an LCD display, as shown in below
figure.

.. image:: /media/ambd_arduino/I2C_Display_Data_on_LCD_Screen/image1.png
   :align: center
   :width: 1058
   :height: 972
   :scale: 72 %


An LCD display can be equipped with an additional processing chip to
process the data. The processing chip can connect to a microcontroller
using the I2C interface.

**AMB21 / AMB22** Wiring Diagram:

.. image:: /media/ambd_arduino/I2C_Display_Data_on_LCD_Screen/image2.png
   :align: center
   :width: 1429
   :height: 978
   :scale: 71 %

**AMB23** Wiring Diagram:

.. image:: /media/ambd_arduino/I2C_Display_Data_on_LCD_Screen/image2-1.png
   :align: center
   :width: 1434
   :height: 748
   :scale: 93 %

**BW16** Wiring Diagram:

.. image:: /media/ambd_arduino/I2C_Display_Data_on_LCD_Screen/image2-3.png
   :align: center
   :width: 1158
   :height: 621

**BW16-TypeC** Wiring Diagram:

.. image:: /media/ambd_arduino/I2C_Display_Data_on_LCD_Screen/image2-4.png
   :align: center
   :width: 1244
   :height: 672

Open the example in ``“File” → “Examples” → “AmebaWire” → “LCD_HelloWorld”``.
Compile and upload to Ameba, then press the reset button.
Then you can see “Hello World” in the first line, and “Ameba” in the
second line displayed on the LCD screen.

.. image:: /media/ambd_arduino/I2C_Display_Data_on_LCD_Screen/image3.jpeg
   :align: center
   :width: 1429
   :height: 978
   :scale: 72 %

After 8 seconds, you can input to the Serial Monitor the string you
would like to display on the LCD.

.. image:: /media/ambd_arduino/I2C_Display_Data_on_LCD_Screen/image4.jpeg
   :align: center
   :width: 1431
   :height: 862
   :scale: 72 %

For example, we enter “123456789” and press “Send”:

.. image:: /media/ambd_arduino/I2C_Display_Data_on_LCD_Screen/image5.jpeg
   :align: center
   :width: 1431
   :height: 851
   :scale: 72 %

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Code Reference**
:raw-html:`</p>`

The required settings of each model of LCD might be different, the
constructor we use in this example is:

.. code-block:: C

  LiquidCrystal_I2C(uint8_t lcd_Addr, uint8_t En, uint8_t Rw, uint8_t Rs,
                    uint8_t d4, uint8_t d5, uint8_t d6, uint8_t d7,
                    uint8_t backlighPin, t_backlighPol pol);

And the setting parameters are as follows:

.. code-block:: C

  LiquidCrystal_I2C lcd(0x27, 2, 1, 0, 4, 5, 6, 7, 3, POSITIVE); // Set the LCD I2C address

The first parameter 0x27 is the address of I2C. Each of the following 8
parameters represents the meaning of each bit in a byte, i.e., En is bit
2, Rw is bit 1, Rs is bit 0, d4 is bit 4, and so forth.

Call ``backlight()`` to light the screen,
Call ``setCursor(0, 0)`` to set the position of the cursor.
LCD inherits the Print class, so we can use ``lcd.print()`` to output string on the screen.

