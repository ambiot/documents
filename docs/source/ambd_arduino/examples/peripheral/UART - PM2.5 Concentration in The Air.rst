#########################################################
UART - PM2.5 Concentration in The Air
#########################################################

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Preparation**
:raw-html:`</p>`
   
   - AmebaD [AMB21 / AMB22 / AMB23 / BW16] x 1
   - PlanTower PMS3003 or PMS5003 x 1

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Example**
:raw-html:`</p>`

PMS3003 (or PMS5003) is a sensor of air quality, it can detect the
concentration of those 0.3 to 10 micrometer particulate matters in the
air. The sensor output its data via UART. 

The PMS3003 (or PMS5003) sensor detects the concentration value of PM 1.0, PM 2.5, PM 10. 
Take PM 2.5 for example, it stands for the fine particles with a diameter of 2.5
micrometers or less. 

Open the example in ``“File” → “Examples” → “AmebaSoftwareSerial” → “PMS3003_AirQuality”`` 

.. image:: /media/ambd_arduino/UART_PM2.5_Concentration_in_the_Air/image1.png
   :align: center
   :width: 777
   :height: 1006

There are 8 pins in PMS3003:

.. image:: /media/ambd_arduino/UART_PM2.5_Concentration_in_the_Air/image2.png
   :align: center
   :width: 981
   :height: 869

PMS3003 requires 5V power, but the working voltage of its IC is 3.3C.
Therefore, the working voltage of Reset, TX, RX, Set are 3.3 as well. If
the “Set” pin is pulled to high, the PMS3003 is put to operating mode. 
If the “Set” pin is pulled low, the PMS3003 is put to standby mode.

TX/RX pins are for UART connection. Under operating mode, PMS3003 output
the data it reads continuously. Each data is of 32 byte, please refer to
the following article for detailed data format
information: 

https://www.dfrobot.com/wiki/index.php?title=PM2.5_laser_dust_sensor_SKU:SEN0177 

**AMB21 / AMB22** Wiring Diagram:
  
.. image:: /media/ambd_arduino/UART_PM2.5_Concentration_in_the_Air/image3.png
   :align: center
   :width: 602
   :height: 440

**AMB23** Wiring Diagram:

.. image:: /media/ambd_arduino/UART_PM2.5_Concentration_in_the_Air/image3-1.png
   :align: center
   :width: 602
   :height: 567

**BW16** Wiring Diagram:

.. image:: /media/ambd_arduino/UART_PM2.5_Concentration_in_the_Air/image3-2.png
   :align: center
   :width: 602
   :height: 520

**BW16-TypeC** Wiring Diagram:

.. image:: /media/ambd_arduino/UART_PM2.5_Concentration_in_the_Air/image3-3.png
   :align: center
   :width: 602
   :height: 562

In this example, we do not use the “Set” and “Reset” pins. 

Compile the code and upload it to Ameba. After pressing
the Reset button, Ameba starts to output the PM 2.5 data to serial
monitor.
  
.. image:: /media/ambd_arduino/UART_PM2.5_Concentration_in_the_Air/image4.png
   :align: center
   :width: 649
   :height: 410
