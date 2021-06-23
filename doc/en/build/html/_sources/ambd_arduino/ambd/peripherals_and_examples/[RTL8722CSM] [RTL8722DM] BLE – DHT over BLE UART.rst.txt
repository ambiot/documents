[RTL8722CSM] [RTL8722DM] BLE – DHT over BLE UART
====================================================
Materials

-  Ameba D [RTL8722 CSM/DM] x 1

-  DHT11 or DHT22 or DHT21

-  Android / iOS smartphone

Example

**Introduction**

In this example, the data obtained from a DHT temperature and humidity
sensor are transmitted over a BLE UART service to a smartphone. Refer to
the other examples for detailed explanations of using the DHT sensor and
the BLE UART service.

**Procedure**

Connect the DHT sensor to the Ameba board following the diagram.

.. image:: ../media/[RTL8722CSM]_[RTL8722DM]_BLE_DHT_over_BLE_UART/image1.png
   :alt: 1
   :width: 6.25in
   :height: 7.40972in

| Ensure that a compatible BLE UART app is installed on your smartphone,
  it is available at:
| – Google Play Store:
| `https://play.google.com/store/apps/details?id=com.adafruit.bluefruit.le.connecta>
   <https://play.google.com/store/apps/details?id=com.adafruit.bluefruit.le.connect>`__\ https://play.google.com/store/apps/details?id=de.kai_morich.serial_bluetooth_terminal

| – Apple App Store:
| https://apps.apple.com/us/app/bluefruit-connect/id830125974

Open the example, “Files” -> “Examples” -> “AmebaBLE” ->
“DHT_over_BLEUart”.

.. image:: ../media/[RTL8722CSM]_[RTL8722DM]_BLE_DHT_over_BLE_UART/image2.png
   :alt: 1
   :width: 6.25in
   :height: 5.99306in

| Upload the code and press the reset button on Ameba once the upload is
  finished.
| Open the app on your smartphone, scan and connect to the Ameba board
  shown as “AMEBA_BLE_DEV” and choose the UART function in the app.

.. image:: ../media/[RTL8722CSM]_[RTL8722DM]_BLE_DHT_over_BLE_UART/image3.png
   :alt: 1
   :width: 4.16667in
   :height: 5.99306in

.. image:: ../media/[RTL8722CSM]_[RTL8722DM]_BLE_DHT_over_BLE_UART/image4.png
   :alt: 1
   :width: 4.16667in
   :height: 5.99306in

After starting the UART function, notifications should be received every
5 seconds containing the measured temperature and humidity.

.. image:: ../media/[RTL8722CSM]_[RTL8722DM]_BLE_DHT_over_BLE_UART/image5.png
   :alt: 1
   :width: 4.16667in
   :height: 5.99306in
