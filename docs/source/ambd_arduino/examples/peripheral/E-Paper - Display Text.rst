##########################################################################
E-Paper - Display Text 
##########################################################################

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Materials**
:raw-html:`</p>`

  - AmebaD [AMB21 / AMB22 / AMB23 / BW16] x 1
  - Waveshare 2.9inch e-Paper HAT (D) x 1

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Example**
:raw-html:`</p>`

In this example, we use the Ameba RTL8722 module connects to a Waveshare
2.9inch e-Paper module to display a few QR codes. The display uses the
flexible substrate as a base plate, with an interface and a reference
system design. 

The 2.9” active area contains 296×128 pixels and has
1-bit white/black full display capabilities. An integrated circuit
contains gate buffer, source buffer, interface, timing control logic,
oscillator, etc… are supplied with each panel. 

You may refer to the
official `2.9inch e-Paper HAT (D)
datasheet <https://www.waveshare.net/w/upload/b/b5/2.9inch_e-Paper_(D)_Specification.pdf>`__ to
know more information about this module. 

Front view of the e-Paper Module:
  
.. image:: /media/ambd_arduino/Epaper_Display_Text/image1.png
   :align: center
   :width: 653
   :height: 291

**AMB21 / AMB22** Wiring Diagram:

.. image:: /media/ambd_arduino/Epaper_Display_Text/image2.png
   :align: center
   :width: 2310
   :height: 913
   :scale: 50 %

.. image:: /media/ambd_arduino/Epaper_Display_Text/image3.png
   :align: center
   :width: 884
   :height: 524

**AMB23** Wiring Diagram:

.. image:: /media/ambd_arduino/Epaper_Display_Text/image2-1.png
   :align: center
   :width: 1159
   :height: 457

.. image:: /media/ambd_arduino/Epaper_Display_Text/image3-1.png
   :align: center
   :width: 1361
   :height: 583

**BW16** Wiring Diagram:

.. image:: /media/ambd_arduino/Epaper_Display_Text/image2-2.png
   :align: center
   :width: 1159
   :height: 457

.. image:: /media/ambd_arduino/Epaper_Display_Text/image3-2.png
   :align: center
   :width: 1361
   :height: 583

**BW16-TypeC** Wiring Diagram:

.. image:: /media/ambd_arduino/Epaper_Display_Text/image3-3.png
   :align: center
   :width: 1363
   :height: 645

Download the Eink zip library, AmebaEink.zip, at 
https://github.com/ambiot/tree/master/Arduino_zip_libraries
Then install the AmebaEink.zip. Open the “DisplayQR” example in 
``“File” → “Examples” → “AmebaEink” → “EinkDisplayText”``:
  
.. image:: /media/ambd_arduino/Epaper_Display_Text/image4.png
   :align: center
   :width: 580
   :height: 523

Upload the code to the board and press
the Reset button after the uploading is done. You will find these texts
displayed on the board:
  
.. image:: /media/ambd_arduino/Epaper_Display_Text/image5.jpeg
   :align: center
   :width: 1430
   :height: 1243
   :scale: 80 %

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Code Reference**
:raw-html:`</p>`

[1] We use Good Display GDEH029A1 2.9 Inch / 296×128 Resolution /
Partial Refresh Arduino Sample Code to get the e-Paper successfully
Display: http://www.good-display.com/product/201.html


