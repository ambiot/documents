Class BLEAdvertData
=======================
**BLEAdvertData Class**

| **Description**
| A class used for managing BLE advertising data.

| **Syntax**
| class BLEAdvertData

**Members**

============================ =================================
**Public Constructors**      
============================ =================================
BLEAdvertData::BLEAdvertData Constructs a BLEAdvertData object
============================ =================================

+----------------------------------+----------------------------------+
| **Public Methods**               |                                  |
+==================================+==================================+
| BLEAdvertData::clear             | Clear all advertising data       |
+----------------------------------+----------------------------------+
| BLEAdvertData::addData           | Add binary advertising data      |
+----------------------------------+----------------------------------+
| BLEAdvertData::addFlags          | Add flags to advertising data    |
+----------------------------------+----------------------------------+
| B                                | Add partial services to          |
| LEAdvertData::addPartialServices | advertising data                 |
+----------------------------------+----------------------------------+
| BL                               | Add complete services to         |
| EAdvertData::addCompleteServices | advertising data                 |
+----------------------------------+----------------------------------+
| BLEAdvertData::addAppearance     | Add device appearance to         |
|                                  | advertising data                 |
+----------------------------------+----------------------------------+
| BLEAdvertData::addShortName      | Add short device name to         |
|                                  | advertising data                 |
+----------------------------------+----------------------------------+
| BLEAdvertData::addCompleteName   | Add complete device name to      |
|                                  | advertising data                 |
+----------------------------------+----------------------------------+
| BLEAdvertData::parseScanInfo     | Parse advertising data received  |
|                                  | from a scan                      |
+----------------------------------+----------------------------------+
| BLEAdvertData::hasFlags          | Check if received data includes  |
|                                  | advertising flags                |
+----------------------------------+----------------------------------+
| BLEAdvertData::hasUUID           | Check if received data includes  |
|                                  | UUIDs                            |
+----------------------------------+----------------------------------+
| BLEAdvertData::hasName           | Check if received data includes  |
|                                  | device name                      |
+----------------------------------+----------------------------------+
| BLEAdvertData::hasManufacturer   | Check if received data includes  |
|                                  | manufacturer data                |
+----------------------------------+----------------------------------+
| BLEAdvertData::getAdvType        | Get advertising type of received |
|                                  | data                             |
+----------------------------------+----------------------------------+
| BLEAdvertData::getAddrType       | Get Bluetooth address type of    |
|                                  | received data                    |
+----------------------------------+----------------------------------+
| BLEAdvertData::getAddr           | Get Bluetooth address of         |
|                                  | received data                    |
+----------------------------------+----------------------------------+
| BLEAdvertData::getRSSI           | Get RSSI of received data        |
+----------------------------------+----------------------------------+
| BLEAdvertData::getFlags          | Get advertising flags of         |
|                                  | received data                    |
+----------------------------------+----------------------------------+
| BLEAdvertData::getServiceCount   | Get number of advertised         |
|                                  | services in received data        |
+----------------------------------+----------------------------------+
| BLEAdvertData::getServiceList    | Get array of advertised services |
|                                  | in received data                 |
+----------------------------------+----------------------------------+
| BLEAdvertData::getName           | Get advertised device name in    |
|                                  | received data                    |
+----------------------------------+----------------------------------+
| BLEAdvertData::getTxPower        | Get advertised transmission      |
|                                  | power in received data           |
+----------------------------------+----------------------------------+
| BLEAdvertData::getAppearance     | Get advertised device appearance |
|                                  | in received data                 |
+----------------------------------+----------------------------------+
| BLEAdvertData::getManufacturer   | Get advertised manufacturer in   |
|                                  | received data                    |
+----------------------------------+----------------------------------+
| BLEAdver                         | Get length of manufacturer data  |
| tData::getManufacturerDataLength | in received data                 |
+----------------------------------+----------------------------------+
| BL                               | Get advertised manufacturer data |
| EAdvertData::getManufacturerData | in received data                 |
+----------------------------------+----------------------------------+

**BLEAdvertData::BLEAdvertData**

| **Description**
| Constructs a BLEAdvertData object.

