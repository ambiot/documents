Class BLECharacteristic
===========================
**BLECharacteristic Class**

**Description**

A class used for creating and managing BLE GATT characteristics.

| **Syntax**
| class BLECharacteristic

**Members**

+----------------------------------+----------------------------------+
| **Public Constructors**          |                                  |
+==================================+==================================+
| BLEC                             | Constructs a BLECharacteristic   |
| haracteristic::BLECharacteristic | object                           |
+----------------------------------+----------------------------------+
| **Public Methods**               |                                  |
+----------------------------------+----------------------------------+
| BLECharacteristic::setUUID       | Set the characteristic UUID      |
+----------------------------------+----------------------------------+
| BLECharacteristic::getUUID       | Get the characteristic UUID      |
+----------------------------------+----------------------------------+
| BLECharacteristic::setBufferLen  | Set the size of the internal     |
|                                  | data buffer                      |
+----------------------------------+----------------------------------+
| BLECharacteristic::getBufferLen  | Get the current size of the      |
|                                  | internal data buffer             |
+----------------------------------+----------------------------------+
| BL                               | Get the current size of the      |
| ECharacteristic::setReadProperty | internal data bufferSet the      |
|                                  | characteristic read property     |
+----------------------------------+----------------------------------+
| BLE                              | Set the characteristic write     |
| Characteristic::setWriteProperty | property                         |
+----------------------------------+----------------------------------+
| BLEC                             | Set the characteristic notify    |
| haracteristic::setNotifyProperty | property                         |
+----------------------------------+----------------------------------+
| BLECha                           | Set the characteristic indicate  |
| racteristic::setIndicateProperty | property                         |
+----------------------------------+----------------------------------+
| BLECharacteristic::setProperties | Set the characteristic           |
|                                  | properties                       |
+----------------------------------+----------------------------------+
| BLECharacteristic::getProperties | Get the characteristic           |
|                                  | properties                       |
+----------------------------------+----------------------------------+
| BLECharacteristic::readString    | Read the characteristic data     |
|                                  | buffer as a String object        |
+----------------------------------+----------------------------------+
| BLECharacteristic::readData8     | Read the characteristic data     |
|                                  | buffer as an unsigned 8-bit      |
|                                  | integer                          |
+----------------------------------+----------------------------------+
| BLECharacteristic::readData16    | Read the characteristic data     |
|                                  | buffer as an unsigned 16-bit     |
|                                  | integer                          |
+----------------------------------+----------------------------------+
| BLECharacteristic::readData32    | Read the characteristic data     |
|                                  | buffer as an unsigned 32-bit     |
|                                  | integer                          |
+----------------------------------+----------------------------------+
| BLECharacteristic::writeString   | Write data to the characteristic |
|                                  | data buffer as a String object   |
|                                  | or character array               |
+----------------------------------+----------------------------------+
| BLECharacteristic::writeData8    | Write data to the characteristic |
|                                  | data buffer as an unsigned 8-bit |
|                                  | integer                          |
+----------------------------------+----------------------------------+
| BLECharacteristic::writeData16   | Write data to the characteristic |
|                                  | data buffer as an unsigned       |
|                                  | 16-bit integer                   |
+----------------------------------+----------------------------------+
| BLECharacteristic::writeData32   | Write data to the characteristic |
|                                  | data buffer as an unsigned       |
|                                  | 16-bit integer                   |
+----------------------------------+----------------------------------+
| BLECharacteristic::setData       | Write data to the characteristic |
|                                  | data buffer                      |
+----------------------------------+----------------------------------+
| BLECharacteristic::getData       | Read data from the               |
|                                  | characteristic data buffer       |
+----------------------------------+----------------------------------+
| BLECharacteristic::getDataBuff   | Get a pointer to the             |
|                                  | characteristic data buffer       |
+----------------------------------+----------------------------------+
| BLECharacteristic::getDataLen    | Get the number of bytes of data  |
|                                  | in the characteristic data       |
|                                  | buffer                           |
+----------------------------------+----------------------------------+
| BLECharacteristic::notify        | Send a notification to a         |
|                                  | connected device                 |
+----------------------------------+----------------------------------+
| BLECharacteristic::indicate      | Send an indication to a          |
|                                  | connected device                 |
+----------------------------------+----------------------------------+
| BLEC                             | Add a user description           |
| haracteristic::setUserDescriptor | descriptor to characteristic     |
+----------------------------------+----------------------------------+
| BLECha                           | Add a data format descriptor to  |
| racteristic::setFormatDescriptor | characteristic                   |
+----------------------------------+----------------------------------+
| BLECharacteristic::Add a data    | Set a user function as a read    |
| format descriptor to             | callback                         |
| characteristic                   |                                  |
+----------------------------------+----------------------------------+
| BLE                              | Set a user function as a write   |
| Characteristic::setWriteCallback | callback                         |
+----------------------------------+----------------------------------+
| BL                               | Set a user function as a CCCD    |
| ECharacteristic::setCCCDCallback | write callback                   |
+----------------------------------+----------------------------------+

