.. amebaDocs documentation master file, created by
   sphinx-quickstart on Fri Dec 18 01:57:15 2020.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

#################################################
[RTL8722CSM] [RTL8722DM] UART - Send and Receive
#################################################

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Materials**
:raw-html:`</p>`

* Ameba x 1
* TTL USB to Serial module x 1

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Steps**
:raw-html:`</p>`

UART is a very versatile communication protocol and almost an essential part of a microcontroller. A TTL USB to Serial module is an IC that helps to translate UART signal to USB signal so that we can see uart log printed on our PC. This module is often found on many development boards, including ameba. However, the module on Ameba is reserved for LOG UART and Firmware uploading, that is why we need a separate module to communicate between ameba and PC.

There are currently 2 sets of UART available to MicroPython users and they are:

.. table:: 
   :align: center

   ========= =========== ===========
   Unit      tx          RX
   ========= =========== ===========
   0         PA_21       PA_22
   3         PA_26       PA_25
   ========= =========== ===========

| Here we are using unit 0 to demonstrate how uart works on ameba. 
| Connect TTL module to ``PA_21`` and ``PA_22`` as shown below,

|image1|

Then, copy and paste the following code line by line into REPL to see its effect.

.. code-block:: python
   :linenos:
   
   from machine import UART
   uart = UART(tx="PA_21", rx= "PA_22")
   uart.init()
   uart.write('hello')
   uart.read(5) # read up to 5 bytes


.. |image1| image:: ../media/examples/imageUART.jpg
   :width: 1029
   :height: 987
   :scale: 50 %