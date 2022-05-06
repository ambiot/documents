###############
Getting Started
###############

*****************************************************
Ameba MicroPython: Getting Started with AMB23
*****************************************************

Required Environment
====================

AmebaD AMB23 board currently supports Windows OS 32-bits and 64-bits
(WIN7/8/10), Linux OS (Ubuntu 18 LTS/20 LTS/latest) and macOS operating
systems. Please use the latest OS version to have the best experiences.
In this documentation, please use the latest version Arduino IDE (at
least version 1.8.12).

Introduction to AmebaD[AMB23]
=====================================

Ameba is an easy-to-program platform for developing all kind of IoT
applications. AmebaD is equipped with various peripheral interfaces,
including WiFi, GPIO INT, I2C, UART, SPI, PWM, ADC. Through these
interfaces, AmebaD can connect with electronic components such as LED,
switches, manometer, hygrometer, PM2.5 dust sensors, …etc.

The collected data can be uploaded via WiFi and be utilized by
applications on smart devices to realize IoT implementation.

|image1|

===  ========  ====  ==== ===== ============= ========= =========
|    PIN name  GPIO  ADC   PWM      UART         SPI       I2C
===  ========  ====  ==== ===== ============= ========= =========
D0   GPIOB_0    ✓                  
D1   GPIOB_1    ✓     A4         Serial2_TX             I2C0 SDA
D2   GPIOB_2    ✓     A5         Serial2_RX               
D3   GPIOB_3    ✓     A6            
D4   GPIOB_4    ✓     A0   ✓     
D5   GPIOB_5    ✓     A1   ✓                            I2C0 SCL*
D6   GPIOB_6    ✓     A2                                I2C0 SDA*
D6   GPIOB_6    ✓     A3         
D7   GPIOB_7    ✓          ✓     
D8   GPIOA_2    ✓                
D9   GPIOA_12   ✓          ✓     Serial2_TX*  SPI1_MOSI
D10  GPIOA_13   ✓          ✓     Serial2_RX*  SPI1_MISO  
D11  GPIOA_14   ✓                             SPI1_CLK
D12  GPIOA_15   ✓                             SPI1_CS
D13  GPIOA_16   ✓                  
D14  GPIOA_28   ✓          ✓        
D15  GPIOA_18   ✓                Serial1_TX* 
D16  GPIOA_19   ✓                Serial1_RX*              
D17  GPIOA_30   ✓          ✓                  
D18  GPIOB_21   ✓                Serial1_TX 
D19  GPIOB_22   ✓                Serial1_RX 
D20  GPIOB_23   ✓            
D21  GPIOB_24   ✓           
D22  GPIOA_31   ✓                                       I2C0 SCL
===  ========  ====  ==== ===== ============= ========= =========

.. note::
    `*` : Those functions are not available on MicroPython

AMB23 has smaller size than Arduino Uno, as shown in the above figure.

|image2|

| AMB23 uses Micro USB to supply power, which is common in many smart
  devices.
| Please refer to the following figure and table for the pin diagram and
  function of AMB23.

|image3|

|image4|

 
.. note::
   Not all sets of peripherals shown on the on the picture/table above are
   available on MicroPython, please refer to **Peripheral Example and API**
   section for more information.

Introduction to AMB23 MicroPython port
========================================

Background Information
----------------------

MicroPython, by definition, is a lean and efficient Python3 compiler and
runtime specially designed for microcontrollers.

MicroPython distinguishes itself from other compilation-based platforms
(Arduino etc.) with its powerful method of real-time interaction to
Microcontroller through a built-in feature -- REPL.

REPL stands for Read-Evaluation-Print-Loop, it is an interactive prompt
that you can use to access and control your microcontroller.

REPL has been equipped with other powerful features such as tab
completion, line editing, auto-indentation, input history and more. It
basically functions like the classic Python IDLE but running on
microcontroller.

