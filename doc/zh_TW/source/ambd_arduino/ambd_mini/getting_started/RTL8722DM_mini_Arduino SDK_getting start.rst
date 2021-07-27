=======================
RTL8722DM_mini 快速入門
=======================

環境配置
--------

AmebaD RTL8722DM_MINI 目前支持32位和64位 Windows XP/7/8/10，Linux 和 Mac 操作系統。
在本文檔中，請使用使用 1.8.12 或更高版本的 Arduino IDE。

AmebaD RTL8722DM_MINI 簡介
--------------------------

Ameba 是一個用於開發所有類型的物聯網應用，易於編程的平台。 AmebaD 配備了包括 WiFi、GPIO INT、
I2C、UART、SPI、PWM、ADC 各種外圍接口。通過這些接口，AmebaD可以與如 LED、開關、壓力計、濕度計
PM2.5粉塵傳感器等電子元件連接。採集的數據可以通過 WiFi上傳，並被智能設備上的應用程序利用，
以實現物聯網的實施。

.. image:: ../media/RTL8722DM_mini_Arduino_SDK_getting_start/image1.jpeg
   :alt: get-start-1
   :width: 393
   :height: 699
   :scale: 100 %
   
RTL8722DM_MINI的尺寸比Arduino Uno小，如上圖所示。

.. image:: ../media/RTL8722DM_mini_Arduino_SDK_getting_start/image2.jpeg
   :alt: get-start-2
   :width: 337
   :height: 558
   :scale: 100 %

.. RTL8722DM_MINI uses Micro USB to supply power, which is common in many
.. smart devices.

.. Please refer to the following figure and table for the pin diagram and
.. function of RTL8722DM_MINI.

.. .. image:: ../media/RTL8722DM_mini_Arduino_SDK_getting_start/image15.jpeg
..    :width: 528
..    :height: 459
..    :scale: 100 %

.. === ======== ======== === === ========== ========= ========
.. \   PIN name GPIO INT ADC PWM UART       SPI       I2C
.. === ======== ======== === === ========== ========= ========
.. D0  GPIOB_0  ✓                                     I2C0 SDA
.. D1  GPIOB_1  ✓        A4      Serial2_TX           
.. D2  GPIOB_2  ✓        A5      Serial2_RX           
.. D3  GPIOB_3  ✓        A6                           
.. D4  GPIOB_4  ✓        A0  ✓                        
.. D5  GPIOB_5  ✓        A1  ✓                        I2C0 SCL
.. D6  GPIOB_6  ✓        A2                           I2C0 SDA
.. D7  GPIOB_7  ✓        A3  ✓                        
.. D8  GPIOA_2  ✓                                     
.. D9  GPIOA_12 ✓            ✓   Serial2_TX SPI1_MOSI 
.. D10 GPIOA_13 ✓            ✓   Serial2_RX SPI1_MISO 
.. D11 GPIOA_14 ✓                           SPI1_CLK  
.. D12 GPIOA_15 ✓                           SPI1_CS   
.. D13 GPIOA_16 ✓                                     
.. D14 GPIOA_28 ✓            ✓                        
.. D15 GPIOA_18 ✓                Serial1_TX           
.. D16 GPIOA_19 ✓                Serial1_RX           
.. D17 GPIOA_30 ✓            ✓                        
.. D18 GPIOA_21 ✓                Serial1_TX           
.. D19 GPIOA_22 ✓                Serial1_RX           
.. D20 GPIOA_23 ✓            ✓                        
.. D21 GPIOA_24 ✓            ✓                        
.. D22 GPIOA_31 ✓                                     I2C0 SCL
.. === ======== ======== === === ========== ========= ========

.. Setting up Development Environment

.. Step 1. Installing the Driver

.. First, connect RTL8722DM_MINI to the computer via Micro USB (same as
.. power):

.. .. image:: ../media/RTL8722DM_mini_Arduino_SDK_getting_start/image2.jpeg
..    :width: 337
..    :height: 558
..    :scale: 100 %

.. If this is the first time you connect RTL8722DM_MINI to your computer,
.. the USB driver for RTL8722DM_MINI will be automatic installed.

.. You can check the COM port number in Device Manager of your computer:

.. .. image:: ../media/RTL8722DM_mini_Arduino_SDK_getting_start/image3.png
..    :width: 1431
..    :height: 716
..    :scale: 50 %

.. Step 2. Set up Arduino IDE

.. From version 1.6.5, Arduino IDE supports third-party hardware.
.. Therefore, we can use Arduino IDE to develop applications on
.. RTL8722DM_MINI, and the examples of Arduino can run on RTL8722DM\_ MINI
.. too. Refer to link **basic example link**

.. | Arduino IDE can be downloaded in the Arduino website:
.. | https://www.arduino.cc/en/Main/Software

.. When the installation is finished, open Arduino IDE. To set up
.. RTL8722DM_MINI correctly in Arduino IDE, go to “File” -> “Preferences”.

.. .. image:: ../media/RTL8722DM_mini_Arduino_SDK_getting_start/image4.jpeg
..    :width: 298
..    :height: 628
..    :scale: 100 %

