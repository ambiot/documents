[RTL8722CSM] [RTL8722DM] BLE – PWM over BLE UART
=================================================
Materials

-  Ameba D [RTL8722 CSM/DM] x 1

-  RGB LED

-  Android / iOS smartphone

Example

**Introduction**

In this example, a smartphone app is used to transmit commands over BLE
UART to control the PWM outputs and change the color of a RGB LED. Refer
to the other example guides for detailed explanations of the BLE UART
service.

**Procedure**

Connect the RGB LED to the RTL8722 board following the diagram, the
common LED pin may need to connect to 3.3V or GND depending on the type
of LED (common anode / common cathode).

.. image:: ../media/[RTL8722CSM]_[RTL8722DM]_BLE_PWM_over_BLE_UART/image1.png
   :alt: 1
   :width: 6.25in
   :height: 7.40972in

| Ensure that the required app is installed on your smartphone, it is
  available at:
| – Google Play Store:
| https://play.google.com/store/apps/details?id=com.adafruit.bluefruit.le.connect

| – Apple App Store:
| https://apps.apple.com/us/app/bluefruit-connect/id830125974

Open the example, "Files" -> "Examples" -> "AmebaBLE" ->
"PWM_over_BLEUart".

Upload the code and press the reset button on Ameba once the upload is
finished.

.. image:: ../media/[RTL8722CSM]_[RTL8722DM]_BLE_PWM_over_BLE_UART/image2.png
   :alt: 1
   :width: 6.25in
   :height: 5.99306in

Open the app on your smartphone, scan and connect to the board shown as
"AMEBA_BLE_DEV" and choose the controller -> color picker function in
the app.

.. image:: ../media/[RTL8722CSM]_[RTL8722DM]_BLE_PWM_over_BLE_UART/image3.png
   :alt: 1
   :width: 4.16667in
   :height: 5.99306in

.. image:: ../media/[RTL8722CSM]_[RTL8722DM]_BLE_PWM_over_BLE_UART/image4.png
   :alt: 1
   :width: 4.16667in
   :height: 5.99306in

.. image:: ../media/[RTL8722CSM]_[RTL8722DM]_BLE_PWM_over_BLE_UART/image5.png
   :alt: 1
   :width: 4.16667in
   :height: 5.99306in

Using the color selection wheel, saturation, and brightness sliders,
choose a desired color and click select to send the RGB values to the
board. You should see the RGB LED change to the matching color.

.. image:: ../media/[RTL8722CSM]_[RTL8722DM]_BLE_PWM_over_BLE_UART/image6.png
   :alt: 1
   :width: 4.16667in
   :height: 5.99306in

Code Reference

The RGB values are sent as three consecutive bytes prefixed by "!C"
characters. The "!" exclamation mark is used to indicate that the
following data is a command, and the "C" character is used to indicate
that the data is RGB values. The received UART message is checked in the
callback function for "!C" first, otherwise it is treated as a regular
message and printed to the serial terminal.