**BLECharacteristic::BLECharacteristic**

| **Description**
| Constructs a BLECharacteristic object.

| **Syntax**
| BLECharacteristic::BLECharacteristic(BLEUUID uuid);
| BLECharacteristic::BLECharacteristic(const char\* uuid);

| **Parameters**
| uuid: characteristic UUID, expressed as a BLEUUID class object or a
  character array

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: BLEUartService

| **Notes and Warnings**
| NA

**BLECharacteristic::setUUID**

| **Description**
| Set the characteristic UUID.

| **Syntax**
| void setUUID(BLEUUID uuid);

| **Parameters**
| uuid: the new characteristic UUID, expressed with a BLEUUID class
  object

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| NA

**BLECharacteristic::getUUID**

| **Description**
| Get the characteristic UUID.

| **Syntax**
| BLEUUID getUUID();

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns the characteristic UUID in a BLEUUID class
  object.

| **Example Code**
| NA

| **Notes and Warnings**
| NA

**BLECharacteristic::setBufferLen**

| **Description**
| Set the size of the internal data buffer of the characteristic.

| **Syntax**
| void setBufferLen(uint16_t max_len);

| **Parameters**
| max_len: number of bytes to resize the internal buffer to

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: BLEUartService

| **Notes and Warnings**
| Characteristic data buffer has a default size of 20 bytes and can be
  increased up to 230 bytes.

**BLECharacteristic::getBufferLen**

| **Description**
| Get the size of the characteristic internal buffer.

| **Syntax**
| uint16_t getBufferLen();

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns the currently set internal buffer size.

| **Example Code**
| NA

| **Notes and Warnings**
| NA

**BLECharacteristic::setReadProperty**

| **Description**
| Set the characteristic read property.

| **Syntax**
| void setReadProperty(bool value);

| **Parameters**
| value: TRUE to allow connected devices to read characteristic data

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: BLEBatteryService

| **Notes and Warnings**
| NA

**BLECharacteristic::setWriteProperty**

| **Description**
| Set the characteristic write property.

| **Syntax**
| void setWriteProperty(bool value);

| **Parameters**
| value: TRUE to allow connected devices to write characteristic data

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: BLEUartService

| **Notes and Warnings**
| NA

**BLECharacteristic::setNotifyProperty**

| **Description**
| Set the characteristic notify property.

| **Syntax**
| void setNotifyProperty(bool value);

| **Parameters**
| value: TRUE to allow connected devices to enable receiving
  characteristic data notifications.

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: BLEUartService

| **Notes and Warnings**
| Enabling this property will add a CCCD descriptor to the
  characteristic.

**BLECharacteristic::setIndicateProperty**

| **Description**
| Set the characteristic indicate property.

| **Syntax**
| void setIndicateProperty(bool value);

| **Parameters**
| value: TRUE to allow connected devices to enable receiving
  characteristic data indications.

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| Enabling this property will add a CCCD descriptor to the
  characteristic.

**BLECharacteristic::setProperties**

| **Description**
| Set the characteristic properties.

| **Syntax**
| void setProperties(uint8_t value);

| **Parameters**
| value: desired characteristic properties

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| NA

**BLECharacteristic::getProperties**

| **Description**
| Get the currently set characteristic properties.

| **Syntax**
| uint8_t getProperties();

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns the currently set characteristic properties
  expressed as an unsigned 8-bit integer.

