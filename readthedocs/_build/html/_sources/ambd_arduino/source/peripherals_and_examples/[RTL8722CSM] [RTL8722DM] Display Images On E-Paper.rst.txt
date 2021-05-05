[RTL8722CSM] [RTL8722DM] Display Images On E-Paper
====================================================
Materials

-  Ameba x 1

-  Waveshare 2.9inch e-Paper HAT (D) x 1

Example

In this example, we use the Ameba RTL8722 module connects to a Waveshare
2.9inch e-Paper module to display a few QR codes. The display uses the
flexible substrate as a base plate, with an interface and a reference
system design. The 2.9” active area contains 296×128 pixels and has
1-bit white/black full display capabilities. An integrated circuit
contains gate buffer, source buffer, interface, timing control logic,
oscillator, etc… are supplied with each panel. You may refer to the
official `2.9inch e-Paper HAT (D)
datasheet <https://www.waveshare.net/w/upload/b/b5/2.9inch_e-Paper_(D)_Specification.pdf>`__ to
know more information about this module. Front view of the e-Paper
Module:|1|\ RTL8722 wiring diagram:|image1|\ |image2|\ Firstly, you need
to prepare a picture/photo in the format of 296×128 pixels. We can
easily find a photo resizing tool online, for example, the `Online Image
Resizer <https://resizeimage.net/>`__. Following the instructions on the
website, then download the generated image in JPG format. Secondly, we
use
the `Image2LCD <http://www.waveshare.net/w/upload/3/36/Image2Lcd.7z>`__ tool
to transfer the downloaded 296×128 image into hexadecimal codes. You can
visit
this `YouTube <https://www.youtube.com/watch?v=kAmnU5Y96MA&t=363s>`__ link
to get detailed instructions. Then we move to the coding part for this
example. First, make sure the correct Ameba development board is
selected in Arduino IDE: “Tools” -> “Board” -> “RTL8722CSM/RTL8722DM”.
Then open the “DisplayQR” example in “File” -> “Examples” -> “AmebaEink”
-> “EinkDisplayImage “:|image3|\ Upon successfully upload the sample
code and press the reset button, you need to wait for around 1~2 seconds
for the e-Paper module to fresh its screen. Then the screen will start
to display an image for 5 seconds first, then 3 different QR codes will
be displayed every 5 seconds (showing in the screenshot below, y may
scan the QR codes and find out more information if you wish to). Lastly,
a gif in which forms of 3 frames will be displayed for a few
seconds.\ |image4|

Code Reference

| [1] We use Good Display GDEH029A1 2.9 Inch / 296×128 Resolution /
  Partial Refresh Arduino Sample Code to get the e-Paper successfully
  Display: http://www.good-display.com/product/201.html
| [2] Provide the link to how to generate a QR code on the E-paper
  module: https://eugeniopace.org/qrcode/arduino/eink/2019/07/01/qrcode-on-arduino.html

.. |1| image:: ../media/[RTL8722CSM]_[RTL8722DM]_Display_Images_On_E-Paper/image1.png
   :width: 5.20833in
   :height: 5.20833in
.. |image1| image:: ../media/[RTL8722CSM]_[RTL8722DM]_Display_Images_On_E-Paper/image2.png
   :width: 6.5in
   :height: 5.64931in
.. |image2| image:: ../media/[RTL8722CSM]_[RTL8722DM]_Display_Images_On_E-Paper/image3.png
   :width: 6.5in
   :height: 5.64931in
.. |image3| image:: ../media/[RTL8722CSM]_[RTL8722DM]_Display_Images_On_E-Paper/image4.png
   :width: 6.5in
   :height: 5.64931in
.. |image4| image:: ../media/[RTL8722CSM]_[RTL8722DM]_Display_Images_On_E-Paper/image5.png
   :width: 6.5in
   :height: 5.64931in
