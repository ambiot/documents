Class BLERemoteService
========================
**BLERemoteService Class**

| **Description**
| A class used for managing BLE GATT services on connected remote
  devices.

| **Syntax**
| class BLERemoteService

**Members**

+----------------------------------------------------------------------+
| **Public Constructors**                                              |
+======================================================================+
| No public constructor is available for this class. You can get a     |
| pointer to an instance of this class using BLEClient::getService().  |
+----------------------------------------------------------------------+

+----------------------------------+----------------------------------+
| **Public Methods**               |                                  |
+==================================+==================================+
| BLERemoteService::getUUID        | Get the service UUID             |
+----------------------------------+----------------------------------+
| BLE                              | Get a specific characteristic on |
| RemoteService::getCharacteristic | the remote device                |
+----------------------------------+----------------------------------+

**BLERemoteService::getUUID**

| **Description**
| Get the service UUID.

| **Syntax**
| BLEUUID getUUID();

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns the service UUID as a BLEUUID class object.

| **Example Code**
| NA

| **Notes and Warnings**
| NA
|  

**BLERemoteService::getCharacteristic**

| **Description**
| Get a characteristic with the specified UUID on the remote device.

| **Syntax**
| BLERemoteCharacteristic\* getCharacteristic (const char\* uuid);
| BLERemoteCharacteristic\* getCharacteristic (BLEUUID uuid);

| **Parameters**
| uuid: the desired characteristic UUID, expressed as a character array
  or a BLEUUID object.

| **Returns**
| The function returns the found characteristic as a
  BLERemoteCharacteristic object pointer, otherwise nullptr is returned
  if a characteristic with the UUID is not found.

| **Example Code**
| Example: BLEUartClient

| **Notes and Warnings**
| NA
