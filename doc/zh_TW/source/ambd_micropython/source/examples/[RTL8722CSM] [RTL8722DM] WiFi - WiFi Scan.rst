.. amebaDocs documentation master file, created by
   sphinx-quickstart on Fri Dec 18 01:57:15 2020.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

==========================================
[RTL8722CSM] [RTL8722DM] WiFi - WiFi Scan
==========================================

**Materials**

* Ameba x 1

**Steps**

WiFi Scan function can help us quickly discover what WiFi networks are available in our surrounding. This example does not require any additional hardware, thus simply copy, and paste the following code into REPL to see its effect.
.. code-block:: html
   :linenos:
   
   from wireless import WLAN
   wifi = WLAN(mode = WLAN.STA)
   wifi.scan()

