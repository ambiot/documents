
Class BLEAdvert
==========================
**BLEAdvert Class**

| **Description**
| A class used for managing BLE advertising settings.

| **Syntax**
| class BLEAdvert

**Members**

+----------------------------------------------------------------------+
| **Public Constructors**                                              |
+======================================================================+
| No public constructor is available as this class is intended to be a |
| singleton class. You can get a pointer to this class using           |
| BLEDevice::configAdvert().                                           |
+----------------------------------------------------------------------+

+-------------------------------+-------------------------------------+
| **Public Methods**            |                                     |
+===============================+=====================================+
| BLEAdvert::updateAdvertParams | Update the current BLE              |
|                               | advertisement settings to the lower |
|                               | Bluetooth stack                     |
+-------------------------------+-------------------------------------+
| BLEAdvert::startAdv           | Start BLE advertising               |
+-------------------------------+-------------------------------------+
| BLEAdvert::stopAdv            | Stop BLE advertising                |
+-------------------------------+-------------------------------------+
| BLEAdvert::setAdvType         | Set the BLE advertising type        |
+-------------------------------+-------------------------------------+
| BLEAdvert::setMinInterval     | Set the BLE advertising minimum     |
|                               | interval                            |
+-------------------------------+-------------------------------------+
| BLEAdvert::setMaxInterval     | Set the BLE advertising maximum     |
|                               | interval                            |
+-------------------------------+-------------------------------------+
| BLEAdvert::setAdvData         | Set BLE advertising data            |
+-------------------------------+-------------------------------------+
| BLEAdvert::setScanRspData     | Set BLE scan response data          |
+-------------------------------+-------------------------------------+

**BLEAdvert::updateAdvertParams**

| **Description**
| Update the lower Bluetooth stack with the current advertising
  settings.

| **Syntax**
| void updateAdvertParams(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| Please use the other class member functions to set the BLE advertising
  parameters first before using this function.
|  

**BLEAdvert::startAdv**

| **Description**
| Start BLE advertising.

| **Syntax**
| void startAdv(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| This function is provided for flexibility in controlling and updating
  BLE advertising parameters. You should avoid using this function to
  directly start the BLE advertising process without first registering
  the necessary callback and handler functions. Call
  BLEDevice::beginPeripheral() to register the necessary functions and
  start advertising for the first time.
|  

**BLEAdvert::stopAdv**

| **Description**
| Stop BLE advertising.

| **Syntax**
| void stopAdv(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| This function is provided for flexibility in controlling and updating
  BLE advertising parameters. You should avoid using this function to
  directly stop the BLE advertising process. Call BLEDevice::end() to
  stop advertising and free up used resources.
|  

**BLEAdvert::setAdvType**

| **Description**
| Set the BLE advertising type.

| **Syntax**
| void setAdvType(uint8_t advType);

| **Parameters**
| advType: the desired advertisement type. Valid values:
| – 0 = GAP_ADTYPE_ADV_IND : connectable undirected advertisement
| – 1 = GAP_ADTYPE_ADV_HDC_DIRECT_IND : connectable high duty cycle
  directed
| – 2 = GAP_ADTYPE_ADV_SCAN_IND : scannable undirected advertisement
| – 3 = GAP_ADTYPE_ADV_NONCONN_IND : Non-connectable undirected
  advertisement
| – 4 = GAP_ADTYPE_ADV_LDC_DIRECT_IND : connectable low duty cycle
  directed advertisement

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: BLEBatteryService

| **Notes and Warnings**
| Call this function with the GAP_ADTYPE_ADV_IND argument if connection
  requests should be allowed, and GAP_ADTYPE_ADV_NONCONN_IND if all
  connection requests should be rejected.
|  

**BLEAdvert::setMinInterval**

| **Description**
| Set the minimum BLE advertising interval.

| **Syntax**
| void setMinInterval(uint16_t minInt_ms);

| **Parameters**
| minInt_ms: the desired advertisement minimum interval, expressed in
  milliseconds. The valid values for the interval are from 20ms to
  10240ms.

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| BLE advertisements will repeat with an interval between the set
  minimum and maximum intervals. Set a shorter interval for the BLE
  device to be discovered rapidly and set a longer interval to conserve
  power.
|  

**BLEAdvert::setMaxInterval**

| **Description**
| Set the maximum BLE advertising interval.

| **Syntax**
| void setMaxInterval(uint16_t minInt_ms);

| **Parameters**
| minInt_ms: the desired advertisement maximum interval, expressed in
  milliseconds. The valid values for the interval are from 20ms to
  10240ms.

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| BLE advertisements will repeat with an interval between the set
  minimum and maximum intervals. Set a shorter interval for the BLE
  device to be discovered rapidly and set a longer interval to conserve
  power.
|  

**BLEAdvert::setAdvData**

| **Description**
| Set BLE advertising data.

| **Syntax**
| void setAdvData(BLEAdvertData adData);
| void setAdvData(uint8_t\* pData, uint8_t size);

| **Parameters**
| adData: scan response data formatted in a BLEAdvertData class object
| pData: pointer to a byte array containing the required scan response
  data.
| size: number of bytes the scan response data contains, maximum of 31
  bytes.

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| N/A
|  

**BLEAdvert::setScanRspData**

| **Description**
| Set BLE scan response data.

| **Syntax**
| void setScanRspData(BLEAdvertData adData);
| void setScanRspData(uint8_t\* pData, uint8_t size);

| **Parameters**
| adData: scan response data formatted in a BLEAdvertData class object
| pData: pointer to a byte array containing the required scan response
  data.
| size: number of bytes the scan response data contains, maximum of 31
  bytes.

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| N/A
