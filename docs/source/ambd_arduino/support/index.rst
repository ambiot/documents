:orphan:

.. amebaDocs documentation master file, created by
   sphinx-quickstart on Fri Dec 18 01:57:15 2020.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

#######
Support
#######

****
FAQ
****

.. admonition:: Where to buy Ameba RTL8722DM Board?
   :class: dropdown, toggle

    Refer to `Purchase link <https://www.amebaiot.com/where-to-buy-link/#buy_amb21>`__.


.. admonition:: Which Bluetooth standards are supported by RTL8722CSM/RTL8722DM?
   :class: dropdown, toggle

    Both boards support BLE 5.0. Classic Bluetooth (BR/EDR) is not supported.

.. admonition:: Which BLE roles are supported?
   :class: dropdown, toggle

    RTL8722CSM/RTL8722DM can operate as either a BLE Central or BLE Peripheral device.


.. admonition:: Are all pins on RTL8722CSM/RTL8722DM usable?
   :class: dropdown, toggle

    No, those marked ``NC`` are not connected to any pin and thus unusable.

.. admonition:: Is XIP (execute in place) supported on RTL8722CSM/RTL8722DM? 
   :class: dropdown, toggle

    Yes, it is supported.

.. admonition:: Does RTL8722CSM support 5G WiFi?
   :class: dropdown, toggle

    No. Only RTL8722DM supports dual band 2.4G + 5G WiFi. RTL8722CSM only supports single band 2.4G WiFi.

.. admonition:: How to enter the download mode?
   :class: dropdown, toggle

    Press and hold the UART DOWNLOAD button. Then Press the RESET button and release both UART DOWNLOAD and RESET buttons.

----

*****************
Trouble shooting
*****************

.. admonition:: RTL8722CSM/RTL8722DM cannot be found as a Bluetooth device.
   :class: dropdown, toggle

    Please make sure the antenna is connected properly. Check your code for the correct Bluetooth configurations.

.. admonition:: My code is not behaving as I expected.
   :class: dropdown, toggle

    Try to debug your program using ``printf()`` and ``Serial.print()`` statements.
    If the issue persists, you can ask for help at `Forums <https://forum.amebaiot.com/>`__

.. admonition:: Why is there no output on my serial terminal after connecting to RTL8722CSM/RTL8722DM UART?
   :class: dropdown, toggle

    RTL8722CSM/RTL8722DM is by default configured at 115200 baudrate, please check if your serial terminal is configured to 115200.


.. admonition:: My program is not being downloaded into RTL8722CSM/RTL8722DM?
   :class: dropdown, toggle

    Please follow the procedure for the correct downloading：
       1. Enter the download mode. The on-board Green LED will blink when entered download mode.
       2. When downloading the image into board the on-board Red LED will blink
       3. After a successful download, you will see log like this “All images sent successfully”.


.. admonition:: Sometimes WiFi signal is weak?
   :class: dropdown, toggle

    The default antenna for RTL8722CSM/RTL8722DM uses the I-Pex Connector. Please change/connect the I-Pex Connector antenna.


.. admonition:: Why is my board not powering up?
   :class: dropdown, toggle

    Please make sure the connector J38 beside resistor R43 is connected. The connector is used to link the power to IC.


.. admonition:: If you have driver issue to connect board to your computer?
   :class: dropdown, toggle

    Please go to https://ftdichip.com/drivers/ for USB driver.