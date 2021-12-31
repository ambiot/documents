####################################
[RTL8722DM_MINI] SDFS - Data Editing
####################################

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

SD File System module supports SD card data manipulation in the form of file. With it, you can control and inspect files as you like and keep them on non-volatile memory.

Copy and paste the following code line by line into REPL to see its effect.

.. code-block:: python
   :linenos:

   from machine import SDFS
   s=SDFS()                # create a short form
   s.create("ameba.txt")   # create a file named "ameba.txt"
   s.write("ameba.txt", "ameba supports sd card file system!") # write a string to the file just created
   s.read("ameba.txt")     # read the content from the same file
   s.rm("ameba.txt")       # delete the file

.. note::
    No file open or close is needed, the API does that automatically for you.