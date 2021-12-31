Class BLEScan
=================
**BLEScan Class**

| **Description**
| A class used for managing BLE scanning settings.

| **Syntax**
| class BLEScan

**Members**

+----------------------------------------------------------------------+
| **Public Constructors**                                              |
+======================================================================+
| No public constructor is available as this class is intended to be a |
| singleton class. You can get a pointer to this class using           |
| BLEDevice::configScan                                                |
+----------------------------------------------------------------------+

+---------------------------------+-----------------------------------+
| **Public Methods**              |                                   |
+=================================+===================================+
| BLEScan::updateScanParams       | Update the current BLE            |
|                                 | advertisement settings to the     |
|                                 | lower Bluetooth stack             |
+---------------------------------+-----------------------------------+
| BLEScan::startScan              | Start a BLE scan                  |
+---------------------------------+-----------------------------------+
| BLEScan::stopScan               | Stop a BLE scan                   |
+---------------------------------+-----------------------------------+
| BLEScan::setScanMode            | Set the BLE scanning mode         |
+---------------------------------+-----------------------------------+
| BLEScan::setScanInterval        | Set the BLE scanning interval     |
+---------------------------------+-----------------------------------+
| BLEScan::setScanWindow          | Set the BLE scanning window       |
+---------------------------------+-----------------------------------+
| BLEScan::setScanDuplicateFilter | Set the BLE scan duplicate filter |
+---------------------------------+-----------------------------------+
| BLEScan::scanInProgress         | Check if a scan is currently in   |
|                                 | progress                          |
+---------------------------------+-----------------------------------+
| BLEScan::printScanInfo          | Print out scanned information     |
+---------------------------------+-----------------------------------+

**BLEScan::updateScanParams**

| **Description**
| Update the lower Bluetooth stack with the current scan settings.

| **Syntax**
| void updateScanParams(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: BLEScan

| **Notes and Warnings**
| Stop any scans in progress first before using this function.
|  

**BLEScan::startScan**

| **Description**
| Start BLE scanning.

| **Syntax**
| void startScan();
| void startScan(uint32_t scanDuration_ms);

| **Parameters**
| scanDuration: BLE scan will stop after scanDuration milliseconds.

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: BLEScan

| **Notes and Warnings**
| Set the scan parameters first before starting a scan. BLE scans will
  occur continuously for the duration set with
  BLEDevice::setScanWindow() and will repeat with a time interval set
  with BLEDevice::setScanInterval(). Call this member function without
  an argument to start scanning until BLEDevice::stopScan() is called.
|  

**BLEScan::stopScan**

| **Description**
| Stop BLE scanning.

| **Syntax**
| void stopScan(void);

| **Parameters**
| The function requires no input paramter.

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| NA
|  

**BLEScan::setScanMode**

| **Description**
| Set the BLE scan mode.

| **Syntax**
| void setScanMode(uint8_t scanMode);

| **Parameters**
| scanMode: GAP_SCAN_MODE_PASSIVE for passive scanning,
  GAP_SCAN_MODE_ACTIVE for active scanning

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: BLEScan

| **Notes and Warnings**
| Active scanning will request for scan response packets after
  discovering an advertising device. Passive scanning will only capture
  advertising data packets.
|  

**BLEScan::setScanInterval**

| **Description**
| Set the BLE scan interval.

| **Syntax**
| void setScanInterval(uint16_t scanInt_ms);

| **Parameters**
| scanInt_ms: scan interval in milliseconds. Value range of 3 to 10240.

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: BLEScan

| **Notes and Warnings**
| A BLE scan will repeat with a time interval set with this member
  function.
|  

**BLEScan::setScanWindow**

| **Description**
| Set the BLE scan window.

| **Syntax**
| void setScanWindow(uint16_t scanWindow_ms);

| **Parameters**
| scanWindow_ms: scan window in milliseconds. Value range of 3 to 10240.

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: BLEScan

| **Notes and Warnings**
| A BLE scan will scan continuously for a window duration set with this
  member function. The scan window should be less than or equal to the
  scan interval.
|  

**BLEScan::setScanDuplicateFilter**

| **Description**
| Set the scan duplicate filter.

| **Syntax**
| void setScanDuplicateFilter(bool dupeFilter);

| **Parameters**
| dupeFilter: TRUE to enable duplicate filtering.

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| Enabling duplicate filters will ignore scan results for devices
  already discovered previously.
|  

**BLEScan::scanInProgress**

| **Description**
| Set the scan duplicate filter.

| **Syntax**
| bool scanInProgress(void);

| **Parameters**
| The function requires no input paramter.

| **Returns**
| TRUE if BLE scanning is in progress.

| **Example Code**
| NA

| **Notes and Warnings**
| NA
|  

**BLEScan::printScanInfo**

| **Description**
| Parse and print out scanned information.

| **Syntax**
| void printScanInfo(T_LE_CB_DATA\* p_data);

| **Parameters**
| p_data: pointer to scan data of type T_LE_CB_DATA\*

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: BLEScan

| **Notes and Warnings**
| Use this member function to parse the various fields of received
  advertisement data packets and print the results out to the serial
  monitor.
