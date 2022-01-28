Class BLEHIDDevice
====================

**BLEHIDDevice Class**

**Description**

A class used for creating and managing HID over GATT Profile (HOGP)
services.

| **Syntax**
| class BLEHIDDevice

**Members**

+-----------------------------------------------------------------------+
| **Public Constructors**                                               |
+=======================================================================+
| The public constructor should not be used as this class is intended   |
| to be a singleton class. Access member functions using the object     |
| instance named BLEHIDDev.                                             |
+-----------------------------------------------------------------------+

+---------------------------+------------------------------------------+
| **Public Methods**        |                                          |
+===========================+==========================================+
| BLEHIDDevice::init        | Initialize the HID Device Profile by     |
|                           | creating the required services           |
+---------------------------+------------------------------------------+
| BLEHIDD                   | Configure the number of HID output       |
| evice::setNumOutputReport | reports                                  |
+---------------------------+------------------------------------------+
| BLEHID                    | Configure the number of HID input        |
| Device::setNumInputReport | reports                                  |
+---------------------------+------------------------------------------+
| B                         | Configure the HID report map             |
| LEHIDDevice::setReportMap |                                          |
+---------------------------+------------------------------------------+
| BLEHIDDevice::inputReport | Send a HID input report                  |
+---------------------------+------------------------------------------+
| BLEHIDDevice              | Set a user callback function for         |
| ::setOutputReportCallback | receiving HID output reports             |
+---------------------------+------------------------------------------+
| BLEHIDD                   | Send a HID boot keyboard input report    |
| evice::bootKeyboardReport |                                          |
+---------------------------+------------------------------------------+
| BLEHIDDevice::setHidInfo  | Set HID info of the HID service          |
+---------------------------+------------------------------------------+
| B                         | Set battery level info of the Battery    |
| LEHIDDevice::setBattLevel | service                                  |
+---------------------------+------------------------------------------+
| BLEHIDDevice::setPNPInfo  | Set PNP information of the Device        |
|                           | Information service                      |
+---------------------------+------------------------------------------+
| BLEHIDDevi                | Set manufacturer information of the      |
| ce::setManufacturerString | Device Information service               |
+---------------------------+------------------------------------------+
| BLE                       | Set model information of the Device      |
| HIDDevice::setModelString | Information service                      |
+---------------------------+------------------------------------------+
| BLEHIDDevice::hidService  | Get reference to HID service             |
+---------------------------+------------------------------------------+
| BLE                       | Get reference to Device Information      |
| HIDDevice::devInfoService | service                                  |
+---------------------------+------------------------------------------+
| BLEHIDDevice::battService | Get reference to Battery service         |
+---------------------------+------------------------------------------+

**BLEHIDDevice::init**

| **Description**
| Initialize the HID Device profile by creating the required services.

