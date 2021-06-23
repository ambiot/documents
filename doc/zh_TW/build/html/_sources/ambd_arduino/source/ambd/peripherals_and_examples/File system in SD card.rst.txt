[RTL8722DM_mini] FatfsSDIO – File system in SD card
====================================================
**Materials**


-  Ameba D [RTL8722DM_mini] x 1

-  MicroSD card

**Example**


**Procedure**


Insert a MicroSD card into the onboard SD card reader of RTL8722DM_mini
board.

Example 01 create_folder

Open the example, "Files" -> "Examples" -> “AmebaFatfsSDIO” ->
“create_folder”.

.. image:: ../media/File_system_in_SD_card/image1.png
   :width: 4in
   :height: 4.71141in

Upload the code and press the reset button on Ameba once the upload is
finished.

In the sample code, we first create a folder “testdir”, then text file
“test.txt” with content “hello world!”. Read the file and print content
to serial monitor.\ |image1|

Next, insert SD card into card reader, and check whether the operations
succeeded.

.. image:: ../media/File_system_in_SD_card/image3.png
   :width: 3.96875in
   :height: 2.49219in

Example 02 file_read_write

Open the example, "Files" -> "Examples" -> “AmebaFatfsSDIO” ->
“file_read_write”.

Upload the code and press the reset button on Ameba once the upload is
finished.

In the sample code, we create text file “test.txt” with content “hello
world!”. Read the file and print content to serial monitor.

.. image:: ../media/File_system_in_SD_card/image4.png
   :width: 6.26806in
   :height: 2.72153in

Next, insert SD card into card reader, and check whether the operations
succeeded.

.. image:: ../media/File_system_in_SD_card/image5.png
   :width: 3.625in
   :height: 2.63636in

Example 03 get_file_attribute

Open the example, "Files" -> "Examples" -> “AmebaFatfsSDIO” ->
“get_file_attribute”.

Upload the code and press the reset button on Ameba once the upload is
finished.

In the sample code, system will print put all file attribute to serial
monitor.

.. image:: ../media/File_system_in_SD_card/image6.png
   :width: 6.26806in
   :height: 2.72153in

Next, insert SD card into card reader, and check whether the operations
succeeded. In this case, we already know the attribute should be folder
“testdir” and text file “test.txt”by refer the above pictures.

Example 04 last_modified_time

Open the example, "Files" -> "Examples" -> “AmebaFatfsSDIO” ->
“last_modified_time”.

Upload the code and press the reset button on Ameba once the upload is
finished.

In the sample code, system will print put the target file last modified
time to serial monitor.

.. image:: ../media/File_system_in_SD_card/image7.png
   :width: 6.26806in
   :height: 2.72153in

Next, insert SD card into card reader, and check whether the operations
succeeded.

.. image:: ../media/File_system_in_SD_card/image8.png
   :width: 4.02556in
   :height: 3.83333in

Example 05 list_root_files

Open the example, "Files" -> "Examples" -> “AmebaFatfsSDIO” ->
“list_root_files”.

Upload the code and press the reset button on Ameba once the upload is
finished.

In the sample code, system will print put all root file to serial
monitor.

.. image:: ../media/File_system_in_SD_card/image9.png
   :width: 6.26806in
   :height: 2.72153in

Next, insert SD card into card reader, and check whether the operations
succeeded. In this case, we already know the root files folder “testdir”
and text file “test.txt”by refer the above pictures.

.. |image1| image:: ../media/File_system_in_SD_card/image2.png
   :width: 6.26806in
   :height: 2.72153in
