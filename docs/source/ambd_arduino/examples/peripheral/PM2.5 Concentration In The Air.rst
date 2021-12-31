#########################################################
PM2.5 Concentration in The Air
#########################################################

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Preparation**
:raw-html:`</p>`
   
   - AmebaD [RTL8722DM / RTL8722CSM / RTL8722DM MINI] x 1
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

Open the example in ``“File” -> “Examples” -> “AmebaSoftwareSerial” -> “PMS3003_AirQuality”`` 

  |1|

There are 8 pins in PMS3003:

  |2|

PMS3003 requires 5V power, but the working voltage of its IC is 3.3C.
Therefore, the working voltage of Reset, TX, RX, Set are 3.3 as well. If
the “Set” pin is pulled to high, the PMS3003 is put to operating mode. 
If the “Set” pin is pulled low, the PMS3003 is put to standby mode.

TX/RX pins are for UART connection. Under operating mode, PMS3003 output
the data it reads continuously. Each data is of 32 byte, please refer to
the following article for detailed data format
information: 

https://www.dfrobot.com/wiki/index.php?title=PM2.5_laser_dust_sensor_SKU:SEN0177 RTL8722

**RTL8722DM / RTL8722CSM** Wiring Diagram:
  
  |3|

**RTL8722DM MINI** Wiring Diagram:

  |3-1|

In this example, we do not use the “Set” and “Reset” pins. 

Compile the code and upload it to Ameba. After pressing
the Reset button, Ameba starts to output the PM 2.5 data to serial
monitor.
  
  |4|

.. |1| image:: /ambd_arduino/media/[RTL8722CSM]_[RTL8722DM]_Detect_PM2/image1.png
   :width: 981
   :height: 869
   :scale: 50 %
.. |2| image:: /ambd_arduino/media/[RTL8722CSM]_[RTL8722DM]_Detect_PM2/image2.png
   :width: 777
   :height: 1006
   :scale: 50 %
.. |3| image:: /ambd_arduino/media/[RTL8722CSM]_[RTL8722DM]_Detect_PM2/image3.png
   :width: 928
   :height: 481
   :scale: 50 %
.. |3-1| image:: /ambd_arduino/media/[RTL8722CSM]_[RTL8722DM]_Detect_PM2/image3-1.png
   :width: 714
   :height: 642
   :scale: 50 %
.. |4| image:: /ambd_arduino/media/[RTL8722CSM]_[RTL8722DM]_Detect_PM2/image4.png
   :width: 649
   :height: 410
   :scale: 100 %