| **Syntax**
| void init(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: BLEHIDGamepad

| **Notes and Warnings**
| The HID Device object should be initialized before any HID reports can
  be sent.

**BLEHIDDevice::setNumOutputReport**

| **Description**
| Configure the number of HID output reports.

| **Syntax**
| void setNumOutputReport (uint8_t numOutputReports);

| **Parameters**
| numOutputReports: number of output reports

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| The number of output reports should be configured before BLEHIDDevice
  init() function is called.

**BLEHIDDevice::setNumInputReport**

| **Description**
| Configure the number of HID input reports.

| **Syntax**
| void setNumInputReport (uint8_t numInputReports);

| **Parameters**
| numInputReports: number of input reports

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| The number of input reports should be configured before BLEHIDDevice
  init() function is called.

**BLEHIDDevice::setReportMap**

| **Description**
| Configure the HID report map characteristic with a HID report
  descriptor.

| **Syntax**
| void setReportMap (uint8_t\* report_map, uint16_t len);

| **Parameters**
| report_map: pointer to HID report descriptor
| len: HID report descriptor length in bytes

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: BLEHIDGamepad

| **Notes and Warnings**
| The HID report map characteristic can only be configured after
  BLEHIDDevice init() function is called.

**BLEHIDDevice::inputReport**

| **Description**
| Send a HID input report.

| **Syntax**
| void inputReport (uint8_t reportID, uint8_t\* data, uint16_t len,
  uint8_t conn_id);

| **Parameters**
| reportID: HID report ID of input report
| data: pointer to HID input report data to send
| len: length of HID input report data in bytes
| conn_id: connection ID of device to send HID report to

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| HID input reports can only be sent after BLEHIDDevice init() function
  has been called.

**BLEHIDDevice::setOutputReportCallback**

| **Description**
| Set a user callback function for receiving HID output report data.

| **Syntax**
| void setOutputReportCallback (uint8_t reportID, void (\*fCallback)
  (BLECharacteristic\* chr, uint8_t conn_id));

| **Parameters**
| reportID: HID report ID of output report to link callback function
  with
| chr: BLECharacteristic class object containing received HID output
  report data
| conn_id: connection ID of device which sent HID report data

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| Setting a user callback function for output reports can only occur
  after BLEHIDDevice init() function has been called.

**BLEHIDDevice::bootKeyboardReport**

| **Description**
| Send a HID boot keyboard input report.

| **Syntax**
| void bootKeyboardReport (uint8_t\* data, uint16_t len, uint8_t
  conn_id);

| **Parameters**
| data: pointer to HID input report data to send
| len: length of HID input report data in bytes
| conn_id: connection ID of device to send HID report to

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| By default, the HID service Protocol Mode characteristic has boot mode
  disabled. To send boot keyboard input reports, the Protocol Mode
  characteristic needs to have boot mode enabled.

**BLEHIDDevice::setHidInfo**

| **Description**
| Set data of the HID Info characteristic of the HID service.

| **Syntax**
| void setHidInfo (uint16_t bcd, uint8_t country, uint8_t flags);

| **Parameters**
| bcd: 16-bit unsigned integer representing version number of base USB
  HID Specification implemented by HID Device
| country: 8-bit integer identifying country HID Device hardware is
  localized for. Most hardware is not localized (value 0x00).
| flags: Bit flags indicating remote-wake capability and advertising
  when bonded but not connected.

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| For detailed information on the characteristic, refer to Bluetooth SIG
  HID Service specifications.

**BLEHIDDevice::setBattLevel**

| **Description**
| Set battery level data of the Battery service.

| **Syntax**
| void setBattLevel (uint8_t level);

| **Parameters**
| level: battery level expressed as % of full charge

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| Battery level is set to 100% by default. For detailed information
  refer to Bluetooth SIG Battery service specifications.

**BLEHIDDevice::setPNPInfo**

| **Description**
| Set PNP data of the Device Information service.

| **Syntax**
| void setPNPInfo (uint8_t sig, uint16_t vid, uint16_t pid, uint16_t
  version);

| **Parameters**
| sig: The Vendor ID Source field designates which organization assigned
  the value used in the Vendor ID field value.
| vid: The Vendor ID field is intended to uniquely identify the vendor
  of the device.
| pid: The Product ID field is intended to distinguish between different
  products made by the vendor.
| version: The Product Version field is a numeric expression identifying
  the device release number in Binary-Coded Decimal.

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| By default, sig and vid are configured to indicate Realtek as the
  vendor. For detailed information refer to Bluetooth SIG Device
  Information service specifications.

**BLEHIDDevice::setManufacturerString**

| **Description**
| Set manufacturer information of the Device Information service.

| **Syntax**
| void setManufacturerString (const char\* manufacturer);

| **Parameters**
| manufacturer: pointer to character string containing manufacturer name
  info.

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| Manufacturer is set to “Realtek” by default. For detailed information
  refer to Bluetooth SIG Device Information service specifications.

**BLEHIDDevice::setModelString**

| **Description**
| Set model information of the Device Information service.

| **Syntax**
| void setModelString (const char\* model);

| **Parameters**
| model: pointer to character string containing device model info.

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| Model is set to “Ameba_BLE_HID” by default. For detailed information
  refer to Bluetooth SIG Device Information service specifications.

**BLEHIDDevice::hidService**

| **Description**
| Get reference to HID service

| **Syntax**
| BLEService& hidService ();

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns a reference to the BLEService class object for
  the HID service.

| **Example Code**
| Example: BLEHIDMouse

| **Notes and Warnings**
| NA

**BLEHIDDevice::devInfoService**

| **Description**
| Get reference to Device Information service

| **Syntax**
| BLEService& devInfoService ();

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns a reference to the BLEService class object for
  the Device Information service.

| **Example Code**
| Example: BLEHIDMouse

| **Notes and Warnings**
| NA

**BLEHIDDevice::battService**

| **Description**
| Get reference to Battery service

| **Syntax**
| BLEService& battService ();

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns a reference to the BLEService class object for
  the Battery service.

| **Example Code**
| Example: BLEHIDMouse

| **Notes and Warnings**
| NA

 
