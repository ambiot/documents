##########################################################################
GPIO - Measure Distance By Ultrasound Module
##########################################################################

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Preparation**
:raw-html:`</p>`

   -  AmebaD [AMB21 / AMB22 / AMB23 / BW16] x 1
   -  HC-SR04 Ultrasonic x 1
   -  Dropping resistor or Level converter

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Example**
:raw-html:`</p>`

HC-SR04 is a module that uses ultrasound to measure the distance. It
looks like a pair of eyes in its appearance, therefore it’s often
installed onto robot-vehicle or mechanical bugs to be their eyes. 
The way it works is that first we “toggle high” the TRIG pin (that is to
pull high then pull low). The HC-SR04 would send eight 40kHz sound wave
signal and pull high the ECHO pin. When the sound wave returns back, it
pull low the ECHO pin. 
 
.. image:: /media/ambd_arduino/GPIO_Measure_Distance_By_Ultrasound_Module/image1.png
   :align: center
   :width: 1103
   :height: 679
 
Assume the velocity of sound is 340 m/s, the time it takes for the sound to advance 1 cm in the air is 340*100*10^-6 = 29 us.
The sound wave actually travels twice the distance between HC-SR04 and the object, therefore the distance can be calculated by (time/29) / 2 = time / 58.
The working voltage of HC-SR04 is 5V. When we pull high the ECHO pin to 5V, the voltage might cause
damage to the GPIO pin of Ameba. To avoid this situation, we need to
drop the voltage as follows:

**AMB21 / AMB22** Wiring Diagram:
  
.. image:: /media/ambd_arduino/GPIO_Measure_Distance_By_Ultrasound_Module/image2.png
   :align: center
   :width: 1103
   :height: 679

**AMB23** Wiring Diagram:

.. image:: /media/ambd_arduino/GPIO_Measure_Distance_By_Ultrasound_Module/image2-1.png
   :align: center
   :width: 1019
   :height: 768
   :scale: 91 %

**BW16** Wiring Diagram:

.. image:: /media/ambd_arduino/GPIO_Measure_Distance_By_Ultrasound_Module/image2-3.png
   :align: center
   :width: 939
   :height: 747
   :scale: 93 %

**BW16-TypeC** Wiring Diagram:

.. image:: /media/ambd_arduino/GPIO_Measure_Distance_By_Ultrasound_Module/image2-4.png
   :align: center
   :width: 995
   :height: 762
   :scale: 91 %

We pick the resistors with resistance 1:2, in the example we use 10kΩ and 20kΩ. 
If you do not have resistors in hand, you can use level converter instead.The TXB0108 8 channel level 
converter is a suitable example:

**AMB21 / AMB22** Wiring Diagram:
  
.. image:: /media/ambd_arduino/GPIO_Measure_Distance_By_Ultrasound_Module/image3.png
   :align: center
   :width: 1501
   :height: 1083
   :scale: 64 %

**AMB23** Wiring Diagram:

.. image:: /media/ambd_arduino/GPIO_Measure_Distance_By_Ultrasound_Module/image3-1.png
   :align: center
   :width: 989
   :height: 700

**BW16** Wiring Diagram:

.. image:: /media/ambd_arduino/GPIO_Measure_Distance_By_Ultrasound_Module/image3-3.png
   :align: center
   :width: 1140
   :height: 757
   :scale: 92 %

**BW16-TypeC** Wiring Diagram:

.. image:: /media/ambd_arduino/GPIO_Measure_Distance_By_Ultrasound_Module/image3-4.png
   :align: center
   :width: 1137
   :height: 696

Next, open the sample code in ``“File” → “Examples” → “AmebaGPIO” → “HCSR04_Ultrasonic”``

.. image:: /media/ambd_arduino/GPIO_Measure_Distance_By_Ultrasound_Module/image4.png
   :align: center
   :width: 599
   :height: 1006
  
Compile and upload to Ameba, then press the reset button. Open the Serial Monitor, the calculated result is
output to serial monitor every 2 seconds.
  
.. image:: /media/ambd_arduino/GPIO_Measure_Distance_By_Ultrasound_Module/image5.png
   :align: center
   :width: 649
   :height: 372


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

