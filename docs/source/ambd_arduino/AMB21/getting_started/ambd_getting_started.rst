###############
Getting Started
###############

**************************************************
Ameba ARDUINO: Getting Started with AMB21/AMB22
**************************************************

Required Environment
====================

AMB21/AMB22 board currently supports Windows OS 32-bits and 64-bits (WIN7/8/10), 
Linux OS (Ubuntu 18 LTS/20 LTS/latest) and macOS operating systems. Please use the latest 
OS version to have the best experiences. In this documentation, please use the latest 
version Arduino IDE (at least version 1.8.12).

Introduction to AmebaD[AMB21/AMB22]
===========================================

Ameba is an easy-to-program platform for developing all kind of IoT applications. AmebaD 
is equipped with various peripheral interfaces, including WiFi, GPIO INT, I2C, UART, SPI, 
PWM, ADC. Through these interfaces, AmebaD can connect with electronic components such as 
LED, switches, manometer, hygrometer, PM2.5 dust sensors, …etc.

The collected data can be uploaded via WiFi and be utilized by applications on smart devices 
to realize IoT implementation.

|ambd-get-start-1|

AMB21/AMB22 and Arduino Uno have similar size, as shown in the above
figure, and the pins on AMB21/AMB22 are compatible with Arduino Uno. 

AMB21/AMB22 uses Micro USB to supply power, which is common in many smart devices.

Please refer to the following figure and table for the pin diagram and function of AMB21/AMB22.

|ambd-get-start-2|

===  ========  ====  ==== ===== ============== ========= ========
\#   PIN name  GPIO  ADC  PWM   UART           SPI       I2C
===  ========  ====  ==== ===== ============== ========= ========
D0   GPIOB_2   ✓     A5         UART3_RX(b)              
D1   GPIOB_1   ✓     A4         UART3_TX(b)              
D2   GPIOB_3   ✓     A6                                  
D3   GPIOB_31  ✓                                            
D4   GPIOB_30  ✓                                            
D5   GPIOB_28  ✓                                            
D6   GPIOB_29  ✓                                            
D7   NC                                                    
D8   GPIOB_22  ✓          ✓                              
D9   GPIOB_23  ✓          ✓                              
D10  GPIOB_21  ✓          ✓     UART0_RTS(b)   SPI0_CS    
D11  GPIOB_18  ✓          ✓     UART0_RX(b)    SPI0_MOSI  
D12  GPIOB_19  ✓          ✓     UART0_TX(b)    SPI0_MISO  
D13  GPIOB_20  ✓          ✓     UART0_CTS(b)   SPI0_CLK   
D14  GPIOA_7   ✓                UART2_TX(log)            
D15  GPIOA_8   ✓                UART2_RX(log)            
D16  GPIOA_25  ✓          ✓     UART3_RX(a)    I2C0_SCL
D17  GPIOA_26  ✓          ✓     UART3_TX(a)    I2C0_SDA
D18  GPIOB_7   ✓     A3   ✓                    SPI1_CS    
D19  GPIOB_6   ✓     A2                        SPI1_CLK   
D20  GPIOB_5   ✓     A1   ✓                    SPI1_MISO  
D21  GPIOB_4   ✓     A0   ✓                    SPI1_MOSI  
D22  GPIOA_28  ✓                                            
D23  GPIOA_24  ✓          ✓     UART0_CTS(a)   I2C1_SDA
D24  GPIOA_23  ✓          ✓     UART0_RTS(a)   I2C1_SCL
D25  GPIOA_22  ✓                 UART0_RX(a)              
D26  GPIOA_21  ✓                 UART0_TX(a)              
D27  GPIOA_20  ✓                                            
D28  GPIOA_19  ✓                                            
===  ========  ====  ==== ===== ============== ========= ========

|ambd-get-start-3|


**********************************
Setting up Development Environment
**********************************

Step 1. Installing the Driver
=============================

First, connect AMB21/AMB22 to the computer via Micro USB:

|ambd-get-start-4|

If this is the first time you connect AMB21/AMB22 to your computer, the USB driver 
for AMB21/AMB22 will be automatic installed. 

If you have driver issue of connect board to your computer please go to 
`<https://ftdichip.com/drivers/>`_ for USB driver.

You can check the :guilabel:`COM` port number in :guilabel:`Device Manager` of your computer:

|ambd-get-start-5|

Step 2. Set up Arduino IDE
==========================

