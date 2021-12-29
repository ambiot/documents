##########################################################################
E-Paper - Display Text 
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

| Download the Eink zip library, AmebaEink.zip, at 
  https://github.com/ambiot/ambd_arduino/tree/master/Arduino_zip_libraries
| Then install the AmebaEink.zip. Open the “DisplayQR” example in 
  ``“File” -> “Examples” -> “AmebaEink” -> “EinkDisplayText”``:
  
  |4|

Upload the code to the board and press
the Reset button after the uploading is done. You will find these texts
displayed on the board:
  
  |5|

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Code Reference**
:raw-html:`</p>`

[1] We use Good Display GDEH029A1 2.9 Inch / 296×128 Resolution /
Partial Refresh Arduino Sample Code to get the e-Paper successfully
Display: http://www.good-display.com/product/201.html

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
.. |4| image:: /ambd_arduino/media/Display_Text_On_E_Paper/image4.png
   :width: 580
   :height: 523
   :scale: 100 %
.. |5| image:: /ambd_arduino/media/Display_Text_On_E_Paper/image5.jpeg
   :width: 1430
   :height: 1243
   :scale: 50 %
