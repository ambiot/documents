.. amebaDocs documentation master file, created by
   sphinx-quickstart on Fri Dec 18 01:57:15 2020.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

=================================================
[RTL8722CSM] [RTL8722DM] UART - Send and Receive
=================================================

**Materials**

* Ameba x 1, TTL USB to Serial module x 1

**Steps**

UART is a very versatile communication protocol and almost an essential part of a microcontroller. A TTL USB to Serial module is an IC that helps to translate UART signal to USB signal so that we can see uart log printed on our PC. This module is often found on many development boards, including ameba. However, the module on Ameba is reserved for LOG UART and Firmware uploading, that is why we need a separate module to communicate between ameba and PC.

There are currently 2 sets of UART available to MicroPython users and they are,

|image1|\

Then, copy and paste the following code line by line into REPL to see its effect.

.. code-block:: html
   :linenos:
   
   from machine import UART
   uart = UART(tx="PA_21", rx= "PA_22")
   uart.init()
   uart.write('hello')
   uart.read(5) # read up to 5 bytes


.. |image1| image:: ../media/examples/imageUART.jpg
   :width: 6.16667in
   :height: 4.34167in