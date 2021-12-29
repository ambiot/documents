##########################################################################
GPIO - Measuring The Temperature And Humidity
##########################################################################

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Preparation**
:raw-html:`</p>`

   -  AmebaD [RTL8722DM / RTL8722CSM / RTL8722DM MINI] x 1
   -  DHT11 or DHT22 or DHT21

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Example**
:raw-html:`</p>`

| DHT11 is a temperature and humidity sensor which operates at voltage
  3.3V~5V. At room temperature, the measurable range of the humidity is
  20% ~ 90%RH with ±5%RH precision, the measurable range of the
  temperature is 0 ~ 50℃ with ±2℃ precision.
| Another choice of temperature and humidity sensor is DHT22 sensor,
  which has better precision. Its measurable range of the humidity is
  0%~100%RH with ±5%RH precision, the measurable range of the
  temperature is -40~125 ℃ with ±0.2℃ precision.
| There are 4 pins on the sensor:

  |1|

Since one of the 4 pins has no function, there are temperature/humidity
sensors with only 3 pins on the market:

  |2|

DHT is normally in the sleeping mode. To get the temperature/humidity
data, please follow the steps:

   1. Awake DHT: Ameba toggles low its DATA pin of GPIO. Now the DATA pin
      of GPIO serves as digital out to Ameba.

   2. DHT response: DHT also toggle low its DATA pin of GPIO. Now the DATA
      pin of GPIO serves as digital in for Ameba.

   3. DHT sends data: DHT sends out the temperature/humidity data (which
      has size 5 bytes) in a bit by bit manner. To represent each bit,
      DHT first pull low the DATA GPIO pin for a while and then pull
      high. If the duration of high is smaller than low, it stands for
      bit 0. Otherwise it stands for bit 1.

   |3|

**RTL8722DM / RTL8722CSM** Wiring Diagram:
 
  |4|

**RTL8722DM MINI** Wiring Diagram:

  |4-1|

Open the sample code in ``“Files” -> “Examples” -> “AmebaGPIO” ->
“DHT_Tester”``. Compile and upload to Ameba, then press the reset button.
The result would be shown on the Serial Monitor.

  |5|

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Code Reference**
:raw-html:`</p>`

Use ``dht.readHumidity()`` read the humidity value, and
use ``dht.readTemperature()`` to read the temperature value.

Every time we read the temperature/humidity data, Ameba uses the
buffered temperature/humidity data unless it found the data has expired
(i.e., has not been updated for over 2 seconds). If the data is expired,
Ameba issues a request to DHT to read the latest data.

.. |1| image:: /ambd_arduino/media/GPIO_Measuring_The_Temperature_And_Humidity/image1.png
   :alt: 1
   :width: 259
   :height: 332
   :scale: 100 %
.. |2| image:: /ambd_arduino/media/GPIO_Measuring_The_Temperature_And_Humidity/image2.png
   :alt: 2
   :width: 114
   :height: 276
   :scale: 100 %
.. |3| image:: /ambd_arduino/media/GPIO_Measuring_The_Temperature_And_Humidity/image3.png
   :alt: 3
   :width: 1429
   :height: 415
   :scale: 50 %
.. |4| image:: /ambd_arduino/media/GPIO_Measuring_The_Temperature_And_Humidity/image4.png
   :width: 704
   :height: 591
   :scale: 50 %
.. |4-1| image:: /ambd_arduino/media/GPIO_Measuring_The_Temperature_And_Humidity/image4-1.png
   :width: 863
   :height: 789
   :scale: 50 %
.. |5| image:: /ambd_arduino/media/GPIO_Measuring_The_Temperature_And_Humidity/image5.png
   :alt: 5
   :width: 1077
   :height: 930
   :scale: 50 %