From version 1.6.5, Arduino IDE supports third-party hardware.
Therefore, we can use Arduino IDE to develop applications on AMB21/AMB22,
and the examples of Arduino can run on AMB21/AMB22 too. Arduino IDE can be
downloaded in the `Arduino website <https://www.arduino.cc/en/Main/Software>`_.

When the installation is finished, open Arduino IDE. To set up AMB21/AMB22
correctly in Arduino IDE, go to :guilabel:`“File” -> “Preferences”`.

|ambd-get-start-6|

And paste the following URL into :guilabel:`“Additional Boards Manager URLs”` field::
      
   https://github.com/ambiot/ambd_arduino/raw/master/Arduino_package/package_realtek.com_amebad_index.json

----

Next, go to :guilabel:`“Tools” -> “Board” -> “Boards Manager”`:

|ambd-get-start-7|

The :guilabel:`“Boards Manager”` requires about 10~20 seconds to refresh all
hardware files (if the network is in bad condition, it may take longer).
Every time the new hardware is connected, we need to reopen the Board
Manager. So, we close the :guilabel:`“Boards Manager”`, and then open it again. Find
:guilabel:`“Realtek Ameba Boards (32-bits ARM Cortex-M33 @200MHz)”` in the list,
click :guilabel:`“Install”`, then the Arduino IDE starts to download required files
for AMB21/AMB22.

|ambd-get-start-8|

If you are facing GitHub downloading issue, please refer to the
following link at `Download/Software Development Kit`_. There are 3
sections:

#. :guilabel:`“AmebaD_Arduino_patch1_SDK”`, please select at least 1 of the SDKs. There are 5 latest released SDK options.
#. :guilabel:`“AmebaD_Arduino_patch2_Tools”`, please select according to your operation system. There are Windows, Linux and MacOS. 
#. :guilabel:`:“AmebaD_Arduino_Source_Code”`, this section is optional download only wants to refer the latest source code.

.. _Download/Software Development Kit: https://www.amebaiot.com.cn/en/ameba-arduino-summary/

Download the files selected, then unzip (patch1 and patch2 are compulsory). There are “Install.doc”/“Install.pdf” for you to refer installation steps. 

According to your system, please run the installation tool in the 
“Offline_SDK_installation_tool” folder.

After the installation tool running successfully, you may open Arduino
IDE and proceed to :guilabel:`“Tools” -> “Board“ -> “Boards Manager…”`. Try to find
:guilabel:`“Realtek Ameba Boards (32-bits ARM Cortex-M33 @200MHz)”`` in the list,
click :guilabel:`“Install”`, then the Arduino IDE starts to download required files
for AMB21/AMB22.

----

Finally, we select AMB21/AMB22 as current connected board in 
:guilabel:`“Tools” -> “Board” -> “Ameba ARM (32-bits) Boards” ->” AMB21”`：

|ambd-get-start-9|


*********************
Try the First Example
*********************

Step 1. Compile & Upload
========================

Arduino IDE provides many built-in examples, which can be compiled,
uploaded and run directly on the boards. Here, we take the “Blink” example as the first try.
Open :guilabel:`“File” -> “Examples” -> “01.Basics” -> “Blink”`:

|ambd-get-start-10|

Arduino IDE opens a new window with the complete sample code.

|ambd-get-start-11|

Next, we compile the sample code directly; click 
:guilabel:`“Sketch” -> “Verify/Compile”`

|ambd-get-start-12|

Arduino IDE prints the compiling messages in the bottom area of the IDE
window. When the compilation is finished, you will get the message
similar to the following figure:

|ambd-get-start-13|

Afterwards, we will upload the compiled code to AMB21/AMB22.
Please make sure AMB21/AMB22 is connected to your computer, then click :guilabel:`“Sketch” -> “Upload”`.

The Arduino IDE will compile first then upload. Users are required to enter the upload mode of the board.

|ambd-get-start-14|

To enter upload mode, first press and hold the :guilabel:`UART_DOWNLOAD` , then press and release
the :guilabel:`RESET` button, lastly release the :guilabel:`UART_DOWNLOAD`. There is a 5-seconds count
down set as a reminder to enter the upload mode.

|ambd-get-start-15|

It is optional for users to check if the board entered the upload mode. 
Open serial monitor/terminal and look for “#Flash Download Start”. 
Note, it is normal that some serial terminals may show unknown characters as following picture.

|ambd-get-start-16|

Again, during the uploading procedure the IDE prints messages. Uploading
procedure takes considerably longer time (about 30 seconds to 1 minute).
When upload completed, the “Done uploading” message is printed.

|ambd-get-start-18|

Step 2. Run the Blink example
===============================

In each example, Arduino not only provides sample code, but also
detailed documentation, including wiring diagram, sample code
explanation, technical details, …etc. These examples can be directly
used on AMB21/AMB22.
So, we find the detailed information of the 
`Blink example <https://www.arduino.cc/en/Tutorial/Blink>`__.


