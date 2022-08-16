##########################################################################
UART - Retrieve GPS Position
##########################################################################

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Preparation**
:raw-html:`</p>`

  -  AmebaD [AMB21 / AMB22 / AMB23 / BW16] x 1
  -  `Adafruit Ultimate GPS Breakout <https://www.adafruit.com/products/746>`__ x 1 
     (Refer to `official document <https://learn.adafruit.com/adafruit-ultimate-gps?view=all>`__)

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Example**
:raw-html:`</p>`

In this example, we use Adafruit Ultimate GPS Breakout. Its data format
is pure text, so we can connect it to USB to TTL Adapter and observe the
output.

.. image:: /media/ambd_arduino/UART_Retrieve_GPS_Position/image1.png
   :align: center
   :width: 1252
   :height: 294
   :scale: 50 %



.. image:: /media/ambd_arduino/UART_Retrieve_GPS_Position/image2.png
   :align: center
   :width: 649
   :height: 372


It follows the NMEA sentence format (refer to http://aprs.gids.nl/nmea/)
The GPS signal is weak in indoor environment. 
The status that the GPS signal is not received is called “not fix”. 
Bring the GPS module outdoors, when the GPS signal is “fix”,
you would get message similar to the figure below.

.. image:: /media/ambd_arduino/UART_Retrieve_GPS_Position/image3.png
   :align: center
   :width: 777
   :height: 425

In this example we are only interested in the “$GPRMC (Global Positioning Recommended
Minimum Coordinates)”: 
**$GPRMC,032122.000,A,2446.8181,N,12059.7251,E,0.39,78.89,270116,,,A*53** 
Each field is separated by a comma.

   -  First field is the GMT time (Greenwich Mean Time), that is 032122.000
      in this example. The time format is HH:MM:SS.SSS, i.e.,
      03:21:22.000. Note that the time zone and the daylight-saving time
      adjustment should be handled on your own.

   -  Second field represents the status code

      -  V: Void (Invalid)
      -  A: Active, meaning the GPS signal is fix.

   -  The third to sixth fields represent the geolocation

In this example, 2446.8181,N represents 24 degrees 46.8181 minutes north
latitude, and 12059.7251,E represents 120 degrees 59.7251 minutes east
longitude. 

We can search **+24 46.8181’, +120 59.7251’** in Google map
to check whether the position is correct.

   .. image:: /media/ambd_arduino/UART_Retrieve_GPS_Position/image4.png
      :align: center
      :width: 1028
      :height: 651

   -  The seventh field is relative speed(knot). 1 knot = 1.852km/hr, in
      this example the relative speed is 0.39 knot.
   -  The eighth field is the moving angle, which is calculated by its
      moving orbit.
   -  The ninth field is the date with format ddMMyy. In this example,
      “270116” stands for day 27, January, year 2016.
   -  The last field is checksum. In the example we have \*53 as checksum.

**AMB21 / AMB22** Wiring Diagram: 
  
.. image:: /media/ambd_arduino/UART_Retrieve_GPS_Position/image5.png
   :align: center
   :width: 1295
   :height: 1049
   :scale: 57 %

**AMB23** Wiring Diagram: 
  
.. image:: /media/ambd_arduino/UART_Retrieve_GPS_Position/image5-1.png
   :align: center
   :width: 1100
   :height: 809
   :scale: 74 %

**BW16** Wiring Diagram: 
  
.. image:: /media/ambd_arduino/UART_Retrieve_GPS_Position/image5-3.png
   :align: center
   :width: 842
   :height: 590

**BW16-TypeC** Wiring Diagram: 
  
.. image:: /media/ambd_arduino/UART_Retrieve_GPS_Position/image5-4.png
   :align: center
   :width: 602
   :height: 476

Open the example in ``“Files” → “Examples” →
“AmebaSoftwareSerial” → “Adafruit_GPS_parsing”``. 

Compile and upload to Ameba, then press the reset button. 
The result will be output to Serial Monitor: 

.. image:: /media/ambd_arduino/UART_Retrieve_GPS_Position/image6.png
   :align: center
   :width: 649
   :height: 410


.. image:: /media/ambd_arduino/UART_Retrieve_GPS_Position/image7.png
   :align: center
   :width: 649
   :height: 410



