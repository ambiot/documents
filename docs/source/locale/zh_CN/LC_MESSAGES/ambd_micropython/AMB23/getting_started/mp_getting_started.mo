��    @                      F     L   d  �   �  �   �  N  L  0  �  �   �  �  �	     (  3   ?  �   s  �     �  �  �   �  �   �     \  t   l     �  &   a     �  +   �  �   �  y   �  �        �  �   2  �   �     �     �     �  
   �  5  �  �   �  Y   �  K   ?  �   �     c  �   d     �  "   �  `  !     �  (   �     �      �  &   �     #  +   A  {   m  �   �  o   �  �       �      �   �   �   \   �!  ]   ?"     �"  R   �"  6   #  H   G#  (   �#  !   �#  �  �#  5   ]%  G   �%  �   �%  �   �&  #  9'  &  ](  �   �)  �   R*     J+  1   W+  �   �+  �   ,  �  �,  �   (.  �   �.     �/  i   �/  �   �/     �0     �0  (   �0  �   �0  ]   v1  �   �1  c   ^2  �   �2  x   R3     �3     �3     �3     �3  �   4  �   �4  5   �5  ?   �5  �   16  �   �6  l   �7     P8     ]8  %  p8     �9  %   �9     �9     �9     :     ):  /   I:  ~   y:  �   �:  9   �;  K  �;     =     -=  �   E=  F   �=  \   ">     >  Z   �>  1   �>  6   &?  '   ]?  !   �?   AMB23 has smaller size than Arduino Uno, as shown in the above figure. AMB23 uses Micro USB to supply power, which is common in many smart devices. After downloading the MicroPython repository from Github, you will notice a “Release” folder in the root directory of this repository, enter this folder and locate a tool named “Double-Click-Me-to-Upload”. Also, Python3 is required during firmware compilation, so be sure to download the latest Python3 from its official website and have it added as environment variable when asked during installation. Ameba is an easy-to-program platform for developing all kind of IoT applications. AmebaD is equipped with various peripheral interfaces, including WiFi, GPIO INT, I2C, UART, SPI, PWM, ADC. Through these interfaces, AmebaD can connect with electronic components such as LED, switches, manometer, hygrometer, PM2.5 dust sensors, …etc. AmebaD AMB23 board currently supports Windows OS 32-bits and 64-bits (WIN7/8/10), Linux OS (Ubuntu 18 LTS/20 LTS/latest) and macOS operating systems. Please use the latest OS version to have the best experiences. In this documentation, please use the latest version Arduino IDE (at least version 1.8.12). As most of peripherals’ examples requires additional hardware to show the example is working, we will just use WiFi Scan example as our first example and to see how easy it is to control WiFi using MicroPython. As the name suggested, double click on the file to run it, follow instructions printed on the screen to update the ameba’s serial COM port (this is known to us during the driver installation step mentioned above) so the uploading can be carried out successfully. Once the uploading is successful, you will see a line of log printed on the screen – “All images are sent successfully” Background Information First, connect AMB23 to the computer via Micro USB: For Linux user, please install a serial terminal software of your choice using apt-get install command. Here we recommend using **picocom** for its lightweight. For advanced developer interested in developing MicroPython module in C, please make sure the GNU make of at least **version 3.82 or newer** and Python3 are installed and can be found using terminal. For advanced developer who wish to compile MicroPython firmware from scratch, then please be sure to install **Cygwin**, which is a Linux-like environment running on Windows system. When selecting the Cygwin installer, we recommend using the Cygwin 32-bit version. During Cygwin installation, installer will prompt user if wish to install other software, please make sure to select the GNU version of **make** from the **Devel** category (see picture below) and pick the latest edition. For windows users, please install a serial terminal software to interact with MicroPython. The most common serial terminals are **Tera Term** and **Putty,** here we recommend using Tera Term, which can be downloaded from internet. Furthermore, if you want to learn more about a module, such as its API and CONSTANT available, simply type the following code and details of that module will be returned to you, Getting Started If this is the first time you connect AMB23 to your computer, the USB driver for AmebaD will be automatic installed. If you face any issue, please refer to the :doc:`../../AMB23/support/FAQ` and :doc:`../../AMB23/support/Trouble shooting` page. Introduction to AMB23 MicroPython port Introduction to AmebaD[AMB23] Let's take Pin module (GPIO) as an example: MicroPython distinguishes itself from other compilation-based platforms (Arduino etc.) with its powerful method of real-time interaction to Microcontroller through a built-in feature -- REPL. MicroPython, by definition, is a lean and efficient Python3 compiler and runtime specially designed for microcontrollers. Most importantly, try to abuse ``help()`` function as much as possible to gain more information. For example, upon microcontroller power up and REPL shown, just type Normal mode This hotkey will set REPL back to normal mode. This is useful if you are stuck in certain mode and can not get out. Not all sets of peripherals shown on the on the picture/table above are available on MicroPython, please refer to **Peripheral Example and API** section for more information. Now that the serial port is connected, press the :guilabel:`RESET` button once on your ameba and you should see the MicroPython’s welcome page as shown below, Now, simply type Now, you can simply type On Linux On Windows Once Tera Term is opened, select “Serial” like in the picture above and choose your ameba’s serial port using the dropdown list, after that, hit “OK”. If your serial terminal is not configured to 115200 baud rate, now is the time to change it to **115200** and leave the rest of settings as default. Paste mode Paste mode allow you to perform pasting a large trunk of code into REPL at once without executing code line by line. This is useful when you have found a MicroPython library and wish to test it out immediately by copy and paste Please refer to the following figure and table for the pin diagram and function of AMB23. Quick cancel This hotkey help you to cancel any input and return a new line REPL has been equipped with other powerful features such as tab completion, line editing, auto-indentation, input history and more. It basically functions like the classic Python IDLE but running on microcontroller. REPL stands for **Read**, **Evaluate**, **Print** and **Loop**, it is the MicroPython’s terminal for user to control the microcontroller. REPL is running on LOG UART, thus we need to open our serial terminal software, in this case, Tera Term to see REPL, REPL stands for Read-Evaluation-Print-Loop, it is an interactive prompt that you can use to access and control your microcontroller. Required Environment Setting up Development Environment Soft reboot MicroPython will perform software reboot, this is useful when your microcontroller is behaving abnormally. This will also run scripts in 'boot.py' once again. Note that this will only reset the MicroPython interpreter not the hardware, all your previously configured hardware will stay the way it is until you manually hard-reset the board. Step 1. Installing the Driver Step 1. Navigate to “Release” folder Step 1. Open REPL Step 2. Enter UART Download mode Step 2. Installing the necessary tools Step 2. Run WiFi Scan example Step 3. Run “Double-Click-Me-to-Upload” The collected data can be uploaded via WiFi and be utilized by applications on smart devices to realize IoT implementation. Then simply copy the code highlighted in the red box and paste to REPL then Enter, you should be able to see the returned result with all discovered wireless network in your surrounding To do this, first press and hold the :guilabel:`UART_DOWNLOAD` button, then press the :guilabel:`RESET` button. To use REPL, simply open any serial terminal software (most common ones are teraterm, putty etc.) on your PC and connect to your microcontroller's serial port, then set **baudrate** to ``115200`` before manually reset the board, then you will see >>> MicroPython prompt appear on the terminal. Now you may type in any Python script on REPL as long as it's support by MicroPython and your microcontroller's MicroPython port. Try the First Example Upload Firmware into Ameba What happened here was that your Ameba first check its calibration data and then boot into MicroPython’s firmware, MicroPython then run the ``“boot.py”`` python script and imported all the built-in libraries so we can quickly start coding. With this, we can be sure that the MicroPython firmware is correctly compiled and installed. You can check the :guilabel:`COM` port number in :guilabel:`Device Manager` of your computer: You should be able to see this, You will see a help page giving you more details about this port; also if you type `*` : Those functions are not available on MicroPython it will list out all available builtin modules that are at your disposal to check all readily available libraries to see more information, and type Project-Id-Version: AmebaDocs EPUB3
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2022-04-29 04:47+0100
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: zh_CN
Language-Team: zh_CN <LL@li.org>
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.10.1
 AMB23 的尺寸比Arduino Uno小，如上图所示。 AMB23使用Micro USB来供电，这在许多智能设备中很常见。 从Github下载MicroPython repository 后，会在根目录中看到一个“Release”文件夹，并且在该路径下找到一个名为“Double-Click-Me-to-Upload”的工具。 另外，在固件编译过程中需要Python3，因此请确保从其官方网站下载最新的Python3，并在安装过程中要求时将其添加为环境变量。 Ameba是一个易于编程的微控制器平台，可用于开发各种物联网应用程序。AmebaD有各种外围接口，包括 WiFi, GPIO INT, I2C, UART, SPI, PWM, ADC。通过这些接口，AmebaD可以连接LED、开关、压力计、湿度计、PM2.5粉尘传感器等电子元件。 AmebaD AMB23 开发板目前支持Windows OS 32位元和64位元（WIN7/8/10）、Linux OS（Ubuntu 18 LTS/20 LTS/最新版本）和macOS作业系统。请使用最新的作业系统版本以获得最佳体验。在本文档中，请使用最新版本的 Arduino IDE（至少版本 1.8.12）。 由于大多数外围设备的范例都需要额外的硬件才能显示该范例是否正常运行，因此我们将仅以WiFi扫描范例为例，来了解使用MicroPython控制WiFi是十分容易的。 顾名思义，双击该文件以运行它，然后按照屏幕上显示的说明更新ameba的串行COM端口，这样上传就可以成功进行。上传成功后，您将在屏幕上看到一行日志–“All images are sent successfully”。 基本介绍 首先，通过Micro USB将AmebaD连接到电脑: 对于Linux用户，请使用apt-get install命令安装您选择的串行终端软件。在这里，我们建议使用picocom。 对于有兴趣在C语言中开发MicroPython模块的用户，请确保安装了至少3.82或更高版本的GNU make软件以及Python3。 对于希望从头开始编译MicroPython的用户，请确保安装 **Cygwin**，这是在Windows系统上运行的类似Linux的环境。选择Cygwin安装程序时，我们建议使用Cygwin 32位元版本。在Cygwin安装期间，安装程序将提示用户是否安装其他软件，请确保从 **Devel** 类别中选择 **make** 的GNU版本（请参见下图），然后选择最新版本。 对于Windows用户，请安装串行终端软件。最常见的串行终端是 **Tera Term** 和 **Putty**，在这里我们建议使用Tera Term，可以从网路下载。 此外，如果您想了解有关模块的更多资讯，例如可用的API和CONSTANT，只需键入以下代码help(您感兴趣的模块)来获取该模块的详细信息。 入门指南 如果这是您第一次将AmebaD连接到您的电脑，那么AmebaD的USB驱动程序将自动安装。 如果您遇到任何问题，请参考 :doc:`../../AMB21/support/FAQ` 和 :doc:`../../AMB23/support/Trouble shooting` 的页面。 AMB23 MicroPython 端口介绍 AmebaD[AMB23] 介绍 让我们以Pin模块（GPIO）为例： MicroPython 透过内建功能-REPL与Microcontroller进行即时交互的方法，将其与其他基于编译的平台（Arduino等）区分开来。 根据定义，MicroPython是专门为微控制器设计的精简高效的Python3编译器。 建议多尝试使用 ``help()`` 函数以获得更多资讯。例如，微控制器上电并显示REPL后，只需键入help(modules)， 此热键会将REPL设置回Normal mode。当你卡在某些模式下，可以利用这个解决。 上图/表中显示的并非所有外围设备都可以在MicroPython上使用， 请参阅 **Examples and API** 部分以获取更多资讯。 现在已经连接了串行端口，在ameba上按一下RESET按钮，如下所示会看到MicroPython的欢迎页面。 接着输入 现在试着输入 Linux环境: Windows环境 打开Tera Term后，如上图所示选择 “Serial”，然后使用下拉列表选择ameba的串行端口，然后单击“OK”。如果您的串行终端未配置为 **115200** baudrate，建议将 **115200** 设定为默认设置。 Paste mode 可以一次将一大部分的代码粘贴到REPL中，而无需一行一行地执行代码。适合当您找到MicroPython库并希望通过复制和贴上立即对其进行测试时。 AMB23的引脚图和功能请参考下图和表格。 此热键可帮助您快速取消任何输入并另起一行。 REPL具有其他强大的特色，例如tab处理，行编辑，自动缩排，输入历史记录等。它的基本功能类似于标准的Python IDE，但是运行在微控制器上。 REPL代表 **读取** ， **评估** ，**打印** 和 **循环** ，它是MicroPython的终端，供用户控制微控制器。 REPL在LOG UART上运行，因此我们需要打开串行终端软件，在本例中为Tera Term，用以查看REPL。 REPL代表Read-Evaluation-Print-Loop，它是一个交互式提示，可用于存取和控制微控制器。 工作环境 设置开发环境 MicroPython将执行软件重启，这在您的微控制器表现异常时非常有用。并且将再次执行 “boot.py” 中的脚本。请注意，这只会重置MicroPython 直译器而不重置硬件，所有先前配置的硬件将保持原样，直到您手动重置开发板为止。 步骤1: 安装驱动程序 步骤1: 找到“Release”文件夹 步骤1: 打开 REPL 步骤2: 进入UART下载模式 步骤2: 安装相关工具 步骤2: 执行WiFi扫描范例 步骤3: 运行 “Double-Click-Me-to-Upload” Ameba所收集的数据可以通过WiFi无线上传，并被智能设备上的应用程序使用，实现物联网的应用。 然后只需复制红色框中显示的代码并黏贴到 REPL 然后按Enter，则能够看到返回的结果显示周围所有发现的无线网络。 请先按住UART_DOWNLOAD按钮，然后按RESET按钮。 要使用REPL，只需在PC上打开任何串行终端软件（最常用的工具是teraterm，putty等），然后连接到微控制器的串行端口，然后将baudrate设置为115200，然后手动重置开发板，即可看到>>> MicroPython提示符出现在终端画面上。您就可以在REPL上输入任何Python脚本。 尝试第一个范例 将固件上传到Ameba 过程为Ameba首先检查其校准数据，然后启动MicroPython的固件，接着再运行 ``boot.py`` python脚本和导入的内建python库。 这样我们可以确定 MicroPython 固件被正确编译和安装。 你可以在你的电脑的装置 :guilabel:`管理员` 中检查 :guilabel:`COM` 端口号: 应该可以看到下图: 您将看到一个帮助页面，为您提供有关的更多详细信息。如果您输入  `*`: 这些函数在 MicroPython 上不可用。 它将列出所有可用的内建模块供您使用。 检查所有现成可用的python库。 查看更多信息，然后输入 