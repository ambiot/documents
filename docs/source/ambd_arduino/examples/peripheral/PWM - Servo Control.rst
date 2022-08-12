#############################################
PWM - Servo Control
#############################################

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Preparation**
:raw-html:`</p>`

   -  AmebaD [AMB21 / AMB22 / AMB23 / BW16] x 1
   -  Servo x 1 (Ex. Tower Pro SG90)

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Example**
:raw-html:`</p>`

A typical servo has 3 wires, the red wire is for power, black or brown
one should be connected to GND, and the other one is for signal data. We
use PWM signal to control the rotation angle of the axis of the servo.
The frequency of the signal is 50Hz, that is length 20ms. Each servo
defines its pulse bandwidth, which is usually 1ms~2ms.

To control the rotation angle, for example if 1ms-length pulse rotates
the axis to degree 0, then 1.5 ms pulse rotates the axis to 90 degrees,
and 2 ms pulse rotates the axis to 180 degrees. Furthermore, a servo
defines the “dead bandwidth”, which stands for the required minimum
difference of the length of two consecutive pulse for the servo to work.

**AMB21 / AMB22** Wiring Diagram:

.. image:: /media/ambd_arduino/PWM_Servo_Control/image1.png
   :align: center
   :width: 1249
   :height: 974
   :scale: 61 %

**AMB23** Wiring Diagram:

.. image:: /media/ambd_arduino/PWM_Servo_Control/image2.png
   :align: center
   :width: 800
   :height: 633

**BW16** Wiring Diagram:

.. image:: /media/ambd_arduino/PWM_Servo_Control/image2-1.png
   :align: center
   :width: 809
   :height: 598

**BW16-TypeC** Wiring Diagram:

.. image:: /media/ambd_arduino/PWM_Servo_Control/image2-2.png
   :align: center
   :width: 837
   :height: 620

Open the example, ``“File” → “Examples” → “AmebaAnalog” →
“ServoSweep”``

This example makes the servo to rotate from degree 0 to 180, and then
rotate back to degree 0.

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Code Reference**
:raw-html:`</p>`

The Servo API of Ameba is similar to the API of Arduino. To distinguish
from the original API of Arduino, we name the header file “AmebaServo.h”
and the Class “AmebaServo”, the usage is identical to the Arduino API.

The default pulse bandwidth of Arduino Servo is 0.5ms~2.4ms, which is
the same as Tower Pro SG90. Therefore, we set the attached pin directly:

.. code-block:: C

  myservo.attach(9);

Next, rotate the axis to desired position:

.. code-block:: C

  myservo.write(pos);