| **Example Code**
| NA

| **Notes and Warnings**
| NA

**BLECharacteristic::readString**

| **Description**
| Read the data in the characteristic internal buffer, expressed as a
  String class object.

| **Syntax**
| String readString();

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns the data in the characteristic internal buffer
  expressed as a String class object.

| **Example Code**
| Example: BLEUartService

| **Notes and Warnings**
| Non-ASCII data may result in unexpected characters in the string.

**BLECharacteristic::readData8**

| **Description**
| Read the data in the characteristic internal buffer, expressed as an
  unsigned 8-bit integer.

| **Syntax**
| uint8_t readData8();

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns the data in the characteristic internal buffer
  expressed as a uint8_t value.

| **Example Code**
| NA

| **Notes and Warnings**
| NA

**BLECharacteristic::readData16**

| **Description**
| Read the data in the characteristic internal buffer, expressed as an
  unsigned 16-bit integer.

| **Syntax**
| uint16_t readData16();

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns the data in the characteristic internal buffer
  expressed as a uint16_t value.

| **Example Code**
| NA

| **Notes and Warnings**
| NA

**BLECharacteristic::readData32**

| **Description**
| Read the data in the characteristic internal buffer, expressed as an
  unsigned 32-bit integer.

| **Syntax**
| uint32_t readData32();

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns the data in the characteristic internal buffer
  expressed as a uint32_t value.

| **Example Code**
| NA

| **Notes and Warnings**
| NA

**BLECharacteristic::readData32**

| **Description**
| Write data to the characteristic data buffer as a String object or
  character array.

| **Syntax**
| bool writeString(String str);
| bool writeString(const char\* str);

| **Parameters**
| str: the data to write to the characteristic buffer, expressed as a
  String class object or a char array.

| **Returns**
| The function returns TRUE if write data is successful.

| **Example Code**
| Example: BLEUartService

| **Notes and Warnings**
| NA

**BLECharacteristic::writeData8**

| **Description**
| Write data to the characteristic data buffer as an unsigned 8-bit
  integer.

| **Syntax**
| bool writeData8(uint8_t num);

| **Parameters**
| num: the data to write to the characteristic buffer expressed as an
  unsigned 8-bit integer.

| **Returns**
| The function returns TRUE if write data is successful.

| **Example Code**
| Example: BLEBatteryService

| **Notes and Warnings**
| NA

**BLECharacteristic::writeData16**

| **Description**
| Write data to the characteristic data buffer as an unsigned 16-bit
  integer.

| **Syntax**
| bool writeData16(uint16_t num);

| **Parameters**
| num: the data to write to the characteristic buffer expressed as an
  unsigned 16-bit integer.

| **Returns**
| The function returns TRUE if write data is successful.

| **Example Code**
| NA

| **Notes and Warnings**
| NA

**BLECharacteristic::writeData32**

| **Description**
| Write data to the characteristic data buffer as a 32-bit integer.

| **Syntax**
| bool writeData32(uint32_t num);
| bool writeData32(int num);

| **Parameters**
| num: the data to write to the characteristic buffer expressed as a
  32-bit integer.

| **Returns**
| The function returns TRUE if write data is successful.

| **Example Code**
| NA

| **Notes and Warnings**
| NA

**BLECharacteristic::setData**

| **Description**
| Write data to the characteristic data buffer.

| **Syntax**
| bool setData(uint8_t\* data, uint16_t datalen);

| **Parameters**
| data: pointer to byte array containing desired data
| datalen: number of bytes of data to write

| **Returns**
| The function returns TRUE if write data is successful.

| **Example Code**
| NA

| **Notes and Warnings**
| NA

**BLECharacteristic::getData**

| **Description**
| Read data from the characteristic data buffer.

| **Syntax**
| uint16_t getData(uint8_t\* data, uint16_t datalen);

| **Parameters**
| data: pointer to byte array to save data read from buffer
| datalen: number of bytes of data to read

| **Returns**
| The function returns the number of bytes read.

| **Example Code**
| NA

| **Notes and Warnings**
| If the data buffer contains less data than requested, it will only
  read the available number of bytes of data.

