===================================
Trouble shooting
===================================



**Compilation of MicroPython firmware failed**

During the building process, some user may encounter error that suspend the process, this is due to missing system environment setup and can be fixed as follows,

1. Error related to python
By default, MicroPython use python3 to run building scripts for the MicroPython kernals, if you encounter error related to python, it may be because the path of the Python3 executable is not added to system environment variable.

However, if environment variable is already added but the build could not be completed, you may try,

1) Re-start your PC

2) type “python” on your terminal, if the python shown is python3, then please add
PYTHON = python
to the second line of the “Makefile” under “port/rtl8722” folder

2. Error related to MPY-CROSS
If building process stop when mpy-cross shown as error, there is a step to be done as follows,

1) navigate to “MicroPython_RTL8722/mpy-cross” folder

2) Open your Cygwin/Linux terminal and just type
make
Wait for make finish building the MicroPython Cross Compiler, then this should fix the error

**My code is not behaving as I expected**

Try to debug your program using print( ) function and learn more about each API used through the API page.

**Why am I constantly getting “syntax error” from REPL?**

Please note that MicroPython only support Python 3 syntax.

**How to upload my python script into Ameba?**

There are 3 ways of uploading your python code into Ameba,

1. via REPL normal mode
In the normal REPL mode, you can paste your into REPL code line by line and have them executed sequentially, but note that syntax will be automatically indented when using condition checking or loop, like “if” or “while”, incorrect indenting will crash your input script

2. via REPL paste mode
When in normal REPL mode, press “Ctrl”+ “e” will enter paste mode, paste mode only allow pasting a large chunk of a complete code, incomplete code or editing after pasting will mess up your syntax and cause error

3. via mp_frozenmodules
By placing your python script into the “mp_frozenmodules” folder under “rtl8722” folder, your code will be embedded into the MicroPython firmware and uploaded to Ameba, after that you can use it by simply importing the name of your python script. If you get syntax error using this method, you better check your python code syntax again.

**Why is there no output on my serial terminal after connecting to RTL8722CSM/RTL8722DM UART?**

RTL8722CSM/RTL8722DM is by default configured at 115200 baudrate, please check if your serial terminal is configured to 115200.

**My program is not being downloaded into RTL8722CSM/RTL8722DM?**

Please follow the procedure for the correct downloading.

1. Enter the download mode. The on-board Green LED will blink when entered download mode.

2. When downloading the image into board the on-board Red LED will blink

3. After a successful download, you will see log like this “All images sent successfully”.

**Sometimes WiFi signal is weak?**

The default antenna for RTL8722CSM/RTL8722DM uses the I-Pex Connector. Please change/connect the I-Pex Connector antenna.

**Why is my board not powering up?**

Please make sure the connector J38 beside resistor R43 is connected. The connector is used to link the power to IC.