#################################################
BLE – DHT over BLE UART
#################################################

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Materials**
:raw-html:`</p>`

   - AmebaD [RTL8722DM/ RTL8722CSM/ RTL8722DM MINI] x 1
   - DHT11 or DHT22 or DHT21
   - Android / iOS smartphone

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Example**
:raw-html:`</p>`

**Introduction**

In this example, the data obtained from a DHT temperature and humidity
sensor are transmitted over a BLE UART service to a smartphone. Refer to
the other examples for detailed explanations of using the DHT sensor and
the BLE UART service.

**Procedure**

Connect the DHT sensor to the Ameba board following the diagram.

**RTL8722DM / RTL8722CSM:**

   |1|

**RTL8722DM MINI:**

   |1-1|

| Ensure that a compatible BLE UART app is installed on your smartphone,
  it is available at:
| - Google Play Store:
| `https://play.google.com/store/apps/details?id=com.adafruit.bluefruit.le.connecta>
   <https://play.google.com/store/apps/details?id=com.adafruit.bluefruit.le.connect>`__\ https://play.google.com/store/apps/details?id=de.kai_morich.serial_bluetooth_terminal

| - Apple App Store:
| https://apps.apple.com/us/app/bluefruit-connect/id830125974

Open the example, ``“Files” -> “Examples” -> “AmebaBLE” ->
“DHT_over_BLEUart”``.

   |2|

| Upload the code and press the reset button on Ameba once the upload is
  finished.
| Open the app on your smartphone, scan and connect to the Ameba board
  shown as “AMEBA_BLE_DEV” and choose the UART function in the app.
| |3|
| |4|
| After starting the UART function, notifications should be received every
  5 seconds containing the measured temperature and humidity.
| |5|

.. |1| image:: /ambd_arduino/media/BLE_DHT_over_BLE_UART/image1.png
   :width: 1077
   :height: 930
   :scale: 50 %
.. |1-1| image:: /ambd_arduino/media/BLE_DHT_over_BLE_UART/image1-1.png
   :width: 863
   :height: 789
   :scale: 50 %
.. |2| image:: /ambd_arduino/media/BLE_DHT_over_BLE_UART/image2.png
   :width: 750
   :height: 1044
   :scale: 50 %
.. |3| image:: /ambd_arduino/media/BLE_DHT_over_BLE_UART/image3.png
   :width: 916
   :height: 1317
   :scale: 50 %
.. |4| image:: /ambd_arduino/media/BLE_DHT_over_BLE_UART/image4.png
   :width: 916
   :height: 1317
   :scale: 50 %
.. |5| image:: /ambd_arduino/media/BLE_DHT_over_BLE_UART/image5.png
   :width: 916
   :height: 1317
   :scale: 50 %