**BLECharacteristic::getDataBuff**

| **Description**
| Get a pointer to the characteristic data buffer.

| **Syntax**
| uint8_t\* getDataBuff();

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns a pointer to the uint8_t array used as the
  characteristic internal buffer.

| **Example Code**
| NA

| **Notes and Warnings**
| NA

**BLECharacteristic::getDataLen**

| **Description**
| Get the number of bytes of data in the characteristic data buffer.

| **Syntax**
| uint16_t getDataLen

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns the number of bytes of data in the internal
  buffer.

| **Example Code**
| NA

| **Notes and Warnings**
| NA

**BLECharacteristic::notify**

| **Description**
| Send a notification to a connected device.

| **Syntax**
| void notify(uint8_t conn_id);

| **Parameters**
| conn_id: the connection ID for the device to send a notification to.

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: BLEUartService

| **Notes and Warnings**
| NA

**BLECharacteristic::indicate**

| **Description**
| Send an indication to a connected device.

| **Syntax**
| void indicate(uint8_t conn_id);

| **Parameters**
| conn_id: the connection ID for the device to send an indication to.

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| NA

**BLECharacteristic::setUserDescriptor**

| **Description**
| Add a user description descriptor attribute (UUID 0x2901) to the
  characteristic.

| **Syntax**
| void setUserDescriptor(const char\* description);

| **Parameters**
| description: the desired user description string expressed in a char
  array.

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| NA

**BLECharacteristic::setFormatDescriptor**

| **Description**
| Add a data format descriptor attribute (UUID 0x2904) to the
  characteristic.

| **Syntax**
| void setFormatDescriptor(uint8_t format, uint8_t exponent, uint16_t
  unit, uint16_t description);

| **Parameters**
| format: refer
  to https://www.bluetooth.com/specifications/assigned-numbers/format-types/ for
  the valid values and associated format types.
| exponent: base-10 exponent to be applied to characteristic data value.
| unit: refer
  to `https://btprodspecificationrefs.blob.core.windows.net/assigned-values/16-bit%20UUID%20Numbers%20Document.pdf  <https://btprodspecificationrefs.blob.core.windows.net/assigned-values/16-bit%20UUID%20Numbers%20Document.pdf>`__\ for
  the valid values and associated units.
| descriptor: refer
  to https://www.bluetooth.com/specifications/assigned-numbers/gatt-namespace-descriptors/ for
  the valid values and associated descriptors.

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| NA

**BLECharacteristic::setReadCallback**

| **Description**
| Set a user function to be called when the characteristic data is read
  by a connected device.

| **Syntax**
| void setReadCallback(void (\*fCallback) (BLECharacteristic\* chr,
  uint8_t conn_id));

| **Parameters**
| fCallback: A user callback function that returns void and takes two
  arguments.
| chr: pointer to BLECharacteristic object containing data read
| conn_id: connection ID of connected device that read characteristic
  data

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: BLEBatteryService

| **Notes and Warnings**
| NA

**BLECharacteristic::setWriteCallback**

| **Description**
| Set a user function to be called when the characteristic data is
  written by a connected device.

| **Syntax**
| void setWriteCallback(void (\*fCallback) (BLECharacteristic\* chr,
  uint8_t conn_id));

| **Parameters**
| fCallback: A user callback function that returns void and takes two
  arguments.
| chr: pointer to BLECharacteristic object containing written data.
| conn_id: connection ID of connected device that wrote characteristic
  data.

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: BLEUartService

| **Notes and Warnings**
| NA

**BLECharacteristic::setCCCDCallback**

| **Description**
| Set a user function to be called when a connected device modifies the
  characteristic CCCD to enable or disable notifications or indications.

| **Syntax**
| void setCCCDCallback(void (\*fCallback) (BLECharacteristic\* chr,
  uint8_t conn_id, uint16_t ccc_bits));

| **Parameters**
| fCallback: A user callback function that returns void and takes two
  arguments.
| chr: pointer to BLECharacteristic object containing written data.
| conn_id: connection ID of connected device that wrote characteristic
  data.
| ccc_bits: the new CCCD data bits after modification by the connected
  device

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: BLEUartService

| **Notes and Warnings**
| NA
