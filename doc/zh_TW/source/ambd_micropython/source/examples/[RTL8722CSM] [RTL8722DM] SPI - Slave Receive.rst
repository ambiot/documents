.. amebaDocs documentation master file, created by
   sphinx-quickstart on Fri Dec 18 01:57:15 2020.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

=============================================
[RTL8722CSM] [RTL8722DM] SPI - Slave Receive
=============================================

**Materials**

* Ameba x 1, Arduino UNO x 1

**Steps**

SPI is a fast and robust communication protocol that are commonly found on many microcontrollers and is often used to retrieve sensor data or output image signal to a display. Ameba support SPI in both master and slave mode. Here we are going to see an example demonstrating how ameba receive data in slave mode on MicroPython.

Before connection, make sure to upload the following code to your Arduino UNO.

.. code-block:: html
   :linenos:

   rtc = RTC()
   ///////////////////////
   // SPI Master Write //
   ///////////////////////
   #include
   void setup (void) {
   		Serial.begin(115200); //set baud rate to 115200 for usart
   		digitalWrite(SS, HIGH); // disable Slave Select
   		SPI.begin ();
   }
   void loop (void) {
   		char c;
   		digitalWrite(SS, LOW); // enable Slave Select
   		// send test string
   		for (const char * p = "Hello, world!\r" ; c = *p; p++) {
      		SPI.transfer(c);
      		Serial.print(c);
   			}
  		Serial.println();
   		digitalWrite(SS, HIGH); // disable Slave Select
   		delay(2000);
   }

Connection is shown as follows, here we are using unit 0 as SPI slave, and Arduino UNO as SPI master,

|image1|\

Then copy and paste the following code into REPL under paste mode to see their effects.

.. code-block:: html
   :linenos:
   
   from machine import SPI
   s1= SPI(0 , mode = SPI.SLAVE)
   for i in range(14):
   chr(s1.read())


.. |image1| image:: ../media/examples/imageSPI.jpg
   :width: 6.16667in
   :height: 4.34167in