| **Syntax**
| BLEAdvertData::BLEAdvertData(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| This class is used for managing BLE advertising data for two primary
  uses. First is to assemble advertising data for broadcasting as
  advertising packets. Second is to process and split up the advertising
  data received from a scan into separate types. 
|  

**BLEAdvertData::clear**

| **Description**
| Clear all advertising data currently saved in class object.

| **Syntax**
| void clear(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| NA
|  

**BLEAdvertData::addData**

| **Description**
| Add binary advertising data.

| **Syntax**
| void addData(const uint8_t\* data, uint8_t size);

| **Parameters**
| data: pointer to array containing desired advertising data.
| size: number of bytes in array.

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| This function is provided for flexibility in adding BLE advertising
  data. Other functions should be used for adding advertising data if
  possible, as this function does not perform any checks on the validity
  of the data.
|  

**BLEAdvertData::addFlags**

| **Description**
| Add flags to advertising data.

| **Syntax**
| uint8_t addFlags(uint8_t flags);

| **Parameters**
| flags: desired flags to add to advertising data. Valid values:
| – GAP_ADTYPE_FLAGS_LIMITED
| – GAP_ADTYPE_FLAGS_GENERAL
| – GAP_ADTYPE_FLAGS_BREDR_NOT_SUPPORTED
| – GAP_ADTYPE_FLAGS_SIMULTANEOUS_LE_BREDR_CONTROLLER
| – GAP_ADTYPE_FLAGS_SIMULTANEOUS_LE_BREDR_HOST

| **Returns**
| Current total size of advertising data.

| **Example Code**
| Example: BLEBatteryService

| **Notes and Warnings**
| NA
|  

**BLEAdvertData::addPartialServices**

| **Description**
| Add partial list of service UUIDs to advertising data.

| **Syntax**
| uint8_t addPartialServices(BLEUUID uuid);

| **Parameters**
| uuid: the desired UUID contained in BLEUUID class object.

| **Returns**
| Current total size of advertising data.

| **Example Code**
| NA

| **Notes and Warnings**
| NA
|  

**BLEAdvertData::addCompleteServices**

| **Description**
| Add complete list of service UUIDs to advertising data.

| **Syntax**
| uint8_t addCompleteServices(BLEUUID uuid);
| uint8_t addCompleteServices(uint8_t uuidBitLength);

| **Parameters**
| uuid: the desired UUID contained in BLEUUID class object.
| uuidBitLength: UUID bit length for which a blank entry is to be added.
  Valid values: 16, 32, 128.

| **Returns**
| Current total size of advertising data.

| **Example Code**
| Example: BLEBatteryService

| **Notes and Warnings**
| uuidBitLength is used when it is desired to add a blank entry to the
  advertisement data, used to indicate that no services with UUIDs of a
  certain length are available. 
|  

**BLEAdvertData::addAppearance**

| **Description**
| Add device appearance to advertising data.

| **Syntax**
| uint8_t addAppearance(uint16_t appearance);

| **Parameters**
| appearance: the desired device appearance.

| **Returns**
| Current total size of advertising data.

| **Example Code**
| NA

| **Notes and Warnings**
| Refer to Bluetooth specifications for a full list of device appearance
  values.
|  

**BLEAdvertData::addShortName**

| **Description**
| Add shortened device name to advertising data.

| **Syntax**
| uint8_t addShortName(const char\* str);

| **Parameters**
| str: character string containing desired device name.

| **Returns**
| Current total size of advertising data.

| **Example Code**
| NA

| **Notes and Warnings**
| NA
|  

**BLEAdvertData::addCompleteName**

| **Description**
| Add complete device name to advertising data.

| **Syntax**
| uint8_t addCompleteName(const char\* str);

| **Parameters**
| str: character string containing desired device name.

| **Returns**
| Current total size of advertising data.

| **Example Code**
| Example: BLEBatteryService

| **Notes and Warnings**
| NA
|  

**BLEAdvertData::parseScanInfo**

| **Description**
| Parse advertising data received from a scan.

| **Syntax**
| void parseScanInfo(T_LE_CB_DATA \*p_data);

| **Parameters**
| p_data: pointer to advertising data received from a Bluetooth scan.

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: BLEBatteryClient

| **Notes and Warnings**
| Advertising data fields of parsed receive data can be access using
  member functions starting with “has” and “get”.
|  

**BLEAdvertData::hasFlags**

| **Description**
| Check if received data includes advertising flags.

| **Syntax**
| bool hasFlags(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| True if flags are present in received advertising data.

| **Example Code**
| NA

| **Notes and Warnings**
| NA
|  

**BLEAdvertData::hasUUID**

| **Description**
| Check if received data includes service UUIDs.

| **Syntax**
| bool hasUUID(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| True if service UUIDs are present in received advertising data.

| **Example Code**
| NA

| **Notes and Warnings**
| NA
|  

**BLEAdvertData::hasName**

| **Description**
| Check if received data includes device name.

| **Syntax**
| bool hasName(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| True if device name is present in received advertising data.

| **Example Code**
| Example: BLEBatteryClient

| **Notes and Warnings**
| NA
|  

**BLEAdvertData::hasManufacturer**

| **Description**
| Check if received data includes manufacturer specific data.

| **Syntax**
| bool hasManufacturer(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| True if manufacturer specific data is present in received advertising
  data.

| **Example Code**
| NA

| **Notes and Warnings**
| NA
|  

**BLEAdvertData::getAdvType**

| **Description**
| Get advertising type of received data.

| **Syntax**
| T_GAP_ADV_EVT_TYPE getAdvType(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| Advertising type of received advertising data.

| **Example Code**
| NA

| **Notes and Warnings**
| Possible types:
| – GAP_ADV_EVT_TYPE_UNDIRECTED
| – GAP_ADV_EVT_TYPE_DIRECTED
| – GAP_ADV_EVT_TYPE_SCANNABLE
| – GAP_ADV_EVT_TYPE_NON_CONNECTABEL
| – GAP_ADV_EVT_TYPE_SCAN_RSP
|  

**BLEAdvertData::getAddrType**

| **Description**
| Get Bluetooth address type of received data.

| **Syntax**
| T_GAP_REMOTE_ADDR_TYPE getAddrType(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| Bluetooth address type of received data.

| **Example Code**
| NA

| **Notes and Warnings**
| Possible types:
| – GAP_REMOTE_ADDR_LE_PUBLIC
| – GAP_REMOTE_ADDR_LE_RANDOM
|  

**BLEAdvertData::getRSSI**

| **Description**
| Get received signal strength indicator (RSSI) of received data.

| **Syntax**
| Int8_t getRSSI(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| Received signal strength.

| **Example Code**
| NA

| **Notes and Warnings**
| NA
|  

**BLEAdvertData::getFlags**

| **Description**
| Get advertising flags of received data.

| **Syntax**
| uint8_t getFlags(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| Advertising flags present in received advertising data, expressed as a
  single byte.

| **Example Code**
| NA

| **Notes and Warnings**
| NA
|  

**BLEAdvertData::getServiceCount**

| **Description**
| Get number of advertised services in received data.

| **Syntax**
| uint8_t getServiceCount(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| Number of advertised service UUIDs in received data.

| **Example Code**
| Example: BLEBatteryClient

| **Notes and Warnings**
| NA
|  

**BLEAdvertData::getServiceList**

| **Description**
| Get list of advertised service UUIDs in received data.

| **Syntax**
| BLEUUID\* getServiceList(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| Pointer to a BLEUUID array containing all advertised service UUIDs.

| **Example Code**
| Example: BLEBatteryClient

| **Notes and Warnings**
| NA
|  

**BLEAdvertData::getName**

| **Description**
| Get advertised device name in received data.

| **Syntax**
| String getName(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| Advertised device name contained in a String class object.

| **Example Code**
| Example: BLEBatteryClient

| **Notes and Warnings**
| NA
|  

**BLEAdvertData::getTxPower**

| **Description**
| Get advertised transmission power in received data.

| **Syntax**
| int8_t getTxPower(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| Advertised transmission power.

| **Example Code**
| NA

| **Notes and Warnings**
| NA
|  

**BLEAdvertData::getAppearance**

| **Description**
| Get advertised device appearance in received data.

| **Syntax**
| uint16_t getAppearance(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| Advertised device appearance.

| **Example Code**
| NA

| **Notes and Warnings**
| Refer to Bluetooth specifications for full list of device appearance
  values.
|  

**BLEAdvertData::getManufacturer**

| **Description**
| Get advertised manufacturer in received data.

| **Syntax**
| uint16_t getManufacturer(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| Advertised manufacturer.

| **Example Code**
| NA

| **Notes and Warnings**
| Refer to Bluetooth specifications for full list of manufacturer codes.
|  

**BLEAdvertData::getManufacturerDataLength**

| **Description**
| Get length of manufacturer data in received data.

| **Syntax**
| uint8_t getManufacturerDataLength(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| Number of bytes of manufacturer data present in received advertising
  data.

| **Example Code**
| NA

| **Notes and Warnings**
| NA
|  

**BLEAdvertData::getManufacturerData**

| **Description**
| Get manufacturer data in received data.

| **Syntax**
| uint8_t\* getManufacturerData(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| Pointer to array containing manufacturer data.

| **Example Code**
| NA

| **Notes and Warnings**
| NA
