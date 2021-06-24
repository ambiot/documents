Getting Started
==============================================


**Setup of the GCC Development Environment**

On Windows, you can use Cygwin as the GCC development environment.
Cygwin is a large collection of GNU and open source tools which provide
functionality similar to a Linux distribution on Windows.
Click `http://cygwin.com/  <http://cygwin.com/>`__\ and download the
Cygwin
package `setup-x86.exe  <http://www.cygwin.com/setup-x86.exe>`__\ for
your Windows platform. 1. 32-bit Cygwin is supported both for 32-bit
Windows and 64-bit Windows. 2. During the installation of Cygwin
package, include ‘Devel -> make’ and ‘Math -> bc’ utilities on the
Select Packages page, as below shows.

\ |1|\ |image1|\ 

For Linux, refer
to AN0400 Ameba-D `Application
Note  <https://www.amebaiot.com/sdk-download-manual-8722dm/>`__\ v12.pdf
to build the GCC development environment.  

**Knowledge about Ameba-D Demo Board**

For Ameba-D, there are many types of chipsets available, such as
RTL8720CS, RTL8721CSM, RTL8722CSM, RTL8720DN, RTL8720DM, RTL8721DM, and
RTL8722DM. In addition, the chipsets can be embedded on Ameba-D DEV demo
board, which is extended to various I/O interfaces. The corresponding
HDK (Hardware Development Kit) documents are available, please contact
RTK for further details. The hardware block diagram of Ameba-D demo
board is shown below. USB TO UART: power supply and log print. The baud
rate is 115200bps SWD: SWD interface, used to download images and debug
with IAR. Reset button: reset Ameba-D to run firmware after IAR
completes download.

\ |image2| 

**Connection to Log Console**

On Ameba-D board, FTDI Chip and FT232 can be used for the log console
and debugger. To view the log console, make use of the terminal tool ,
such as SecureCRT/teraterm/putty and etc. We will take our internal tool
as an example. 1) Select the corresponding serial uart configure
communicate parameter and then open it. 2) Press the Reset button on
Ameba-D board. Some messages can be found in the terminal.

\ |image3| 

**Building the First GCC Project on Ameba-D**

The following steps are for first-time developer to build GCC project,
under existing RTK SDK. **Building Code** This section illustrates how
to build SDK. First, you need to switch to GCC project directory. For
Windows, open Cygwin terminal and use $ cd command to change directory
to KM0 or KM4 project directory of Ameba-D SDK. Note: You need to
replace the {path} to your own SDK location, and add “cygdrive” prefix
in front of the SDK location, so that Cygwin can access your file
system.

 $ cd
/cygdrive/{path}/project/realtek_amebaD_va0_example/GCC-RELEASE/project_lp

 $ cd
/cygdrive/{path}/project/realtek_amebaD_va0_example/GCC-RELEASE/project_hpFor
Linux, open its own terminal and use $ cd command to change directory to
KM0 or KM4 project directory of Ameba-D SDK.

 $ cd /{path}/project/realtek_amebaD_va0_example/GCC-RELEASE/project_lp

 $ cd
/{path}/project/realtek_amebaD_va0_example/GCC-RELEASE/project_hpTo
build SDK for normal image, simply use $ make all command under the
corresponding project directories on Cygwin (Windows) or terminal
(Linux). KM0 project For KM0 project, if the terminal contains
“km0_image2_all.bin” and “Image manipulating end” output message, it
means that the image has been built successfully, as below
shows.

\ |image4|\ 

If somehow it is built failed, type $ make clean to
clean and then redo the make procedure. After successfully built, the
image file is located in
project/realtek_amebaD_va0_example/GCC-RELEASE/project_lp/asdk/image, as
below shows.

\ |image5|\ 

KM4 project For KM4 project, if the terminal
contains “km4_image2_all.bin” and “Image manipulating end” output
message, it means that the image has been built successfully, as below
shows.

\ |image6|\ 

If somehow it built failed, type $ make clean to clean
and then redo the make procedure. After built successfully, the image
file is located in
project/realtek_amebaD_va0_example/GCC-RELEASE/project_hp/asdk/image, as
below shows.

\ |image7|\ 

**Downloading Images to Ameba-D** Realtek
provides an image tool to download images on windows.

 Environment Requirements: EX. WinXP, Win 7 Above, Microsoft .NET
Framework 3.5

 ImageTool.exe Location:
SDK\tools\AmebaD\Image_Tool\ImageTool.exe

\ |image8|\ 

Assuming that the
ImageTool on PC is a server, it sends images files to Ameba (client)
through UART. To download image from server to client, the client must
enter uart download first. 1) Enter into UART_DOWNLOAD mode.

 Push the UART DOWNLOAD button and keep it pressed.

 Re-power on the board or press the Reset button.

 Release the UART DOWNLOAD button.Now, Ameba board gets into
UART_DOWNLOAD mode and is ready to receive data. 2) Click Chip Select
(in red) on UI and select chip (AmebaD or AmebaZ). 3) Select the
corresponding serial port and transmission baud rate. The default baud
rate is 1.5Mbps (recommended). 4) Click the Browse button to select the
images (km0_boot_all.bin/km4_boot_all.bin/km0_km4_image2.bin) to be
programmed and input addresses.

 The image path is located in
{path}\project\realtek_amebaD_va0_example\GCC-RELEASE\project_hp\asdk\image
and
{path}\project\realtek_amebaD_va0_example\GCC-RELEASE\project_hp\asdk\image,
where {path} is the location of the project on your own computer.

 The default target address is the SDK default image address, you can
use it directly.5) Click Download button to start. The progress bar will
show the transmit progress of each image. You can also get the message
of operation successfully or errors from the log window.\ |image9|

.. |1| image:: ../media/getting_started/image1.png
   :width: 4.16667in
   :height: 4.16667in
.. |image1| image:: ../media/getting_started/image2.png
   :width: 4.16667in
   :height: 4.16667in
.. |image2| image:: ../media/getting_started/image3.png
   :width: 6.5in
   :height: 6.5in
.. |image3| image:: ../media/getting_started/image4.png
   :width: 5.20833in
   :height: 5.20833in
.. |image4| image:: ../media/getting_started/image5.png
   :width: 5.20833in
   :height: 5.20833in
.. |image5| image:: ../media/getting_started/image6.png
   :width: 5.20833in
   :height: 5.20833in
.. |image6| image:: ../media/getting_started/image7.png
   :width: 5.20833in
   :height: 5.20833in
.. |image7| image:: ../media/getting_started/image8.png
   :width: 5.20833in
   :height: 5.20833in
.. |image8| image:: ../media/getting_started/image9.png
   :width: 5.20833in
   :height: 5.20833in
.. |image9| image:: ../media/getting_started/image10.png
   :width: 5.20833in
   :height: 5.20833in