To use REPL, simply open any serial terminal software (most common ones
are teraterm, putty etc.) on your PC and connect to your
microcontroller's serial port, then set **baudrate** to ``115200`` before
manually reset the board, then you will see >>> MicroPython prompt
appear on the terminal. Now you may type in any Python script on REPL as
long as it's support by MicroPython and your microcontroller's
MicroPython port.

Most importantly, try to abuse ``help()`` function as much as possible to
gain more information. For example, upon microcontroller power up and
REPL shown, just type

>>> help()

You will see a help page giving you more details about this port; also
if you type

>>> help(modules)

it will list out all available builtin modules that are at your disposal

Furthermore, if you want to learn more about a module, such as its API
and CONSTANT available, simply type the following code and details of
that module will be returned to you,

>>> help(the module of your interest)

Let's take Pin module (GPIO) as an example:

|image5|

REPL Hotkeys
------------

-  ``Ctrl + d`` :

Soft reboot MicroPython will perform software reboot, this is useful
when your microcontroller is behaving abnormally. This will also run
scripts in 'boot.py' once again. Note that this will only reset the
MicroPython interpreter not the hardware, all your previously configured
hardware will stay the way it is until you manually hard-reset the
board.

- ``Ctrl + e``:

Paste mode Paste mode allow you to perform pasting a large trunk of code
into REPL at once without executing code line by line. This is useful
when you have found a MicroPython library and wish to test it out
immediately by copy and paste

-  ``Ctrl + b`` :

Normal mode This hotkey will set REPL back to normal mode. This is
useful if you are stuck in certain mode and can not get out.

-  ``Ctrl + c`` :

Quick cancel This hotkey help you to cancel any input and return a new
line

Setting up Development Environment
==================================

Step 1. Installing the Driver
-----------------------------

First, connect AMB23 to the computer via Micro USB:

|image6|

| If this is the first time you connect AMB23 to your computer, the USB
  driver for AmebaD will be automatic installed.
| You can check the :guilabel:`COM` port number in :guilabel:`Device Manager` of your computer:

|image7|

Step 2. Installing the necessary tools
--------------------------------------

On Windows
~~~~~~~~~~

For windows users, please install a serial terminal software to interact
with MicroPython. The most common serial terminals are **Tera Term** and
**Putty,** here we recommend using Tera Term, which can be downloaded
from internet.

For advanced developer who wish to compile MicroPython firmware from
scratch, then please be sure to install **Cygwin**, which is a
Linux-like environment running on Windows system. When selecting the
Cygwin installer, we recommend using the Cygwin 32-bit version. During
Cygwin installation, installer will prompt user if wish to install other
software, please make sure to select the GNU version of **make** from
the **Devel** category (see picture below) and pick the latest edition.

|image8|

Also, Python3 is required during firmware compilation, so be sure to
download the latest Python3 from its official website and have it added
as environment variable when asked during installation.

.. _section-1:

On Linux
~~~~~~~~

For Linux user, please install a serial terminal software of your choice
using apt-get install command. Here we recommend using **picocom** for
its lightweight.

For advanced developer interested in developing MicroPython module in C,
please make sure the GNU make of at least **version 3.82 or newer** and
Python3 are installed and can be found using terminal.

****************************
Upload Firmware into Ameba
****************************

Step 1. Navigate to “Release” folder
=====================================

After downloading the MicroPython repository from Github, you will
notice a “Release” folder in the root directory of this repository,
enter this folder and locate a tool named “Double-Click-Me-to-Upload”.

Step 2. Enter UART Download mode
=================================

To do this, first press and hold the :guilabel:`UART_DOWNLOAD` button, then press
the :guilabel:`RESET` button.

|image9|

Step 3. Run “Double-Click-Me-to-Upload”
=======================================

As the name suggested, double click on the file to run it, follow
instructions printed on the screen to update the ameba’s serial COM port
(this is known to us during the driver installation step mentioned
above) so the uploading can be carried out successfully. Once the
uploading is successful, you will see a line of log printed on the
screen – “All images are sent successfully”

