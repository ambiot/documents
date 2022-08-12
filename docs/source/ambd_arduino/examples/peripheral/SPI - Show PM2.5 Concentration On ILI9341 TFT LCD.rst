##########################################################################
SPI – Show PM2.5 Concentration On ILI9341 TFT LCD
##########################################################################

If you are not familiar with SPI, please read `Introduction to 
SPI <https://www.amebaiot.com/spi-intro/>`__ first.

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Preparation**
:raw-html:`</p>`

  - AmebaD [AMB21 / AMB22 / AMB23 / BW16] x 1
  - ILI9341 TFT LCD with SPI interface x 1 
  - Plantower PMS3003 or PMS5003 x 1

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Example**
:raw-html:`</p>`

This example extends previous PM2.5 example to show the PM2.5
concentration on the LCD.

**AMB21 / AMB22 and QVGA TFT LCD** Wiring Diagram:

.. note:: 
  
  PMS3003/PMS5003 sensor requires 5V voltage

.. image:: /media/ambd_arduino/SPI_Show_PM2.5_Concentration_On_ILI9341_LCD/image1.png
   :align: center
   :width: 602
   :height: 335

**AMB23 and QVGA TFT LCD** Wiring Diagram:

.. image:: /media/ambd_arduino/SPI_Show_PM2.5_Concentration_On_ILI9341_LCD/image1-2.png
   :align: center
   :width: 602
   :height: 336

**BW16 and QVGA TFT LCD** Wiring Diagram:

.. image:: /media/ambd_arduino/SPI_Show_PM2.5_Concentration_On_ILI9341_LCD/image1-3.png
   :align: center
   :width: 602
   :height: 342

**BW16-TypeC and QVGA TFT LCD** Wiring Diagram:

.. image:: /media/ambd_arduino/SPI_Show_PM2.5_Concentration_On_ILI9341_LCD/image1-4.png
   :align: center
   :width: 549
   :height: 313

**AMB21 / AMB22 and Adafruit 2.8” TFT LCD** Wiring Diagram:

.. image:: /media/ambd_arduino/SPI_Show_PM2.5_Concentration_On_ILI9341_LCD/image2.png
   :align: center
   :width: 602
   :height: 338

**AMB23 and and Adafruit 2.8” TFT LCD** Wiring Diagram:

.. image:: /media/ambd_arduino/SPI_Show_PM2.5_Concentration_On_ILI9341_LCD/image2-1.png
   :align: center
   :width: 598
   :height: 348

**BW16 and and Adafruit 2.8” TFT LCD** Wiring Diagram:

.. image:: /media/ambd_arduino/SPI_Show_PM2.5_Concentration_On_ILI9341_LCD/image2-2.png
   :align: center
   :width: 602
   :height: 334

**BW16-TypeC and and Adafruit 2.8” TFT LCD** Wiring Diagram:

.. image:: /media/ambd_arduino/SPI_Show_PM2.5_Concentration_On_ILI9341_LCD/image2-3.png
   :align: center
   :width: 524
   :height: 274

Open the example, ``“Files” → “Examples” → “AmebaSPI” → “ILI9341_TFT_LCD_PM2.5”``
  
.. image:: /media/ambd_arduino/SPI_Show_PM2.5_Concentration_On_ILI9341_LCD/image3.png
   :align: center
   :width: 683
   :height: 1006

Compile and upload to Ameba, then press the reset button.

Then you can see the concentration value of PM1.0, PM2.5 and PM10 on the
LCD.

.. image:: /media/ambd_arduino/SPI_Show_PM2.5_Concentration_On_ILI9341_LCD/image4.png
   :align: center
   :width: 979
   :height: 749
   :scale: 50 %

.. image:: /media/ambd_arduino/SPI_Show_PM2.5_Concentration_On_ILI9341_LCD/image5.png
   :align: center
   :width: 1000
   :height: 750
   :scale: 50 %

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Code Reference**
:raw-html:`</p>`

In this example, first rotate the screen by 90 degrees, and draw the
static components such as the circles, the measuring scale, and the
title text. After the concentration value is detected, it is printed
inside the circle.

