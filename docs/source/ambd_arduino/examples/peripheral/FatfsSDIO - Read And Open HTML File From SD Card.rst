###################################################################
FatfsSDIO – Read And Open HTML File From SD Card
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

Insert the MicroSD card into your computer and copy the HTML file to your SD card (Note: put the file at outside and do not put it inside of any folder in the SD card). Here is a HTML sample for testing, “Web_test.html”.

|image1|

| Then insert the MicroSD card into the onboard SD card reader of RTL8722DM MINI board.
| Open the example, ``“Files” → “Examples” → “AmebaFatfsSDIO” → “read_html_from_SD_card”``
| Upload the code and press the reset button on Ameba once the upload is finished. When the connection is established, you should be able to see the message “To see this page in action, open a browser to http://xxx.xxx.xxx.xxx” in the serial monitor as shown in the figure:

|image2|

Next, open the address stated in serial monitor in the browser of your laptop or cell phone under the same WiFi domain. 
You will see the following display in your browser:

|image3|

Now you have successfully read and opened the html file saved in your SD card.

.. |image1| image:: /media/ambd_arduino/FatfsSDIO_Read_And_Open_HTML_File_From_SD_Card/image1.png
    :width: 1040
    :height: 360
    :scale: 50 %
.. |image2| image:: /media/ambd_arduino/FatfsSDIO_Read_And_Open_HTML_File_From_SD_Card/image2.png
    :width: 1168
    :height: 630
    :scale: 50 %
.. |image3| image:: /media/ambd_arduino/FatfsSDIO_Read_And_Open_HTML_File_From_SD_Card/image3.png
    :width: 3895
    :height: 1235
    :scale: 15 %