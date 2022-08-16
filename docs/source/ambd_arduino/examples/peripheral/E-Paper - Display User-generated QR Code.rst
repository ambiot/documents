##########################################################################
E-Paper - Display User-generated QR Code
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

| In this example, we use the Ameba RTL8722 module connects to a Waveshare
  2.9inch e-Paper module to display a few QR codes. The display uses the
  flexible substrate as a base plate, with an interface and a reference
  system design. 
| The 2.9” active area contains 296×128 pixels and has
  1-bit white/black full display capabilities. An integrated circuit
  contains gate buffer, source buffer, interface, timing control logic,
  oscillator, etc… are supplied with each panel. 
| You may refer to the
  official `2.9inch e-Paper HAT (D)
  datasheet <https://www.waveshare.net/w/upload/b/b5/2.9inch_e-Paper_(D)_Specification.pdf>`__ to
  know more information about this module. 

Front view of the e-Paper Module:
  
.. image:: /media/ambd_arduino/Epaper_Display_user_generated_QR_code/image1.png
   :align: center
   :width: 653
   :height: 291

**AMB21 / AMB22** Wiring Diagram:

.. image:: /media/ambd_arduino/Epaper_Display_user_generated_QR_code/image2.png
   :align: center
   :width: 2310
   :height: 913
   :scale: 50 %

.. image:: /media/ambd_arduino/Epaper_Display_user_generated_QR_code/image3.png
   :align: center
   :width: 884
   :height: 524

**AMB23** Wiring Diagram:

.. image:: /media/ambd_arduino/Epaper_Display_user_generated_QR_code/image2-1.png
   :align: center
   :width: 1159
   :height: 457

.. image:: /media/ambd_arduino/Epaper_Display_user_generated_QR_code/image3-1.png
   :align: center
   :width: 1631
   :height: 583

**BW16** Wiring Diagram:

.. image:: /media/ambd_arduino/Epaper_Display_user_generated_QR_code/image2-2.png
   :align: center
   :width: 1159
   :height: 457 

.. image:: /media/ambd_arduino/Epaper_Display_user_generated_QR_code/image3-2.png
   :align: center
   :width: 1361
   :height: 583 

**BW16-TypeC** Wiring Diagram:

.. image:: /media/ambd_arduino/Epaper_Display_user_generated_QR_code/image3-3.png
   :align: center
   :width: 1363
   :height: 645

Download the Eink zip library, AmebaEink.zip, at 
https://github.com/ambiot/tree/master/Arduino_zip_libraries
Then install the AmebaEink.zip. Open the “DisplayQR” example in 
``“File” → “Examples” → “AmebaEink” → “DisplayQR”``:

.. image:: /media/ambd_arduino/Epaper_Display_user_generated_QR_code/image4.png
   :align: center
   :width: 727
   :height: 640
  
Modify the URL in the loop() section as
your wish, after that, verify and upload the code to the Ameba board.
Upon successfully upload the sample code and press the reset button, a
QR code generated based on the URL of your input will be shown on the
E-Paper module. The QR code showing below leads to our Ameba IoT
official website: `Ameba
ARDUINO <https://www.amebaiot.com/ameba-arduino-summary>`__ 

.. image:: /media/ambd_arduino/Epaper_Display_user_generated_QR_code/image5.jpeg
   :align: center
   :width: 1328
   :height: 1027
   :scale: 68 %

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Code Reference**
:raw-html:`</p>`

[1] We use Good Display GDEH029A1 2.9 Inch / 296×128 Resolution /
Partial Refresh Arduino Sample Code to get the e-Paper successfully
Display: http://www.good-display.com/product/201.html

[2] Provide the link to how to generate a QR code on the E-paper
module: https://eugeniopace.org/qrcode/arduino/eink/2019/07/01/qrcode-on-arduino.html

[3] A simple library for generating QR codes in C, optimized for
processing and memory-constrained
systems: https://github.com/ricmoo/QRCode#data-capacities

