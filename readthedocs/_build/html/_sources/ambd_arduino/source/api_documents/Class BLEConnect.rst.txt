Class BLEConnect
=================
**BLEConnect Class**

| **Description**
| A class used for managing BLE connection settings.

| **Syntax**
| class BLEConnect

**Members**

+----------------------------------------------------------------------+
| **Public Constructors**                                              |
+======================================================================+
| No public constructor is available as this class is intended to be a |
| singleton class. You can get a pointer to this class using           |
| BLEDevice::configConnection.                                         |
+----------------------------------------------------------------------+

+------------------------------+--------------------------------------+
| **Public Methods**           |                                      |
+==============================+======================================+
| BLEConnect::connect          | Connect to a target BLE device       |
+------------------------------+--------------------------------------+
| BLEConnect::disconnect       | Disconnect from a target BLE device  |
+------------------------------+--------------------------------------+
| BLEConnect::setScanInterval  | Set the BLE scanning interval when   |
|                              | connecting                           |
+------------------------------+--------------------------------------+
| BLEConnect::setScanWindow    | Set the BLE scanning window when     |
|                              | connecting                           |
+------------------------------+--------------------------------------+
| BLEConnect::setConnInterval  | Set the BLE connection interval      |
|                              | duration                             |
+------------------------------+--------------------------------------+
| BLEConnect::setConnLatency   | Set the BLE connection slave latency |
+------------------------------+--------------------------------------+
| BLEConnect::setConnTimeout   | Set the BLE connection timeout value |
+------------------------------+--------------------------------------+
| BLEConnect::updateConnParams | Send new BLE connection parameters   |
|                              | to a connected device                |
+------------------------------+--------------------------------------+
| BLEConnect::getConnInfo      | Get connection information           |
+------------------------------+--------------------------------------+
| BLEConnect::getConnAddr      | Get the Bluetooth address for a      |
|                              | certain connection                   |
+------------------------------+--------------------------------------+
| BLEConnect::getConnId        | Get the connection ID for a certain  |
|                              | device                               |
+------------------------------+--------------------------------------+

**BLEConnect::connect**

| **Description**
| Connect to a target BLE device.

| **Syntax**
| bool connect(char\* btAddr, T_GAP_REMOTE_ADDR_TYPE destAddrType,
  uint16_t scanTimeout);
| bool connect(uint8_t (&btAddr)[6], T_GAP_REMOTE_ADDR_TYPE
  destAddrType, uint16_t scanTimeout);
| bool connect(BLEAdvertData targetDevice, uint16_t scanTimeout);
| bool connect(BLEAddr destAddr, T_GAP_REMOTE_ADDR_TYPE destAddrType,
  uint16_t scanTimeout);

| **Parameters**
| char\* btAddr: target device Bluetooth address expressed as a
  character string.
| uint8_t (&btAddr): target device Bluetooth address contained in a 6
  byte array.
| destAddr: target device Bluetooth address contained in BLEAddr class
  object.
| targetDevice: advertising data packet scanned from target device.
| destAddrType: Bluetooth address type of target device. Valid values:
| – GAP_REMOTE_ADDR_LE_PUBLIC
| – GAP_REMOTE_ADDR_LE_RANDOM
| scan timeout: duration in milliseconds for which to look for target
  device before giving up.

| **Returns**
| True if connection successful, false if connection failed.

| **Example Code**
| Example: BLEBatteryClient

| **Notes and Warnings**
| NA
|  

**BLEConnect::disconnect**

| **Description**
| Disconnect from a target BLE device.

| **Syntax**
| bool disconnect(uint8_t connId);

| **Parameters**
| connId: connection ID for target device.

| **Returns**
| True if operation successful, false if otherwise.

| **Example Code**
| NA

| **Notes and Warnings**
| NA
|  

**BLEConnect::setScanInterval**

| **Description**
| Set the BLE scan interval when searching for a target device to
  connect to.

| **Syntax**
| void setScanInterval(uint16_t scanInt_ms);

| **Parameters**
| scanInt_ms: scan interval in milliseconds. Value range of 3 to 10240.

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| NA
|  