**********************
Try the First Example
**********************

Step 1. Open REPL
==================

|image10|

REPL stands for **Read**, **Evaluate**, **Print** and **Loop**, it is the
MicroPython’s terminal for user to control the microcontroller. REPL is
running on LOG UART, thus we need to open our serial terminal software,
in this case, Tera Term to see REPL,

Once Tera Term is opened, select “Serial” like in the picture above and
choose your ameba’s serial port using the dropdown list, after that, hit
“OK”. If your serial terminal is not configured to 115200 baud rate, now
is the time to change it to **115200** and leave the rest of settings as
default.

Now that the serial port is connected, press the :guilabel:`RESET` button once on
your ameba and you should see the MicroPython’s welcome page as shown
below,

|image11|

What happened here was that your Ameba first check its calibration data
and then boot into MicroPython’s firmware, MicroPython then run the
``“boot.py”`` python script and imported all the built-in libraries so we
can quickly start coding.

Now, you can simply type

>>> help()

to see more information, and type

>>> help(modules)

to check all readily available libraries

Step 2. Run WiFi Scan example
==============================

As most of peripherals’ examples requires additional hardware to show
the example is working, we will just use WiFi Scan example as our first
example and to see how easy it is to control WiFi using MicroPython.

Now, simply type

>>> help()

You should be able to see this,

|image12|

Then simply copy the code highlighted in the red box and paste to REPL
then Enter, you should be able to see the returned result with all
discovered wireless network in your surrounding

|image13|

With this, we can be sure that the MicroPython firmware is correctly
compiled and installed.

**(End)**

-------------------------------------------------------------------------------------------------------------------------------------

.. note::
   If you face any issue, please refer to the :doc:`../../AMB23/support/FAQ` and :doc:`../../AMB23/support/Trouble shooting` page.


.. |image1| image:: /media/ambd_micropython/AMB23_MP_getting_started/image1.png
   :width: 358
   :height: 547
   :scale: 70 %
.. |image2| image:: /media/ambd_micropython/AMB23_MP_getting_started/image2.png
   :width: 334
   :height: 524
   :scale: 70 %
.. |image3| image:: /media/ambd_micropython/AMB23_MP_getting_started/image3.png
   :width: 750
   :height: 390
   :scale: 100 %
.. |image4| image:: /media/ambd_micropython/AMB23_MP_getting_started/image4.png
   :width: 306
   :height: 408
   :scale: 100 %
.. |image5| image:: /media/ambd_micropython/AMB23_MP_getting_started/image5.png
   :width: 752
   :height: 600
   :scale: 70 %
.. |image6| image:: /media/ambd_micropython/AMB23_MP_getting_started/image6.png
   :width: 334
   :height: 524
   :scale: 70 %
.. |image7| image:: /media/ambd_micropython/AMB23_MP_getting_started/image7.jpg
   :width: 625
   :height: 434
   :scale: 70 %
.. |image8| image:: /media/ambd_micropython/AMB23_MP_getting_started/image8.png
   :width: 748
   :height: 425
   :scale: 70 %
.. |image9| image:: /media/ambd_micropython/AMB23_MP_getting_started/image9.png
   :width: 753
   :height: 637
   :scale: 70 %
.. |image10| image:: /media/ambd_micropython/AMB23_MP_getting_started/image10.png
   :width: 752
   :height: 392
   :scale: 70 %
.. |image11| image:: /media/ambd_micropython/AMB23_MP_getting_started/image11.png
   :width: 752
   :height: 394
   :scale: 70 %
.. |image12| image:: /media/ambd_micropython/AMB23_MP_getting_started/image12.jpg
   :width: 752
   :height: 391
   :scale: 70 %
.. |image13| image:: /media/ambd_micropython/AMB23_MP_getting_started/image13.jpg
   :width: 752
   :height: 391
   :scale: 70 %
