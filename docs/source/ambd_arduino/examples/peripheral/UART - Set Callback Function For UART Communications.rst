#############################################################################
UART – Set Callback Function For UART Communications
#############################################################################

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Materials**
:raw-html:`</p>`

   - AmebaD [AMB21 / AMB22 / AMB23 / BW16] x 1
   - USB to TTL Adapter x 1

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Example**
:raw-html:`</p>`

| This example shows how to set a callback function for UART communication
  to process the UART data.

| A USB to TTL adapter is required for this example. Ensure that you have
  the driver installed and connect it to the Ameba board as shown.

**AMB21 / AMB22** Wiring Diagram:
  
  |1|

**AMB23** Wiring Diagram:
  
  |1-1|

**BW16** Wiring Diagram:
  
  |1-3|

Open the example in ``“File” -> “Examples” -> “AmebaSoftwareSerial” ->
“SoftwareSerial_Irq_Callback”``

  |2|

| Upload the code and press the reset button on Ameba once the upload is
  finished.
| Next, using a terminal program, such as TeraTerm or PuTTY, open a
  serial port and configure it according to the settings. Make sure the
  serial port number corresponds to the USB to TTL adapter.

   - Speed: 38400
   - Data: 8 bit
   - Parity: none
   - Stop bits: 1 bit
   - Flow control: none

  |3|

Once the serial port is open, type in the terminal and press the enter
key, and you will see the corresponding output.

  |4|

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Code Reference**
:raw-html:`</p>`

``mySerial.setAvailableCallback(mySerialCallback);`` is used to set the
function mySerialCallback as a callback function for software serial.
When a new character is received, the callback function checks if the
character corresponds to the enter key, and releases the semaphore if it
is true, which in turn allows the main loop to print out all the
previously received characters.

.. |1| image:: /media/ambd_arduino/UART_Set_Callback_Function_For_UART_Communications/image1.png
   :width: 1342
   :height: 1130
   :scale: 40 %
.. |1-1| image:: /media/ambd_arduino/UART_Set_Callback_Function_For_UART_Communications/image1-1.png
   :width: 1006
   :height: 798
   :scale: 50 %
.. |1-3| image:: /media/ambd_arduino/UART_Set_Callback_Function_For_UART_Communications/image1-3.png
   :width: 1020
   :height: 705
   :scale: 50 %
.. |2| image:: /media/ambd_arduino/UART_Set_Callback_Function_For_UART_Communications/image2.png
   :width: 721
   :height: 1006
   :scale: 70 %
.. |3| image:: /media/ambd_arduino/UART_Set_Callback_Function_For_UART_Communications/image3.png
   :width: 665
   :height: 540
   :scale: 70 %
.. |4| image:: /media/ambd_arduino/UART_Set_Callback_Function_For_UART_Communications/image4.png
   :width: 665
   :height: 540
   :scale: 100 %