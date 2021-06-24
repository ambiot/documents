===================================
Trouble shooting
===================================

`RTL8722CSM/RTL8722DM cannot be found as a Bluetooth
device <https://www.amebaiot.com/en/arduino-amebad-faq/>`__

Please make sure the antenna is connected properly. Check your code for
the correct Bluetooth configurations.

`My code is not behaving as I
expected. <https://www.amebaiot.com/en/arduino-amebad-faq/>`__

Try to debug your program using printf and Serial.print statements. If
the issue persists, you can ask for help
at `Forums <https://forum.amebaiot.com/>`__

`Why is there no output on my serial terminal after connecting to
RTL8722CSM/RTL8722DM
UART? <https://www.amebaiot.com/en/arduino-amebad-faq/>`__

RTL8722CSM/RTL8722DM is by default configured at 115200 baud rate,
please check if your serial terminal is configured to 115200.

`My program is not being downloaded into
RTL8722CSM/RTL8722DM <https://www.amebaiot.com/en/arduino-amebad-faq/>`__

| Please follow the procedure for the correct downloading.
| 1. Enter the download mode. The on board Green LED will blink when
  entered download mode.
| 2. When downloading the image into board the on board Red LED will
  blink
| 3. When success downloaded, Arduino IDE will show notification.

`Sometimes WiFi signal is
weak <https://www.amebaiot.com/en/arduino-amebad-faq/>`__

The default antenna for RTL8722CSM/RTL8722DM uses the I-Pex Connector.
Please change/connect the I-Pex Connector antenna.

`Why is my board not powering
up? <https://www.amebaiot.com/en/arduino-amebad-faq/>`__

Please make sure the connector J38 beside resistor R43 is connected. The
connector is used to link the power to IC.
