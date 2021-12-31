.. amebaDocs documentation master file, created by
   sphinx-quickstart on Fri Dec 18 01:57:15 2020.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

##################################################
[RTL8722CSM] [RTL8722DM] ADC - Read potentiometer
##################################################

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Materials**
:raw-html:`</p>`

* Ameba x 1 
* Potentiometerx 1

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Steps**
:raw-html:`</p>`

Here we connect ameba to a potentiometer to measure its analogue value, the connection is as follows.

|image1|

Copy and paste the following code into REPL.

.. code-block:: python
   :linenos:

   import socket
   a = ADC(0)
   a.read()

.. |image1| image:: ../media/examples/imageADC.jpg
   :width: 1320
   :height: 987
   :scale: 50 %