.. amebaDocs documentation master file, created by
   sphinx-quickstart on Fri Dec 18 01:57:15 2020.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

=========================================
[RTL8722CSM] [RTL8722DM] PWM - LED fade
=========================================

**Materials**

* Ameba x 1, LED x 1, Resistor(220ohm) x 1

**Steps**

PWM use pulse width modulation to control output duty cycle and is widely used to control LED brightness and motor. Here we are using an LED to demonstrate how PWM works.

Let us connect pin PA_26 to the anode leg of an LED which in series with a current limiting resistor and GND to cathode of the LED as shown below,

|image1|\

Then, copy and paste the following code line by line into REPL and hit Enter. If everything is in order, you should be able to see the LED slowly become brighter as you paste another line of code.

.. code-block:: html   
   :linenos:
   
   from machine import Pin, PWM
   import time
   p = PWM(pin = "PA_26")
   # 0 duty cycle thus output 0
   p.write(0.0)
   # 10% duty cycle
   p.write(0.1)
   # 50% duty cycle
   p.write(0.5)
   # 100% duty cycle
   p.write(1.0)



.. |image1| image:: ../media/examples/imagePWM.jpg
   :width: 6.16667in
   :height: 4.34167in