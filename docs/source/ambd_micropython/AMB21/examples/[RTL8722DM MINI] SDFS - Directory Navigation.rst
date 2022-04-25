############################################
[RTL8722DM_MINI] SDFS - Directory Navigation
############################################

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Materials**
:raw-html:`</p>`

* Ameba RTL8722DM_MINI x 1
* MicroSD Card x 1 (SD card must be < 32GB with format set to fatfs)
  
:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Steps**
:raw-html:`</p>`

SD File System is supported on MicroPython RTL8722 port through importing the SDFS module from the machine module. This module is a simplified file system with the aim to highlight SD card manipulation, thus it does not support virtual file system as well as virtual file object.

Copy and paste the following code line by line into REPL to see its effect.

.. code-block:: python
    :linenos:
    
    from machine import SDFS
    s=SDFS()          # create an instance and mount on file system on SD card
    s.listdir()       # listing the files and folders under current path
    s.mkdir("test")   # create a folder named "test" under current path
    s.chdir("test")   # change directory to test folder
    s.pwd()           # print out present working directory(current path)
    s.chdir("/")      # change directory bach to root directory
    s.rm("test")      # delete the test folder

.. note::
    No file open or close is needed, the API does that automatically for you.