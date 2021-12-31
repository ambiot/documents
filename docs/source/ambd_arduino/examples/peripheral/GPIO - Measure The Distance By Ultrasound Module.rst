##########################################################################
GPIO - Measure The Distance By Ultrasound Module
##########################################################################

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Preparation**
:raw-html:`</p>`

   -  AmebaD [RTL8722DM / RTL8722CSM / RTL8722DM MINI] x 1
   -  HC-SR04 Ultrasonic x 1
   -  Dropping resistor or Level converter

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Example**
:raw-html:`</p>`

| HC-SR04 is a module that uses ultrasound to measure the distance. It
  looks like a pair of eyes in its appearance, therefore it’s often
  installed onto robot-vehicle or mechanical bugs to be their eyes. 
| The way it works is that first we “toggle high” the TRIG pin (that is to
  pull high then pull low). The HC-SR04 would send eight 40kHz sound wave
  signal and pull high the ECHO pin. When the sound wave returns back, it
  pull low the ECHO pin. 
 
|1|  

| Assume the velocity of sound is 340 m/s, the time it takes for the sound to advance 1 cm in the air is 340*100*10^-6 = 29 us.
| The sound wave actually travels twice the distance between HC-SR04 and the object, therefore the distance can be calculated by (time/29) / 2 = time / 58.
| The working voltage of HC-SR04 is 5V. When we pull high the ECHO pin to 5V, the voltage might cause
  damage to the GPIO pin of Ameba. To avoid this situation, we need to
  drop the voltage as follows:

**RTL8722DM / RTL8722CSM** Wiring Diagram:
  
  |2|

**RTL8722DM MINI** Wiring Diagram:

  |2-1|

| We pick the resistors with resistance 1:2, in the example we use 10kΩ and 20kΩ. 
| If you do not have resistors in hand, you can use level converter instead.The TXB0108 8 channel level 
  converter is a suitable example:

**RTL8722DM / RTL8722CSM** Wiring Diagram:
  
  |3|

**RTL8722DM MINI** Wiring Diagram:

  |3-1|

Next, open the sample code in ``“File” -> “Examples” -> “AmebaGPIO” -> “HCSR04_Ultrasonic”``

  |4|
  
Compile and upload to Ameba, then press the reset button. Open the Serial Monitor, the calculated result is
output to serial monitor every 2 seconds.
  
  |5|

Note that the HCSR04 module uses the reflection of sound wave to calculate the distance, thus
the result can be affected by the surface material of the object (e.g.,
harsh surface tends to cause scattering of sound wave, and soft surface
may cause the sound wave to be absorbed).

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Code Reference**
:raw-html:`</p>`

Before the measurement starts, we need to pull high the TRIG pin for
10us and then pull low. By doing this, we are telling the HC-SR04 that
we are about to start the measurement:

.. code-block:: c
   
   digitalWrite(trigger_pin, HIGH);
   delayMicroseconds(10);
   digitalWrite(trigger_pin, LOW);

Next, use pulseIn to measure the time when the ECHO pin is pulled high.

.. code-block:: c

   duration = pulseIn (echo_pin, HIGH);

Finally, use the formula to calculate the distance.

.. code-block:: c

   distance = duration / 58;

.. |1| image:: /ambd_arduino/media/GPIO_Measure_The_Distance_By_Ultrasound_Module/image1.png
   :width: 1103
   :height: 679
   :scale: 50 %
.. |2| image:: /ambd_arduino/media/GPIO_Measure_The_Distance_By_Ultrasound_Module/image2.png
   :width: 1740
   :height: 1008
   :scale: 25 %
.. |2-1| image:: /ambd_arduino/media/GPIO_Measure_The_Distance_By_Ultrasound_Module/image2-1.png
   :width: 1019
   :height: 768
   :scale: 40 %
.. |3| image:: /ambd_arduino/media/GPIO_Measure_The_Distance_By_Ultrasound_Module/image3.png
   :width: 1501
   :height: 1083
   :scale: 25 %
.. |3-1| image:: /ambd_arduino/media/GPIO_Measure_The_Distance_By_Ultrasound_Module/image3-1.png
   :width: 989
   :height: 700
   :scale: 40 %   
.. |4| image:: /ambd_arduino/media/GPIO_Measure_The_Distance_By_Ultrasound_Module/image4.png
   :width: 599
   :height: 1006
   :scale: 50 %
.. |5| image:: /ambd_arduino/media/GPIO_Measure_The_Distance_By_Ultrasound_Module/image5.png
   :width: 649
   :height: 372
   :scale: 100 %