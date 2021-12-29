.. amebaDocs documentation master file, created by
   sphinx-quickstart on Fri Dec 18 01:57:15 2020.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

##########################################
[RTL8722CSM] [RTL8722DM] WiFi - WiFi Scan
##########################################

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Materials**
:raw-html:`</p>`

* Ameba x 1

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Steps**
:raw-html:`</p>`

WiFi Scan function can help us quickly discover what WiFi networks are available in our surrounding. 

This example does not require any additional hardware, thus simply copy, and paste the following code into REPL to see its effect.

.. code-block:: python  
   :linenos:
   
   from wireless import WLAN
   wifi = WLAN(mode = WLAN.STA)
   wifi.scan()