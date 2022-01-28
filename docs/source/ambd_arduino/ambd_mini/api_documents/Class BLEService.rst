Class BLEService
==================
**BLEService Class**

| **Description**
| A class used for creating and managing BLE GATT services.

| **Syntax**
| class BLEService

**Members**

============================= =====================================
**Public Constructors**       
============================= =====================================
BLEService::BLEService        Constructs a BLEService object
**Public Methods**             
BLEService::setUUID           Set service UUID
BLEService::getUUID           Get service UUID
BLEService::addCharacteristic Add a characteristic to service
BLEService::getCharacteristic Get a previously added characteristic
============================= =====================================

**BLEService::BLEService**

| **Description**
| Constructs a BLEService object.

| **Syntax**
| BLEService::BLEService(BLEUUID uuid);
| BLEService::BLEService(const char\* uuid);

| **Parameters**
| uuid: service UUID, expressed as a BLEUUID class object or a character
  array

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: BLEUartService

| **Notes and Warnings**
| NA
|  

**BLEService::setUUID**

| **Description**
| Set the service UUID.

| **Syntax**
| void setUUID(BLEUUID uuid);

| **Parameters**
| uuid: service UUID, expressed as a BLEUUID class object.

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| NA
|  

**BLEService::getUUID**

| **Description**
| Get the service UUID.

| **Syntax**
| BLEUUID getUUID();

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns the service UUID in a BLEUUID class object.

| **Example Code**
| NA

| **Notes and Warnings**
| NA
|  

**BLEService::addCharacteristic**

| **Description**
| Add a characteristic to the service.

| **Syntax**
| void addCharacteristic(BLECharacteristic& newChar);

| **Parameters**
| newChar: the BLECharacteristic to add to the service.

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: BLEUartService

| **Notes and Warnings**
| NA
|  

**BLEService::getCharacteristic**

| **Description**
| Get a previously added characteristic.

| **Syntax**
| BLECharacteristic\* getCharacteristic(uint8_t charIndex);

| **Parameters**
| charIndex: position index of characteristic.

| **Returns**
| The function returns a pointer to the BLECharacteristic at the
  requested position index.

| **Example Code**
| NA

| **Notes and Warnings**
| NA