**BLEConnect::setScanWindow**

| **Description**
| Set the BLE scan window when searching for a target device to connect
  to.

| **Syntax**
| void setScanWindow(uint16_t scanWindow_ms);

| **Parameters**
| scanWindow_ms: scan window in milliseconds. Value range of 3 to 10240.

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| NA
|  

**BLEConnect::setConnInterval**

| **Description**
| Set the BLE connection interval value.

| **Syntax**
| void setConnInterval(uint16_t min_ms, uint16_t max_ms);

| **Parameters**
| min_ms: minimum acceptable connection interval in milliseconds. Value
  range of 8 to 4000.
| max_ms: maximum acceptable connection interval in milliseconds. Value
  range of 8 to 4000.

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| The BLE connection interval defines the period between successive
  connection events between a connected central and peripheral device.
  Even if there is no data to exchange, a connection event is required
  to maintain the connection. max_ms should be larger than or equal to
  min_ms.
|  

**BLEConnect::setConnLatency**

| **Description**
| Set the BLE connection slave latency value.

| **Syntax**
| void setConnLatency(uint16_t latency);

| **Parameters**
| latency: Connection slave latency value. Value range of 0 to 499.

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| The BLE connection slave latency defines the number of successive
  connection events a connected peripheral device can ignore without
  being considered as disconnected by the central device.
|  

**BLEConnect::setConnTimeout**

| **Description**
| Set the BLE connection timeout value.

| **Syntax**
| void setConnTimeout(uint16_t timeout_ms);

| **Parameters**
| timeout_ms: connection timeout in milliseconds. Value range of 100 to
  32000.

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| The BLE connection timeout defines the duration after a failed
  connection events before a peripheral or central device considers the
  connection broken.
|  

**BLEConnect::updateConnParams**

| **Description**
| Update a connected device with new connection parameters.

| **Syntax**
| void updateConnParams(uint8_t conn_id);

| **Parameters**
| conn_id: connection ID of target device to update connection
  parameters.

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| Update a connected device with previously set connection interval,
  slave latency and timeout values. The connected device may reject the
  new values if it is unable to conform to them.
|  

**BLEConnect::getConnInfo**

| **Description**
| Get connection information.

| **Syntax**
| bool getConnInfo(uint8_t connId, T_GAP_CONN_INFO \*pConnInfo);

| **Parameters**
| connId: connection ID to get connection information from.
| pConnInfo: pointer to T_GAP_CONN_INFO structure to store obtained
  connection information.

| **Returns**
| True if operation success, false if operation failed.

| **Example Code**
| NA

| **Notes and Warnings**
| NA
|  

**BLEConnect::getConnAddr**

| **Description**
| Get the Bluetooth address for a certain connection.

| **Syntax**
| bool getConnAddr(uint8_t connId, uint8_t\* addr, uint8_t\* addrType);

| **Parameters**
| connId: connection ID to get address information for
| addr: pointer to 6 byte array to store retrieved Bluetooth address
| addrType: pointer to uint8_t variable to store retrieved Bluetooth
  address type

| **Returns**
| True if operation success, false if operation failed.

| **Example Code**
| NA

| **Notes and Warnings**
| NA
|  

**BLEConnect::getConnId**

| **Description**
| Get the connection ID for a certain device.

| **Syntax**
| int8_t getConnId(char\* btAddr, uint8_t addrType);
| int8_t getConnId(uint8_t\* btAddr, uint8_t addrType);
| int8_t getConnId(BLEAdvertData targetDevice);

| **Parameters**
| char\* btAddr: target device Bluetooth address expressed as a
  character string.
| uint8_t\* btAddr: pointer to a 6 byte array containing target device
  Bluetooth address.
| targetDevice: advertising data packet scanned from target device.
| addrType: Bluetooth address type of target device. Valid values:
| – GAP_REMOTE_ADDR_LE_PUBLIC
| – GAP_REMOTE_ADDR_LE_RANDOM

| **Returns**
| The function returns the requested connection ID. Returns -1 if failed
  to obtain connection ID.

| **Example Code**
| Example: BLEBatteryClient

| **Notes and Warnings**
| NA
