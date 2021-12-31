##################
Release History
##################

**Version 3.1.1 - 2021/12/25**

* Feature:
  
  - Add BLE HID and examples
  - BLEHIDGamepad, BLEHIDKeyboard, and BLEHIDMouse
  - Update PowerSave examples
  - Support RTL8722DM MINI and RTL8720DN/BW16
  - Enable LwIP hostname edit

* API Updates:
  
  - Update API for PowerSave
  - Update ameba_d_tools 1.0.7 for all 3 platforms
  - Support RTL8720DN/BW16 and RTL8722DM MINI
  - Add more Aon wake up pins
  - Update API for IR
  - Removed requirement to define both IR TX and RX pins in IRDevice::begin
  - Removed previous limit on number of time durations IRDevice::send can accept
  - Update GPIO Int
  - Enable INPUT_IRQ_CHANGE
  - Add definition inside wiring_constants.h and wiring_digital.c, also complete the TODO part for attachInterrupt() as well
  - Update UART, for RTL8720DN/BW16 not showing log issue
  - Fix wrong attribute permissions for characteristic CCCD descriptor. Remove unused variable warnings
  - Update GTimer, for the internal timer ID validation test
  - Updated SPI connection for RTL8720DN/BW16
  - Update Google_Cloud_IoT example with new Google TLS cert
  - Update Analog Pin remove A0 and A1
  - Update Platform.txt for Windows OS with User Name having a space in between
  - Update all libs

* Misc:

  - Update AmebaEink.zip, SPI connection for RTL8720DN/BW16
  - Add Autoflash_patch folder
  - Update the Fritzing of RTL8720DN/BW16, remove A0 and A1

----

**Version 3.1.0 - 2021/11/05**

* Feature:
  
  * Support board RTL8720DN(BW16)
  * Add WiFiControlCar example
  * Add Arduboy zip library
  * Add WPA3 support
  * Add Amebad_HMI_MQTT zip library
  * Add support for IPV6 wiht 4 examples
  * WLAN lib update
  * Minor bug fix

* API Updates:

  * Support Microsoft Azure IoT cloud
  * Enable “strnlen” from rom
  * Add “#define yield” for compilation
  * Update PubSubClient lib
  * Update APIs for RTL8720DN(BW16) (SPI, I2C, Fatfs, Audiocodec and UART
  * Update jtag enable functions
  * Update wifi security option
  * Remove the unused libs lib_wifi_fw.a lib_wifi_ucps_fw.a
  * Update watchdog
  * Update AudioCodec
  * Pin mapping updates
  * Remove unused marcos
  * RTL8720DN(BW16) related naming update for all examples
  * Update PowerSave

* Misc
  
  * Add RTL8720DN_BW16 frizting folder
  * Move RTL8720DN_BW16 frizting files to correct folder
  * Rename folder name to short the length of path
  * Add Offline_SDK_installation_tool (Windows, Linux and MacOS)
  * Update linux tools for compatibility issue
  * Update RTL8722DM MINI and RTL8720DN(BW16) Fritzing and Pinmux
  * Update ameba_d_tools V1.0.6
  * Add Image_Releated folder
  * Correct the core from Cortex-M4 to Cortex-M33

----

**Version 3.0.11 - 2021/10/26**

* Feature:
  
  * Add example, FatfsSDIO - Read and open HTML file from SD card

* API Updates:

  * RTL8720DN/BW16 related compatibility update for all examples

* Misc
  
  * Update RTL8722DM MINI and RTL8720DN Fritzing and Pinmux

----

**Version 3.0.10 - 2021/09/22**

* Feature:
  
  * Add AudioCodec wav examples

* API Updates:

  * Pin mapping updates for RTL8722DM MINI
  * Remove unused marcos
  * Update platform.txt for bin files process
  * rollback for “wifi.h” update
  * Minor bug fix patch
  
----

**Version 3.0.9 - 2021/09/13**

* API Updates:

  * Pin mapping updates
  * Remove unused marcos
  * “wifi.h” related files change to “Amebawifi.h”
  
----

**Version 3.0.8 - 2021/05/06**

* Feature:

  * Add RTL8722DM_mini board
  * Add fatfs for SD card
  * Add AudioCodec
  * Add TensorFlow lite support with examples
  * Add zip libraries for TensorFlow lite support
  * Update SDK for supporting Arduino IDE 2.0
  * Update wlan lib

* API Updates:

  * Update zip libraries of Eink
  * ADC updates, Change calculation method to use EFUSE calibration parameters and SDK formula to improve accuracy
  * writing_analog updates, minor bug fix and support for mini board
  * SPI updates, minor bug fix and support for mini board
  * I2S updates, minor bug fix and support for mini board
  * IRDevice updates, minor bug fix

----

**Version 3.0.7 - 2020/11/19**

* Feature:

  * Add AmebaIRDevice example IRSendSONY
  * Update Ameba Arduino IRDevice API
  * Update Ameba Arduino SSL related API
  * Update Ameba Arduino Wlan API to support static IP function

----

**Version 3.0.6 - 2020/10/28**

* Feature:

  * Add Ameba RTC support
  * Add AmebaRTC example RTC and RTCAlarm
  * Add Ameba Watchdog support
  * Add AmebaWatchdog example WatchdogTimer
  * Update Ameba BLE support
  * Add AmebaBLE example BLEUartService, DHT_over_BLEUart
  * Update Ameba Wlan library
  * Update Ameba Wlan SDK structure, add AP mode hidden SSID support

----

**Version 3.0.5 - 2020/09/09**

* Feature:

  * Build in tool updates V1.0.4
  * Add zip lib AmebaEink
  * Add AmebaEink example EinkDisplayImage, EinkDisplayQR, and EinkDisplayText
  * Add google cloud examples
  * Update Amazon AWS related examples
  * Add power save support
  * Add AmebaPowerSave example TicklessMode, DeepSleepMode, DeepSleep_DHT_LCD_Example, and DeepSleep_DHT_Eink_Example

----

**Version 3.0.4 - 2020/07/27**

* Feature:

  * Update BLE library. Add example BLEBatteryClient and BLEWIfiConfig
  * Update from polarssl to mbedtls 2.4.0

----

**Version 3.0.3 - 2020/07/03**

* Feature:

  * Build in Image tool updates V1.0.3
  * Upload log clean up

----

**Version 3.0.2 - 2020/06/30**

* Feature:

  * Windows, Linux and macOS X support
  * Build in Image tool updates

----
  
**Version 3.0.1 - 2020/05/15**

* Feature:

  * Official release of AmebaD Arduino SDK
  * warning cleaning
  * I2C lib updates

----

**Version 3.0.0 - 2020/05/01**

* Feature:

  * Support Boards Manager and Arduino IDE development
  * WiFi scan AP, connect to AP, TCP Server/Client, including 5G
  * Bluetooth, BLE
  * GPIO digital in/out and interrupt
  * ADC analog in/out (0 ~ 3.3V)
  * PWM getting analog results with digital means
  * SPI master and slave mode
  * UART 1 for log, 2 for customize usage
  * I2C master mode