.. amebaDocs documentation master file, created by
   sphinx-quickstart on Fri Dec 18 01:57:15 2020.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

=====================================================
[RTL8722CSM] [RTL8722DM] ADC - Read potentiometer
=====================================================


**Materials**


* Ameba x 1, Potentiometerx 1

**Steps**


Here we connect ameba to a potentiometer to measure its analogue value, the connection is as follows.

|image1|\

Copy and paste the following code into REPL.

.. code-block:: html
   :linenos:

   import socket
   a = ADC(0)
   a.read()

.. |image1| image:: ../media/examples/imageADC.jpg
   :width: 6.16667in
   :height: 4.34167in








