#################
WS2812B - Basics
#################

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Materials**
:raw-html:`</p>`

-  AmebaD [ AMB21 / AMB22 / AMB23 / BW16 ] x1

-  WS2812B LED Strip / Ring / Stick / Board x1

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Example**
:raw-html:`</p>`

Introduction
-------------

In this example, we will be using the AmebaD board to control the
WS2812B RGB LED, using the SPI peripheral to create the waveform
necessary for the LEDs.

WS2812B basics allows you to control a single LED with a color or fill
all the LED with the same color.

Procedure
----------

Firstly, connect the WS2812B to the Ameba board as shown in the
following diagrams.

**AMB21/AMB22 Wiring Diagram:**

.. image:: /media/ambd_arduino/WS2812B_Basics/image1.png
   :align: center
   :width: 1234
   :height: 747
   :scale: 90 %


**AMB23 Wiring Diagram:**

.. image:: /media/ambd_arduino/WS2812B_Basics/image2.png
   :align: center
   :width: 1375
   :height: 724
   :scale: 90 %

**BW16 Wiring Diagram:**

.. image:: /media/ambd_arduino/WS2812B_Basics/image3.png
   :align: center
   :width: 1320
   :height: 685

**BW16-TypeC Wiring Diagram:**

.. image:: /media/ambd_arduino/WS2812B_Basics/image4.png
   :align: center
   :width: 1381
   :height: 684


To light up one individual LED or multiple LEDs with the same color, use
**WS2812B_Basics**.

Open the example in ``“File” → “Example” → “AmebaWS2812B” →
“WS2812B_Basics”``

.. image:: /media/ambd_arduino/WS2812B_Basics/image5.png
   :align: center
   :width: 707
   :height: 1005

In the sample code, modify **NUM_OF_LEDS** to be the number of LEDs that
you have connected.

.. image:: /media/ambd_arduino/WS2812B_Basics/image6.png
   :align: center
   :width: 621
   :height: 457

Next, compile and upload to Ameba, then press the reset button. You will
see the first 3 LED light up with red, green, and blue light color
individually and after a while all the LED will be filled with a color.

.. image:: /media/ambd_arduino/WS2812B_Basics/image7.png
   :align: center
   :width: 2912
   :height: 512
   :scale: 25 %

.. image:: /media/ambd_arduino/WS2812B_Basics/image8.png
   :align: center
   :width: 2908
   :height: 516
   :scale: 25 %


:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Code Reference**
:raw-html:`</p>`

[1] WS2812B Datasheet:

https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf





