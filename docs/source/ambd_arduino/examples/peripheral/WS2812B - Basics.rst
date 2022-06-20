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

|1|

**AMB23 Wiring Diagram:**

|2|

**BW16 Wiring Diagram:**

|3|

To light up one individual LED or multiple LEDs with the same color, use
**WS2812B_Basics**.

Open the example in ``“File” → “Example” → “AmebaWS2812B” →
“WS2812B_Basics”``

|4|

In the sample code, modify **NUM_OF_LEDS** to be the number of LEDs that
you have connected.

|5|

Next, compile and upload to Ameba, then press the reset button. You will
see the first 3 LED light up with red, green, and blue light color
individually and after a while all the LED will be filled with a color.

|6|

|7|

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Code Reference**
:raw-html:`</p>`

[1] WS2812B Datasheet:

https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf


.. |1| image:: /media/ambd_arduino/WS2812B_Basics/image1.png
   :width: 1234
   :height: 747
   :scale: 70 %

.. |2| image:: /media/ambd_arduino/WS2812B_Basics/image2.png
   :width: 1375
   :height: 724
   :scale: 70 %

.. |3| image:: /media/ambd_arduino/WS2812B_Basics/image3.png
   :width: 1320
   :height: 685
   :scale: 60 %

.. |4| image:: /media/ambd_arduino/WS2812B_Basics/image4.png
   :width: 707
   :height: 1005
   :scale: 60 %

.. |5| image:: /media/ambd_arduino/WS2812B_Basics/image5.png
   :width: 621
   :height: 457
   :scale: 70 %

.. |6| image:: /media/ambd_arduino/WS2812B_Basics/image6.png
   :width: 3016
   :height: 544
   :scale: 19 %

.. |7| image:: /media/ambd_arduino/WS2812B_Basics/image7.png
   :width: 2724
   :height: 536
   :scale: 21 %