In short, this example makes LED blinks, and it uses GPIO pin 08
(refer to the pin diagram ``D08``). Then we connect the LED and resistance
as the following figure:

.. important::
   In an LED, the longer pin is the **positive pole**, and the shorter pin
   is the **negative pole**. So we connect the longer pin to ``D08``, and 
   connect the shorter pin to ``GND``. In addition, please use a resistor 
   with suitable resistance in series between LED and GND to protect the LED.

|ambd-get-start-17|

Finally, press the :guilabel:`RESET` button, and you can see the :guilabel:`LED` blinking.

**(End)**

-----------------------------------------------------------------------------------

.. note:: 
   If you face any issue, please refer to the FAQ and Trouble shooting sections on :doc:`/ambd_arduino/AMB21/support/index` page.  

.. |ambd-get-start-1| image::  /media/ambd_arduino/AMB21_getting_started/image1.jpeg
   :alt: get-start-1
   :width: 884
   :height: 883
   :scale: 50 %

.. |ambd-get-start-2| image::  /media/ambd_arduino/AMB21_getting_started/image2.png
   :alt: get-start-2
   :width: 1100
   :height: 1124
   :scale: 45 %

.. |ambd-get-start-3| image::  /media/ambd_arduino/AMB21_getting_started/image3-1.png
   :alt: get-start-3
   :width: 2917
   :height: 1490
   :scale: 40 %

.. |ambd-get-start-4| image::  /media/ambd_arduino/AMB21_getting_started/image4.png
   :alt: get-start-4
   :width: 820
   :height: 584
   :scale: 50 %

.. |ambd-get-start-5| image::  /media/ambd_arduino/AMB21_getting_started/image5.png
   :alt: get-start-5
   :width: 795
   :height: 579
   :scale: 80 %

.. |ambd-get-start-6| image::  /media/ambd_arduino/AMB21_getting_started/image6.png
   :alt: get-start-6
   :width: 500
   :height: 600
   :scale: 100 %

.. |ambd-get-start-7| image::  /media/ambd_arduino/AMB21_getting_started/image7.png
   :alt: get-start-7
   :width: 690
   :height: 834
   :scale: 100 %

.. |ambd-get-start-8| image::  /media/ambd_arduino/AMB21_getting_started/image8-1.png
   :alt: get-start-8
   :width: 781
   :height: 440
   :scale: 100 %

.. |ambd-get-start-9| image::  /media/ambd_arduino/AMB21_getting_started/image9.png
   :alt: get-start-9
   :width: 697
   :height: 767
   :scale: 100 %

.. |ambd-get-start-10| image::  /media/ambd_arduino/AMB21_getting_started/image10.png
   :alt: get-start-10
   :width: 570
   :height: 692
   :scale: 100 %

.. |ambd-get-start-11| image::  /media/ambd_arduino/AMB21_getting_started/image11.png
   :alt: get-start-11
   :width: 500
   :height: 600
   :scale: 100 %

.. |ambd-get-start-12| image::  /media/ambd_arduino/AMB21_getting_started/image12.png
   :alt: get-start-12
   :width: 500
   :height: 600
   :scale: 100 %

.. |ambd-get-start-13| image::  /media/ambd_arduino/AMB21_getting_started/image13.png
   :alt: get-start-13
   :width: 500
   :height: 600
   :scale: 100 %

.. |ambd-get-start-14| image::  /media/ambd_arduino/AMB21_getting_started/image14.png
   :alt: get-start-14
   :width: 628
   :height: 175
   :scale: 100 %

.. |ambd-get-start-15| image::  /media/ambd_arduino/AMB21_getting_started/image15.png
   :alt: get-start-15
   :width: 732
   :height: 752
   :scale: 60 %

.. |ambd-get-start-16| image::  /media/ambd_arduino/AMB21_getting_started/image15-1.png
   :alt: get-start-16
   :width: 930
   :height: 603
   :scale: 70 %

.. |ambd-get-start-17| image::  /media/ambd_arduino/AMB21_getting_started/image17.png
   :alt: get-start-17
   :width: 1123
   :height: 1048
   :scale: 50 %

.. |ambd-get-start-18| image::  /media/ambd_arduino/AMB21_getting_started/image16.png
   :alt: get-start-18
   :width: 588
   :height: 289
   :scale: 100 %