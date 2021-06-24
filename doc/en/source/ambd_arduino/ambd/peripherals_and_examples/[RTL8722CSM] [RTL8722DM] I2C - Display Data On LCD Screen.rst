[RTL8722CSM] [RTL8722DM] I2C - Display Data On LCD Screen
===========================================================
Preparation

-  Ameba x 1

-  I2C 2×16 LCD

Example

| Normally there are many pins on an LCD display, as shown in below
  figure.
| |1|
| An LCD display can be equipped with an additional processing chip to
  process the data. The processing chip can connect to a microcontroller
  using the I2C interface.
| RTL8722 wiring diagram:

.. image:: ../media/[RTL8722CSM]_[RTL8722DM]_I2C_Display_Data_On_LCD_Screen/image2.png
   :alt: 2
   :width: 6.5in
   :height: 4.43819in

| Open the example in “File” -> “Examples” -> “AmebaWire” ->
  “LCD_HelloWorld”.
| Compile and upload to Ameba, then press the reset button.
| Then you can see “Hello World” in the first line, and “Ameba” in the
  second line displayed on the LCD screen.

.. image:: ../media/[RTL8722CSM]_[RTL8722DM]_I2C_Display_Data_On_LCD_Screen/image3.jpeg
   :alt: 3
   :width: 6.5in
   :height: 3.91875in

After 8 seconds, you can input to the Serial Monitor the string you
would like to display on the LCD.

.. image:: ../media/[RTL8722CSM]_[RTL8722DM]_I2C_Display_Data_On_LCD_Screen/image4.jpeg
   :alt: 4
   :width: 6.5in
   :height: 3.86528in

For example, we enter “123456789” and press “Send”:

.. image:: ../media/[RTL8722CSM]_[RTL8722DM]_I2C_Display_Data_On_LCD_Screen/image5.jpeg
   :alt: 5
   :width: 6.5in
   :height: 3.95278in

Code Reference

The required settings of each model of LCD might be different, the
constructor we use in this example is:

LiquidCrystal_I2C(uint8_t lcd_Addr, uint8_t En, uint8_t Rw, uint8_t Rs,

uint8_t d4, uint8_t d5, uint8_t d6, uint8_t d7,

uint8_t backlighPin, t_backlighPol pol);

And the setting parameters are as follows:

LiquidCrystal_I2C lcd(0x27, 2, 1, 0, 4, 5, 6, 7, 3, POSITIVE); // Set
the LCD I2C address

The first parameter 0x27 is the address of I2C. Each of the following 8
parameters represents the meaning of each bit in a byte, i.e., En is bit
2, Rw is bit 1, Rs is bit 0, d4 is bit 4, and so forth.

| Call backlight() to light the screen,
| Call setCursor(0, 0) to set the position of the cursor.
| LCD inherits the Print class, so we can use lcd.print() to output
  string on the screen.

.. |1| image:: ../media/[RTL8722CSM]_[RTL8722DM]_I2C_Display_Data_On_LCD_Screen/image1.png
   :width: 6.5in
   :height: 5.64931in
