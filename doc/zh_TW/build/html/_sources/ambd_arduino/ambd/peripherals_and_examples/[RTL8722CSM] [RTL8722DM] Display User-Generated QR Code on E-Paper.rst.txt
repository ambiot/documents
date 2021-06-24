[RTL8722CSM] [RTL8722DM] Display User-Generated QR Code on E-Paper
========================================================================
Materials

-  Ameba x 1

-  Waveshare 2.9inch e-Paper HAT (D) x 1

Example

In this example, we use the Ameba RTL8722 module connects to a Waveshare
2.9inch e-Paper module to display a few QR codes. The display uses the
flexible substrate as the base plate, with interface and a reference
system design.The 2.9” active area contains 296×128 pixels and has 1-bit
white/black full display capabilities. An integrated circuit contains
gate buffer, source buffer, interface, timing control logic, oscillator,
etc… are supplied with each panel. You may refer to the
official `2.9inch e-Paper HAT (D)
datasheet <https://www.waveshare.net/w/upload/b/b5/2.9inch_e-Paper_(D)_Specification.pdf>`__ to
know more about this module. Front view of the e-Paper
Module:|1|\ RTL8722 wiring diagram:|image1|\ |image2|\ Firstly, you need
to open the “DisplayQR” example in “File” -> “Examples” -> “AmebaEink”
-> “EinkDisplayQR”:|image3|\ Modify the URL in the loop() section as
your wish, after that, verify and upload the code to the Ameba board.
Upon successfully upload the sample code and press the reset button, a
QR code generated based on the URL of your input will be shown on the
E-Paper module. The QR code showing below leads to our Ameba IoT
official website: `Ameba
ARDUINO <https://www.amebaiot.com/ameba-arduino-summary>`__\ |image4|

Code Reference

| [1] We use Good Display GDEH029A1 2.9 Inch / 296×128 Resolution /
  Partial Refresh Arduino Sample Code to get the e-Paper successfully
  Display: http://www.good-display.com/product/201.html
| [2] Provide the link to how to generate a QR code on the E-paper
  module: https://eugeniopace.org/qrcode/arduino/eink/2019/07/01/qrcode-on-arduino.html
| [3] A simple library for generating QR codes in C, optimized for
  processing and memory-constrained
  systems: https://github.com/ricmoo/QRCode#data-capacities

.. |1| image:: ../media/[RTL8722CSM]_[RTL8722DM]_Display_User_Generated_QR_Code_on_E_Paper/image1.png
   :width: 5.89583in
   :height: 7.40972in
.. |image1| image:: ../media/[RTL8722CSM]_[RTL8722DM]_Display_User_Generated_QR_Code_on_E_Paper/image2.png
   :width: 6.5in
   :height: 5.64931in
.. |image2| image:: ../media/[RTL8722CSM]_[RTL8722DM]_Display_User_Generated_QR_Code_on_E_Paper/image3.png
   :width: 6.5in
   :height: 5.64931in
.. |image3| image:: ../media/[RTL8722CSM]_[RTL8722DM]_Display_User_Generated_QR_Code_on_E_Paper/image4.png
   :width: 6.5in
   :height: 5.64931in
.. |image4| image:: ../media/[RTL8722CSM]_[RTL8722DM]_Display_User_Generated_QR_Code_on_E_Paper/image5.jpeg
   :width: 6.5in
   :height: 5.64931in
