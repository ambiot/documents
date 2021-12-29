#################################################
BLE – PWM over BLE UART
#################################################

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Materials**
:raw-html:`</p>`

   - AmebaD [RTL8722DM / RTL8722CSM / RTL8722DM MINI] x 1
   - RGB LED
   - Android / iOS smartphone

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Example**
:raw-html:`</p>`

**Introduction**

In this example, a smartphone app is used to transmit commands over BLE
UART to control the PWM outputs and change the color of a RGB LED. Refer
to the other example guides for detailed explanations of the BLE UART
service.

**Procedure**

Connect the RGB LED to the RTL8722 board following the diagram, the
common LED pin may need to connect to 3.3V or GND depending on the type
of LED (common anode / common cathode).
   
**RTL8722DM / RTL8722CSM:**

   |1|

**RTL8722DM MINI:**

   |1-1|

| Ensure that the required app is installed on your smartphone, it is
  available at:
| – Google Play Store:
| https://play.google.com/store/apps/details?id=com.adafruit.bluefruit.le.connect

| – Apple App Store:
| https://apps.apple.com/us/app/bluefruit-connect/id830125974

Open the example, ``“Files” -> “Examples” -> “AmebaBLE” ->
“PWM_over_BLEUart”``.

Upload the code and press the reset button on Ameba once the upload is
finished.

   |2|

| Open the app on your smartphone, scan and connect to the board shown as
  “AMEBA_BLE_DEV” and choose the controller -> color picker function in
  the app.
| |3|

| |4|

| |5|

Using the color selection wheel, saturation, and brightness sliders,
choose a desired color and click select to send the RGB values to the
board. You should see the RGB LED change to the matching color.

|6|

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Code Reference**
:raw-html:`</p>`

The RGB values are sent as three consecutive bytes prefixed by “!C”
characters. The “!” exclamation mark is used to indicate that the
following data is a command, and the “C” character is used to indicate
that the data is RGB values. The received UART message is checked in the
callback function for “!C” first, otherwise it is treated as a regular
message and printed to the serial terminal.

.. |1| image:: /ambd_arduino/media/BLE_PWM_over_BLE_UART/image1.png
   :width: 1383
   :height: 1048
   :scale: 50 %
.. |1-1| image:: /ambd_arduino/media/BLE_PWM_over_BLE_UART/image1-1.png
   :width: 1012
   :height: 699
   :scale: 50 %
.. |2| image:: /ambd_arduino/media/BLE_PWM_over_BLE_UART/image2.png
   :width: 682
   :height: 1202
   :scale: 50 %
.. |3| image:: /ambd_arduino/media/BLE_PWM_over_BLE_UART/image3.png
   :width: 916
   :height: 1317
   :scale: 50 %
.. |4| image:: /ambd_arduino/media/BLE_PWM_over_BLE_UART/image4.png
   :width: 916
   :height: 1317
   :scale: 50 %
.. |5| image:: /ambd_arduino/media/BLE_PWM_over_BLE_UART/image5.png
   :width: 1440
   :height: 2880
   :scale: 25 %
.. |6| image:: /ambd_arduino/media/BLE_PWM_over_BLE_UART/image6.png
   :width: 916
   :height: 1317
   :scale: 50 %