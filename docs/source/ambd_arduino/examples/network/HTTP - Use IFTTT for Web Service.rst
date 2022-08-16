##########################################################################
HTTP - Use IFTTT for Web Service
##########################################################################

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Introduction to IFTTT**
:raw-html:`</p>`

IFTTT, known as If This Then That, is a website and mobile app and free
web-based service to create the applets, or the chains of simple
conditional statements. The applet is triggered by changes that occur
within other web services such as Gmail, Facebook, Telegram, Instagram,
Pinterest etc.

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Preparation**
:raw-html:`</p>`

   - AmebaD [AMB21 / AMB22 / AMB23 / BW16] x 1
   - An account from https://ifttt.com/ , in order to access IFTTT service\*

   |1|

.. Note::
    Upon log in, there are several cloud and online services that
    are integrated with IFTTT platforms.

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Example**
:raw-html:`</p>`

- Generate Applet from IFTTT

   In this example, we obtain an example of IFTTT Applet to send email to 
   specified recipient.

   To run the example, HTTP POST feature of the Ameba is used to post a 
   simple webhook service that is received by IFTTT platform and in turn 
   be used to trigger a response (sending an email).

   After logging in https://ifttt.com/, click **Create** from the top bar.

   |2|

   Click **“Add”** to add the trigger.

   |3|

   Choose Webhooks service as shown below. Alternatively, search the service 
   by typing into the search bar.

   |4|

   After that, the available triggers will appear. Choose Receive a Web request.

   |5|

   Next, an Event Name is required to identify the trigger successfully. 
   In this example, set the Event name as “test_event”.

   |6|

   Next, click **Add** in Then That field to create the action service taken 
   in response to the last trigger.

   |7|

   Choose Email as the action service.

   |8|

   Click on Send me an email.

   |9|

   Under the template of **Send me an Email**, the contents of the email, 
   such as subject and body is editable. Click **Create Action** to complete the action. 
   Take note that **Email service** is offered to the email address registered under 
   IFTTT account.

   |10|

-  Post the Trigger via Ameba

| Once the Applet is ready in the IFTTT dashboard, the example program can be flashed 
  onto the Ameba board to post the HTTP request.
| Open the example code in ``“File” → “Examples” → “WiFi” → “HTTP_IFTTT_Post”``
| In the example program, edit the following 3 items inside the code to make the 
  program work.
   
   1. The WiFi credentials to connect to the Wi-Fi hotspot or access point of desirable choice.
   2. Under the Host name field, enter the host name of the IFTTT service “maker.ifttt.com”.
   3. Under the Path name field, enter the Event name and key field “/trigger/Event name/with/key/Key Field”
      
      - Event name: The event name should be the same as the one specified in the IFTTT applet. In this example, the event name is “test_event”.
      - Key Field: Available under webhook service in individual IFTTT account. See the next step for the steps to obtain the Key Field.
   
   |11|

To obtain a key from documentation tab of the Webhooks, find the webhook service in the 
Explore tab.

   |12|

On the Webhooks service page, click on the Documentation tab.

   |13|

The key can be found in the documentation page. Also, information on how HTTP request can 
be used.

   |14|

| Once the example is ready, connect to Ameba board via USB Cable.

| On the Arduino IDE, compile the code and upload the code onto Ameba and press the reset 
  button. After the event has been successfully fired, “Congratulations! You have fired 
  the test_event event” can be seen on the serial monitor and an email reminder for this 
  event will be delivered.

   |15|

Thereafter an email is sent to recipient email account registered at IFTTT Applet and 
email notification will be received.

   |16|

.. |1| image::  /media/ambd_arduino/HTTP_Use_IFTTT_For_Web_Service/image1.png
   :width: 611
   :height: 332
   :scale: 100 %
.. |2| image::  /media/ambd_arduino/HTTP_Use_IFTTT_For_Web_Service/image2.png
   :width: 942
   :height: 137
   :scale: 50 %
.. |3| image::  /media/ambd_arduino/HTTP_Use_IFTTT_For_Web_Service/image3.png
   :width: 961
   :height: 764
   :scale: 50 %
.. |4| image::  /media/ambd_arduino/HTTP_Use_IFTTT_For_Web_Service/image5.png
   :width: 1071
   :height: 610
   :scale: 50 %
.. |5| image::  /media/ambd_arduino/HTTP_Use_IFTTT_For_Web_Service/image6.png
   :width: 960
   :height: 855
   :scale: 50 %
.. |6| image::  /media/ambd_arduino/HTTP_Use_IFTTT_For_Web_Service/image7.png
   :width: 958
   :height: 766
   :scale: 50 %
.. |7| image::  /media/ambd_arduino/HTTP_Use_IFTTT_For_Web_Service/image8.png
   :width: 960
   :height: 742
   :scale: 50 %
.. |8| image::  /media/ambd_arduino/HTTP_Use_IFTTT_For_Web_Service/image9.png
   :width: 954
   :height: 574
   :scale: 80 %
.. |9| image::  /media/ambd_arduino/HTTP_Use_IFTTT_For_Web_Service/image10.png
   :width: 927
   :height: 785
   :scale: 50 %
.. |10| image::  /media/ambd_arduino/HTTP_Use_IFTTT_For_Web_Service/image11.png
   :width: 934
   :height: 857
   :scale: 50 %
.. |11| image::  /media/ambd_arduino/HTTP_Use_IFTTT_For_Web_Service/image16.png
   :width: 716
   :height: 867
   :scale: 80 %
.. |12| image::  /media/ambd_arduino/HTTP_Use_IFTTT_For_Web_Service/image13.png
   :width: 944
   :height: 433
   :scale: 50 %
.. |13| image::  /media/ambd_arduino/HTTP_Use_IFTTT_For_Web_Service/image14.png
   :width: 941
   :height: 486
   :scale: 50 %
.. |14| image::  /media/ambd_arduino/HTTP_Use_IFTTT_For_Web_Service/image15.png
   :width: 1337
   :height: 615
   :scale: 50 %
.. |15| image::  /media/ambd_arduino/HTTP_Use_IFTTT_For_Web_Service/image17.png
   :width: 770
   :height: 378
   :scale: 70 %
.. |16| image::  /media/ambd_arduino/HTTP_Use_IFTTT_For_Web_Service/image18.png
   :width: 1075
   :height: 423
   :scale: 60 %