.. And paste the following URL into “Additional Boards Manager URLs” field:

.. https://github.com/ambiot/ambd_arduino/raw/master/Arduino_package/package_realtek.com_amebad_index.json

.. Next, go to “Tools” -> “Board” -> “Boards Manager”:

.. .. image:: ../media/RTL8722DM_mini_Arduino_SDK_getting_start/image5.jpeg
..    :width: 386
..    :height: 441
..    :scale: 100 %

.. The “Boards Manager” requires about 10~20 seconds to refresh all
.. hardware files (if the network is in bad condition, it may take longer).
.. Every time the new hardware is connected, we need to reopen the Board
.. Manager. So, we close the Boards Manager, and then open it again. Find
.. “Realtek AmebaD Boards (32-bits ARM Cortex-M4 @200MHz)” in the list,
.. click “Install”, then the Arduino IDE starts to download required files
.. for AmebaD.

.. .. image:: ../media/RTL8722DM_mini_Arduino_SDK_getting_start/image6.jpeg
..    :width: 664
..    :height: 600
..    :scale: 100 %

.. Finally, we select AmebaD as current connected board in “tools” ->
.. “Board” -> “Ameba ARM (32-bits) Boards” ->” RTL8722DM_MINI”：

.. .. image:: ../media/RTL8722DM_mini_Arduino_SDK_getting_start/image7.jpeg
..    :width: 800
..    :height: 450
..    :scale: 50 %

.. Try the First Example

.. Step 1. Compile & Upload

.. | Arduino IDE provides many built-in examples, which can be compiled,
..   uploaded and run directly on the boards. Here, we take the “Blink”
..   example as the first try.
.. | Open “File” -> “Examples” -> “01.Basics” -> “Blink”:

.. .. image:: ../media/RTL8722DM_mini_Arduino_SDK_getting_start/image8.jpeg
..    :width: 824
..    :height: 600
..    :scale: 50 %

.. Arduino IDE opens a new window with the complete sample code.

.. .. image:: ../media/RTL8722DM_mini_Arduino_SDK_getting_start/image9.jpeg
..    :width: 588
..    :height: 711
..    :scale: 100 %

.. There are onboard LED of TRL8722DM_MINI, the default “LED_BUILTIN” is
.. blue onboard LE.D

.. Change “LED_BUILTIN” to “LED_B” or “LED_G” for different colour. Onboard
.. LEDs options LED_B and LED_G. (blue and green).

.. .. image:: ../media/RTL8722DM_mini_Arduino_SDK_getting_start/image10.jpeg
..    :width: 678
..    :height: 746
..    :scale: 50 %

.. Next, we compile the sample code directly; click “Sketch” ->
.. “Verify/Compile”

.. .. image:: ../media/RTL8722DM_mini_Arduino_SDK_getting_start/image11.jpeg
..    :width: 393
..    :height: 613
..    :scale: 100 %

.. Arduino IDE prints the compiling messages in the bottom area of the IDE
.. window. When the compilation is finished, you will get the message
.. similar to the following figure:

.. .. image:: ../media/RTL8722DM_mini_Arduino_SDK_getting_start/image12.jpeg
..    :width: 678
..    :height: 746
..    :scale: 50 %

.. Afterwards, we will upload the compiled code to RTL8722DM_MINI.

.. Please make sure RTL8722DM_MINI is connected to your computer, then
.. click “Sketch” -> “Upload”.

.. The Arduino IDE will compile first then upload. During the uploading
.. process, users are required to enter the upload mode of the board.
.. Arduino IDE will wait 5s for DEV board to enter the upload mode.

.. .. image:: ../media/RTL8722DM_mini_Arduino_SDK_getting_start/image13.jpeg
..    :width: 678
..    :height: 746
..    :scale: 50 %

.. To enter the upload mode, first press and hold the UART_DOWNLOAD button,
.. then press the RESET button. If success, you should see the onboard
.. green LED and blue LED all turned off.

.. .. image:: ../media/RTL8722DM_mini_Arduino_SDK_getting_start/image14.jpeg
..    :width: 711
..    :height: 752
..    :scale: 50 %

.. Again, during the uploading procedure the IDE prints messages. Uploading
.. procedure takes considerably longer time (about 30 seconds to 1 minute).
.. When upload completed, the “Done uploading” message is printed.

.. Step 2.Run the Blink example

.. | In each example, Arduino not only provides sample code, but also
..   detailed documentation, including wiring diagram, sample code
..   explanation, technical details, …etc. These examples can be directly
..   used on RTL8722DM_MINI.
.. | So, we find the detailed information of the Blink example:
.. | https://www.arduino.cc/en/Tutorial/BuiltInExamples/Blink

.. In short, for RTL8722DM_MINI, the example can be run on both onboard
.. LEDs (green or blue) or external LED (use any GPIO pins for signal
.. output).

.. Finally, press the RESET button, and you can see the LED blinking.

.. If you encounter any problem, please refer to Troubleshooting.
