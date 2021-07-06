[RTL8722CSM] [RTL8722DM] Detect PM2
====================================
Preparation

-  Ameba x 1

-  PlanTower PMS3003 (or PMS5003) x 1

Example

PMS3003 (or PMS5003) is a sensor of air quality, it can detect the
concentration of those 0.3 to 10 micrometer particulate matters in the
air. The sensor output its data via UART. The PMS3003 (or PMS5003)
sensor detects the concentration value of PM 1.0, PM 2.5, PM 10. Take PM
2.5 for example, it stands for the fine particles with a diameter of 2.5
micrometers or less. Open the example in “File” -> “Examples” ->
“AmebaSoftwareSerial” -> “PMS3003_AirQuality”\ |5-2-1|

There are 8 pins in PMS3003:

.. image:: ../media/[RTL8722CSM]_[RTL8722DM]_Detect_PM2/image2.png
   :alt: 5-2-2
   :width: 4.59028in
   :height: 4.0625in

PMS3003 requires 5V power, but the working voltage of its IC is 3.3C.
Therefore, the working voltage of Reset, TX, RX, Set are 3.3 as well. If
the “Set” pin is pulled to high, the PMS3003 is put to operating mode.
If the “Set” pin is pulled low, the PMS3003 is put to standby mode.
TX/RX pins are for UART connection. Under operating mode, PMS3003 output
the data it reads continuously. Each data is of 32 byte, please refer to
the following article for detailed data format
information: https://www.dfrobot.com/wiki/index.php?title=PM2.5_laser_dust_sensor_SKU:SEN0177 RTL8722
wiring diagram:|2-2-4|\ In this example, we do not use the “Set” and
“Reset” pins. Compile the code and upload it to Ameba. After pressing
the Reset button, Ameba starts to output the PM 2.5 data to serial
monitor.\ |5-2-4|

.. |5-2-1| image:: ../media/[RTL8722CSM]_[RTL8722DM]_Detect_PM2/image1.png
   :width: 6.20139in
   :height: 8.67361in
.. |2-2-4| image:: ../media/[RTL8722CSM]_[RTL8722DM]_Detect_PM2/image3.png
   :width: 6.5in
   :height: 5.29306in
.. |5-2-4| image:: ../media/[RTL8722CSM]_[RTL8722DM]_Detect_PM2/image4.png
   :width: 5.95139in
   :height: 3.75694in
