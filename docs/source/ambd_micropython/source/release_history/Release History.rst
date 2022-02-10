##################
Release History
##################

**Version 1.0.2 release - 2021/10/14**

* Feature:
  
  * Add MacOS toolchain to support building on MacOS
  * Pre-test passed for RTL8722DM MINI

* API Updates:

  * Update PWM module with new API
  * Re-structure SDFS module and remove warning when no SD card

* Misc
  
  * Update WLAN and other libraries
  * Update readme documentation

----

**Version 1.0.1 release - 2021/06/07**

* Feature:

  * Added MacOS Support for firmware uploading (not compilation)
  * Fixed PWM API issue with loop
  * Implemented SDFS (SD FileSystem) module [Currently only support RTL8722DM_mini]
  * Update welcome message and help message
  * Update Ameba SDK and libraries
  * Fixed network and WLAN security issues
  * Fix bugs related to WiFi
  * Update Readme
  * Provide examples for new module

----

**Version 1.0.0 release - 2020/11/11**

* Feature:

  * OS Support Windows and Linux
  * WiFi
  * Socket
  * ADC
  * builtin help
  * Example and online API

----

**Version 0.0.1 alpha release - 2020/09/29**

* Feature:
  
  * Ported basic MicroPython functions
  * Implemented REPL and basic terminal functions
  * Added Pin Mapping for RTL8722
  * Added peripheral helper modules:

   * GPIO
   * RTC
   * Time and Delay
   * PWM
   * Timer
   * UART
   * I2C
   * SPI