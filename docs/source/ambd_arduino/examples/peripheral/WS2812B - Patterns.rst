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

.. image:: /media/ambd_arduino/WS2812B_Patterns/image1.png
   :align: center
   :width: 1234
   :height: 747
   :scale: 90 %

**AMB23 Wiring Diagram:**

.. image:: /media/ambd_arduino/WS2812B_Patterns/image2.png
   :align: center
   :width: 1375
   :height: 724
   :scale: 90 %

**BW16 Wiring Diagram:**

.. image:: /media/ambd_arduino/WS2812B_Patterns/image3.png
   :align: center
   :width: 1320
   :height: 685

**BW16-TypeC Wiring Diagram:**

.. image:: /media/ambd_arduino/WS2812B_Patterns/image4.png
   :align: center
   :width: 1348
   :height: 709

To create different light patterns with many different colors, use
**WS2812B_Patterns**.

Open the example in ``“File” → “Example” → “AmebaWS2812B” →
“WS2812B_Patterns”``

.. image:: /media/ambd_arduino/WS2812B_Patterns/image5.png
   :align: center
   :width: 707
   :height: 1005

In the sample code, modify **NUM_OF_LEDS** to be the number of LEDs that
you have connected.


.. image:: /media/ambd_arduino/WS2812B_Patterns/image6.png
   :align: center
   :width: 833
   :height: 510
   :scale: 70 %

Next compile and upload to Ameba, then press the reset button. You will
see the WS2812B displaying a color wipe, theater chase, rainbow, and
theater chase rainbow light patterns in loop.

.. image:: /media/ambd_arduino/WS2812B_Patterns/image7.png
   :align: center
   :width: 3016
   :height: 544
   :scale: 19 %

.. image:: /media/ambd_arduino/WS2812B_Patterns/image8.png
   :align: center
   :width: 2724
   :height: 536
   :scale: 21 %

.. image:: /media/ambd_arduino/WS2812B_Patterns/image9.png
   :align: center
   :width: 2888
   :height: 592
   :scale: 20 %

.. image:: /media/ambd_arduino/WS2812B_Patterns/image10.png
   :align: center
   :width: 2300
   :height: 528
   :scale: 25 %

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Code Reference**
:raw-html:`</p>`

[1] WS2812B Datasheet:

https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf



