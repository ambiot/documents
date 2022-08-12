##########################################################################
GPIO - Measure Temperature and Humidity
##########################################################################

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Preparation**
:raw-html:`</p>`

   -  AmebaD [AMB21 / AMB22 / AMB23 / BW16] x 1
   -  DHT11 or DHT22 or DHT21

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Example**
:raw-html:`</p>`

DHT11 is a temperature and humidity sensor which operates at voltage
3.3V~5V. At room temperature, the measurable range of the humidity is
20% ~ 90%RH with ±5%RH precision, the measurable range of the
temperature is 0 ~ 50℃ with ±2℃ precision.

Another choice of temperature and humidity sensor is DHT22 sensor,
which has better precision. Its measurable range of the humidity is
0%~100%RH with ±5%RH precision, the measurable range of the
temperature is -40~125 ℃ with ±0.2℃ precision.
There are 4 pins on the sensor:

.. image:: /media/ambd_arduino/GPIO_Measure_Temperature_And_Humidity/image1.png
   :align: center
   :width: 259
   :height: 332

Since one of the 4 pins has no function, there are temperature/humidity
sensors with only 3 pins on the market:

.. image:: /media/ambd_arduino/GPIO_Measure_Temperature_And_Humidity/image2.png
   :align: center
   :width: 114
   :height: 276

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

.. image:: /media/ambd_arduino/GPIO_Measure_Temperature_And_Humidity/image3.png
   :align: center
   :width: 1429
   :height: 415

**AMB21 / AMB22** Wiring Diagram:
 
.. image:: /media/ambd_arduino/GPIO_Measure_Temperature_And_Humidity/image4.png
   :align: center
   :width: 1077
   :height: 930
   :scale: 75 %

**AMB23** Wiring Diagram:

.. image:: /media/ambd_arduino/GPIO_Measure_Temperature_And_Humidity/image4-1.png
   :align: center
   :width: 863
   :height: 789
   :scale: 88 %

**BW16** Wiring Diagram:

.. image:: /media/ambd_arduino/GPIO_Measure_Temperature_And_Humidity/image4-3.png
   :align: center
   :width: 654
   :height: 670

**BW16-TypeC** Wiring Diagram:

.. image:: /media/ambd_arduino/GPIO_Measure_Temperature_And_Humidity/image4-4.png
   :align: center
   :width: 724
   :height: 650


Open the sample code in ``“Files” → “Examples” → “AmebaGPIO” →
“DHT_Tester”``. Compile and upload to Ameba, then press the reset button.
The result would be shown on the Serial Monitor.

.. image:: /media/ambd_arduino/GPIO_Measure_Temperature_And_Humidity/image5.png
   :align: center
   :width: 1077
   :height: 930
   :scale: 75 % 

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Code Reference**
:raw-html:`</p>`

Use ``dht.readHumidity()`` read the humidity value, and
use ``dht.readTemperature()`` to read the temperature value.

Every time we read the temperature/humidity data, Ameba uses the
buffered temperature/humidity data unless it found the data has expired
(i.e., has not been updated for over 2 seconds). If the data is expired,
Ameba issues a request to DHT to read the latest data.

