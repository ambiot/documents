[RTL8722CSM] [RTL8722DM] SPI – Show PM2
===========================================
If you are not familiar with SPI, please read `Introduction to
SPI <https://www.amebaiot.com/spi-intro/>`__ first.

 

Preparation

-  Ameba x 1

-  ILI9341 TFT LCD with SPI interface x 1

-  Plantower PMS3003 or PMS5003 x 1

Example

This example extends previous PM2.5 example to show the PM2.5
concentration on the LCD.

| QVGA TFT LCD wiring diagram:
| (Note: PMS3003/PMS5003 sensor requires 5V voltage)

.. image:: ../media/[RTL8722CSM]_[RTL8722DM]_SPI_Show_PM2/image1.png
   :alt: 1
   :width: 6.5in
   :height: 3.73333in

Adafruit 2.8” TFT LCD wiring diagram:

.. image:: ../media/[RTL8722CSM]_[RTL8722DM]_SPI_Show_PM2/image2.png
   :alt: 1
   :width: 6.5in
   :height: 3.73333in

Open the example, “Files” -> “Examples” -> “AmebaSPI” ->
“PM25_on_ILI9341_TFT_LCD”

.. image:: ../media/[RTL8722CSM]_[RTL8722DM]_SPI_Show_PM2/image3.png
   :alt: 2
   :width: 5.20833in
   :height: 5.20833in

Compile and upload to Ameba, then press the reset button.

Then you can see the concentration value of PM1.0, PM2.5 and PM10 on the
LCD.

.. image:: ../media/[RTL8722CSM]_[RTL8722DM]_SPI_Show_PM2/image4.png
   :alt: 2
   :width: 6.5in
   :height: 3.81597in

Code Reference

In this example, first rotate the screen by 90 degrees, and draw the
static components such as the circles, the measuring scale, and the
title text. After the concentration value is detected, it is printed
inside the circle.
