.. amebaDocs documentation master file, created by
   sphinx-quickstart on Fri Dec 18 01:57:15 2020.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

============================================
[RTL8722CSM] [RTL8722DM] WiFi - WiFi Connect
============================================

**Materials**

* Ameba x 1

**Steps**

Ameba can connect to WiFi access point with open security or WPA2 security type, which is the most common security type used in household wireless routers. Here we are going to connect to a WiFi access point using code below, copy and paste the following code line by line into REPL to see their effects.

.. code-block:: html
   :linenos:
   
   from wireless import WLAN
   wifi = WLAN(mode = WLAN.STA)
   wifi.connect(ssid = "YourWiFiName", pswd = "YourWiFiPassword")

