####################
WS2812B - Patterns
####################

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

WS2812B_Patterns allows you to create different light patterns with many
different colors.

Procedure
-----------

Firstly, connect the WS2812B to the Ameba board as shown in the
following diagrams.

**AMB21/AMB22 Wiring Diagram:**

|1|

**AMB23 Wiring Diagram:**

|2|

**BW16 Wiring Diagram:**

|3|

To create different light patterns with many different colors, use
**WS2812B_Patterns**.

Open the example in ``“File” → “Example” → “AmebaWS2812B” →
“WS2812B_Patterns”``

|4|

In the sample code, modify ``NUM_OF_LEDS`` to be the number of LEDs that
you have connected.

|5|

Next compile and upload to Ameba, then press the reset button. You will
see the WS2812B displaying a color wipe, theater chase, rainbow, and
theater chase rainbow light patterns in loop.

|6|

|7|

|8|

|9|


:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Code Reference**
:raw-html:`</p>`

[1] WS2812B Datasheet:

https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf


.. |1| image:: /media/ambd_arduino/WS2812B_Patterns/image1.png
   :width: 1234
   :height: 747
   :scale: 70 %

.. |2| image:: /media/ambd_arduino/WS2812B_Patterns/image2.png
   :width: 1375
   :height: 724
   :scale: 70 %

.. |3| image:: /media/ambd_arduino/WS2812B_Patterns/image3.png
   :width: 1320
   :height: 685
   :scale: 60 %

.. |4| image:: /media/ambd_arduino/WS2812B_Patterns/image4.png
   :width: 707
   :height: 1005
   :scale: 60 %

.. |5| image:: /media/ambd_arduino/WS2812B_Patterns/image5.png
   :width: 833
   :height: 510
   :scale: 70 %

.. |6| image:: /media/ambd_arduino/WS2812B_Patterns/image6.png
   :width: 3016
   :height: 544
   :scale: 19 %

.. |7| image:: /media/ambd_arduino/WS2812B_Patterns/image7.png
   :width: 2724
   :height: 536
   :scale: 21 %

.. |8| image:: /media/ambd_arduino/WS2812B_Patterns/image8.png
   :width: 2888
   :height: 592
   :scale: 20 %

.. |9| image:: /media/ambd_arduino/WS2812B_Patterns/image9.png
   :width: 2300
   :height: 528
   :scale: 25 %
