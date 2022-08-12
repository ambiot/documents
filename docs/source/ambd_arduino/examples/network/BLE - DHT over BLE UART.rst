#################################################
BLE – DHT over BLE UART
#################################################

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Materials**
:raw-html:`</p>`

   - AmebaD [AMB21 / AMB22 / AMB23 / BW16] x 1
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

**AMB21 / AMB22:**

.. image:: /media/ambd_arduino/BLE_DHT_over_BLE_UART/image1.png
   :align: center
   :width: 1077
   :height: 930
   :scale: 64 %

**AMB23:**

.. image:: /media/ambd_arduino/BLE_DHT_over_BLE_UART/image1-1.png
   :align: center
   :width: 863
   :height: 789
   :scale: 75 %

**BW16:**

.. image:: /media/ambd_arduino/BLE_DHT_over_BLE_UART/image1-2.png
   :align: center
   :width: 869
   :height: 1179
   :scale: 50 %

**BW16-TypeC:**

.. image:: /media/ambd_arduino/BLE_DHT_over_BLE_UART/image1-3.png
   :align: center
   :width: 683
   :height: 772
   :scale: 77 %


Ensure that a compatible BLE UART app is installed on your smartphone,
it is available at:

– Google Play Store:
https://play.google.com/store/apps/details?id=com.adafruit.bluefruit.le.connect
https://play.google.com/store/apps/details?id=de.kai_morich.serial_bluetooth_terminal

– Apple App Store:
https://apps.apple.com/us/app/bluefruit-connect/id830125974


Open the example, ``“Files” → “Examples” → “AmebaBLE” →  
“DHT_over_BLEUart”``.

.. image:: /media/ambd_arduino/BLE_DHT_over_BLE_UART/image2.png
   :align: center
   :width: 750
   :height: 1044
   :scale: 86 %

Upload the code and press the reset button on Ameba once the upload is
finished.
Open the app on your smartphone, scan and connect to the Ameba board
shown as “AMEBA_BLE_DEV” and choose the UART function in the app.

.. image:: /media/ambd_arduino/BLE_DHT_over_BLE_UART/image3.png
   :align: center
   :width: 1440
   :height: 2880
   :scale: 34 %

.. image:: /media/ambd_arduino/BLE_DHT_over_BLE_UART/image4.png
   :align: center
   :width: 1440
   :height: 2880
   :scale: 34 %

After starting the UART function, notifications should be received every
5 seconds containing the measured temperature and humidity.

.. image:: /media/ambd_arduino/BLE_DHT_over_BLE_UART/image5.png
   :align: center
   :width: 1440
   :height: 2880
   :scale: 34 %

