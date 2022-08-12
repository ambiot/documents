##########################################################################
UART - Communicate with PC over USB to Serial Module	
##########################################################################

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Introduction of UART**
:raw-html:`</p>`

UART uses two wire, one for transmitting and the other one for
receiving, so the data transmission is bidirectional. The
communication uses a predefined frequency (baud rate) to transmit
data. In Arduino, UART is called “Serial”. There is only one
hardware UART on Arduino Uno and it is primarily used to read the
log and messages printed by Arduino (so it is also called “Log
UART”). If we use the hardware UART for other purposes, the Log
UART does not have resources to function. To provide more UART
connections, it is possible to use a GPIO pin to simulate the
behavior of UART with a software approach, this is called Software
Serial. Ameba is equipped with several hardware UART ports, but it
is also compatible with the Software Serial library.

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Materials**
:raw-html:`</p>`

   - AmebaD [AMB21 / AMB22 / AMB23 / BW16] x 1
   - USB to TTL Adapter x 1

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Example**
:raw-html:`</p>`

In this example, we use UART to connect USB to TTL adapter to Ameba.
USB to TTL adapter sends data to Ameba, the data would be returned by
Ameba, and showed on the screen.

**Install USB to TTL Adapter**

USB to TTL adapter converts USB to serial interface. Normally, there
are at least 4 pins on the adapter, that is 3V3 (or 5V), GND, TX and
RX. Generally, installing the driver for the USB to TTL adapter would
be required before using it. If the adapter uses the chip of FTDI,
Windows will search and install the driver automatically, otherwise,
you may need to install corresponding driver yourself.
Afterwards, open device manager. You can find corresponding serial
port number of the USB to TTL adapter: 
  
.. image:: /media/ambd_arduino/UART_Communicate_with_PC_over_USB_to_Serial_Module/image1.png
   :align: center
   :width: 456
   :height: 370


**Executing the Example**

Open the “SoftwareSerialExample” example in ``“File” → “Examples” →
“AmebaSoftwareSerial” → “SoftwareSerial_Basic”``:
  
.. image:: /media/ambd_arduino/UART_Communicate_with_PC_over_USB_to_Serial_Module/image2.png
   :align: center
   :width: 683
   :height: 1006


Connect the wire as the following diagrams show. The TX pin of USB to
TTL adapter is connected to the RX of Ameba, and the RX pin of USB to
TTL adapter is connected to the TX of Ameba.

**AMB21 / AMB22** Wiring Diagram:

.. image:: /media/ambd_arduino/UART_Communicate_with_PC_over_USB_to_Serial_Module/image3.png
   :align: center
   :width: 1285
   :height: 1040
   :scale: 67 %


**AMB23** Wiring Diagram:
  
.. image:: /media/ambd_arduino/UART_Communicate_with_PC_over_USB_to_Serial_Module/image3-1.png
   :align: center
   :width: 1285
   :height: 1040
   :scale: 67 %


**BW16** Wiring Diagram:
  
.. image:: /media/ambd_arduino/UART_Communicate_with_PC_over_USB_to_Serial_Module/image3-3.png
   :align: center
   :width: 1020
   :height: 705

**BW16-TypeC** Wiring Diagram:
  
.. image:: /media/ambd_arduino/UART_Communicate_with_PC_over_USB_to_Serial_Module/image3-4.png
   :align: center
   :width: 602
   :height: 438

Next, open a serial port terminal, such as Putty or Tera Term. (Putty is
used in this example). Open the Putty window, choose “Serial” in
connection type, and specify the port number of the USB to TTL adapter
(e.g. COM8). In the speed field, fill in the baud rate of this
connection. Note that both sides of the connection should use the same
baud rate. In this example we set baud rate 4800.

.. image:: /media/ambd_arduino/UART_Communicate_with_PC_over_USB_to_Serial_Module/image4.png
   :align: center
   :width: 466
   :height: 448

Next, select “Serial” on the left side. Set data bits to 8, stop bits to
1, parity to none, and flow control to none.
  
.. image:: /media/ambd_arduino/UART_Communicate_with_PC_over_USB_to_Serial_Module/image5.png
   :align: center
   :width: 466
   :height: 448
 
Then click Open and press the reset button on Ameba. You can see the
“Hello, world?” message appears in Putty. If characters are typed into
Putty, the input characters would be sent to Serial RX of Ameba by TX of
USB to TTL Adapter, and returned by Serial TX of Ameba. Finally, RX of
USB to TTL Adapter receives the returned characters and prints them in
Putty. Therefore, if you insert “I am fine”, you will get something like
this:

.. image:: /media/ambd_arduino/UART_Communicate_with_PC_over_USB_to_Serial_Module/image6.png
   :align: center
   :width: 395
   :height: 248


:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Code Reference**
:raw-html:`</p>`

First, use ``SoftwareSerial:begin(speed)`` to set the baud rate for the
serial communication:
https://www.arduino.cc/en/Reference/SoftwareSerialBegin

Use ``write()`` to send data, and use ``SoftwareSerial:available()`` to get the
number of bytes available for reading from a software serial port:
https://www.arduino.cc/en/Reference/SoftwareSerialAvailable

If there are data available to read, use read() to read from serial
port.

