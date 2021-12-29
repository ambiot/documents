##########################################################################
E-Paper - Display Images
##########################################################################

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Materials**
:raw-html:`</p>`

  - AmebaD [RTL8722DM / RTL8722CSM / RTL8722DM MINI] x 1
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
  
  |1| 

**RTL8722DM / RTL8722CSM** Wiring Diagram:

  |2| 

  |3| 

**RTL8722DM MINI** Wiring Diagram:

  |2-1| 

  |3-1| 

**RTL8720DN(BW16)** Wiring Diagram:

  |2-2| 

  |3-2| 

Firstly, you need
to prepare a picture/photo in the format of 296×128 pixels. We can
easily find a photo resizing tool online, for example, the `Online Image
Resizer <https://resizeimage.net/>`__. 

Following the instructions on the
website, then download the generated image in JPG format. 

Secondly, we use
the `Image2LCD <http://www.waveshare.net/w/upload/3/36/Image2Lcd.7z>`__ tool
to transfer the downloaded 296×128 image into hexadecimal codes. You can
visit
this `YouTube <https://www.youtube.com/watch?v=kAmnU5Y96MA&t=363s>`__ link
to get detailed instructions. 

| Download the Eink zip library, AmebaEink.zip, at 
  https://github.com/ambiot/ambd_arduino/tree/master/Arduino_zip_libraries
| Then install the AmebaEink.zip. Open the “DisplayQR” example in 
  ``“File” → “Examples” → “AmebaEink” → “EinkDisplayImage”``:

  |4| 
  
| Press the reset button after uploading the sample code, you will need to wait 
  for around 1-2 seconds for the e-Paper module to fresh its screen. Then the 
  screen will start to display an image for 5 seconds first, then 3 different 
  QR codes will be displayed every 5 seconds (showing in the screenshot below, 
  you may scan the QR codes and find out more information if you wish to). 
  Lastly, a gif which comes in form of 3 frames will be displayed for a few seconds. 
  
  |5|

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Code Reference**
:raw-html:`</p>`

| [1] We use Good Display GDEH029A1 2.9 Inch / 296×128 Resolution /
  Partial Refresh Arduino Sample Code to get the e-Paper successfully
  Display: http://www.good-display.com/product/201.html
| [2] Provide the link to how to generate a QR code on the E-paper
  module: https://eugeniopace.org/qrcode/arduino/eink/2019/07/01/qrcode-on-arduino.html

.. |1| image:: /ambd_arduino/media/Display_Images_On_E_Paper/image1.png
   :width: 653
   :height: 291
   :scale: 50 %
.. |2| image:: /ambd_arduino/media/Display_Images_On_E_Paper/image2.png
   :width: 2310
   :height: 913
   :scale: 25 %
.. |3| image:: /ambd_arduino/media/Display_Images_On_E_Paper/image3.png
   :width: 884
   :height: 524
   :scale: 60 %
.. |2-1| image:: /ambd_arduino/media/Display_Images_On_E_Paper/image2-1.png
   :width: 1159
   :height: 457
   :scale: 50 %
.. |3-1| image:: /ambd_arduino/media/Display_Images_On_E_Paper/image3-1.png
   :width: 1361
   :height: 583
   :scale: 50 %
.. |2-2| image:: /ambd_arduino/media/Display_Images_On_E_Paper/image2-2.png
   :width: 1159
   :height: 457
   :scale: 50 %
.. |3-2| image:: /ambd_arduino/media/Display_Images_On_E_Paper/image3-2.png
   :width: 1361
   :height: 583
   :scale: 50 %
.. |4| image:: /ambd_arduino/media/Display_Images_On_E_Paper/image4.png
   :width: 629
   :height: 710
   :scale: 50 %
.. |5| image:: /ambd_arduino/media/Display_Images_On_E_Paper/image5.png
   :width: 752
   :height: 969
   :scale: 50 %