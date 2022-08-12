###################################################################
FatfsSDIO – File system in SD card
###################################################################

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Materials**
:raw-html:`</p>`

  - AmebaD [AMB23] x 1
  - MicroSD card

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Example**
:raw-html:`</p>`

**Procedure**

Insert a MicroSD card into the onboard SD card reader of RTL8722DM MINI board.

**Example 01 create_folder**

Open the example, ``"Files" → "Examples" → “AmebaFatfsSDIO” → “create_folder”``.

  |1|

| Upload the code and press the reset button on Ameba once the upload is finished.
| In the sample code, we first create a folder “testdir”, then text file
  “test.txt” with content “hello world!”. Read the file and print content
  to serial monitor.
  
  |2|

Next, insert SD card into card reader, and check whether the operations
succeeded.
  
  |3|

**Example 02 file_read_write**

| Open the example, ``"Files" → "Examples" → “AmebaFatfsSDIO” →
  “file_read_write”``.
| Upload the code and press the reset button on Ameba once the upload is
  finished.
| In the sample code, we create text file “test.txt” with content “hello
  world!”. Read the file and print content to serial monitor.

  |4|

Next, insert SD card into card reader, and check whether the operations
succeeded.

  |5|

**Example 03 get_file_attribute**

| Open the example, ``"Files" → "Examples" → “AmebaFatfsSDIO” →
  “get_file_attribute”``.
| Upload the code and press the reset button on Ameba once the upload is
  finished.
| In the sample code, system will print put all file attribute to serial
  monitor.
  
  |6|

| Next, insert SD card into card reader, and check whether the operations
  succeeded. In this case, we already know the attribute should be folder
  “testdir” and text file “test.txt”by refer the above pictures.

**Example 04 last_modified_time**

| Open the example, ``"Files" → "Examples" → “AmebaFatfsSDIO” →
  “last_modified_time”``.
| Upload the code and press the reset button on Ameba once the upload is
  finished.
| In the sample code, system will print put the target file last modified
  time to serial monitor.
  
  |7|

Next, insert SD card into card reader, and check whether the operations
succeeded.

  |8|

**Example 05 list_root_files**

| Open the example, ``"Files" → "Examples" → “AmebaFatfsSDIO” →
  “list_root_files”``.
| Upload the code and press the reset button on Ameba once the upload is
  finished.
| In the sample code, system will print put all root file to serial
  monitor.

  |9|

Next, insert SD card into card reader, and check whether the operations
succeeded. In this case, we already know the root files folder “testdir”
and text file “test.txt”by refer the above pictures.

.. |1| image:: /media/ambd_arduino/FatfsSDIO_File_System_In_SD_Card/image1.png
   :width: 596
   :height: 702
   :scale: 100 %
.. |2| image:: /media/ambd_arduino/FatfsSDIO_File_System_In_SD_Card/image2.png
   :width: 873
   :height: 379
   :scale: 100 %
.. |3| image:: /media/ambd_arduino/FatfsSDIO_File_System_In_SD_Card/image3.png
   :width: 508
   :height: 319
   :scale: 100 %
.. |4| image:: /media/ambd_arduino/FatfsSDIO_File_System_In_SD_Card/image4.png
   :width: 873
   :height: 379
   :scale: 100 %
.. |5| image:: /media/ambd_arduino/FatfsSDIO_File_System_In_SD_Card/image5.png
   :width: 462
   :height: 336
   :scale: 100 %
.. |6| image:: /media/ambd_arduino/FatfsSDIO_File_System_In_SD_Card/image6.png
   :width: 873
   :height: 379
   :scale: 100 %
.. |7| image:: /media/ambd_arduino/FatfsSDIO_File_System_In_SD_Card/image7.png
   :width: 879
   :height: 379
   :scale: 100 %
.. |8| image:: /media/ambd_arduino/FatfsSDIO_File_System_In_SD_Card/image8.png
   :width: 625
   :height: 598
   :scale: 100 %
.. |9| image:: /media/ambd_arduino/FatfsSDIO_File_System_In_SD_Card/image9.png
   :width: 873
   :height: 379
   :scale: 100 %