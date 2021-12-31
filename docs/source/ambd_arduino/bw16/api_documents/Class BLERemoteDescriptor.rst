Class BLERemoteDescriptor
============================
**BLERemoteDescriptor Class**

| **Description**
| A class used for managing BLE GATT descriptors on connected remote
  devices.

| **Syntax**
| class BLERemoteDescriptor

**Members**

+----------------------------------------------------------------------+
| **Public Constructors**                                              |
+======================================================================+
| No public constructor is available for this class. You can get a     |
| pointer to an instance of this class using                           |
| BLERemoteCharacteristic::getDescriptor().                            |
+----------------------------------------------------------------------+

+----------------------------------+----------------------------------+
| **Public Methods**               |                                  |
+==================================+==================================+
| BLERemoteDescriptor::getUUID     | Get the descriptor UUID          |
+----------------------------------+----------------------------------+
| B                                | Set the size of the internal     |
| LERemoteDescriptor::setBufferLen | data buffer                      |
+----------------------------------+----------------------------------+
| B                                | Get the current size of the      |
| LERemoteDescriptor::getBufferLen | internal data buffer             |
+----------------------------------+----------------------------------+
| BLERemoteDescriptor::readString  | Read the descriptor data buffer  |
|                                  | as a String object               |
+----------------------------------+----------------------------------+
| BLERemoteDescriptor::readData8   | Read the descriptor data buffer  |
|                                  | as an unsigned 8-bit integer     |
+----------------------------------+----------------------------------+
| BLERemoteDescriptor::readData16  | Read the descriptor data buffer  |
|                                  | as an unsigned 16-bit integer    |
+----------------------------------+----------------------------------+
| BLERemoteDescriptor::readData32  | Read the descriptor data buffer  |
|                                  | as an unsigned 32-bit integer    |
+----------------------------------+----------------------------------+
| BLERemoteDescriptor::writeString | Write data to the descriptor as  |
|                                  | a String object or character     |
|                                  | array                            |
+----------------------------------+----------------------------------+
| BLERemoteDescriptor::writeData8  | Write data to the descriptor as  |
|                                  | an unsigned 8-bit integer        |
+----------------------------------+----------------------------------+
| BLERemoteDescriptor::writeData16 | Write data to the descriptor as  |
|                                  | an unsigned 16-bit integer       |
+----------------------------------+----------------------------------+
| BLERemoteDescriptor::writeData32 | Write data to the descriptor as  |
|                                  | an unsigned 16-bit integer       |
+----------------------------------+----------------------------------+
| BLERemoteDescriptor::setData     | Write data to the descriptor     |
+----------------------------------+----------------------------------+
| BLERemoteDescriptor::getData     | Read data from the descriptor    |
+----------------------------------+----------------------------------+

**BLERemoteDescriptor::getUUID**

| **Description**
| Get the descriptor UUID.

| **Syntax**
| BLEUUID getUUID();

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns the descriptor UUID as a BLEUUID class object.

| **Example Code**
| NA

| **Notes and Warnings**
| NA
|  

**BLERemoteDescriptor::setBufferLen**

| **Description**
| Set the size of the internal data buffer of the descriptor.

| **Syntax**
| void setBufferLen(uint16_t max_len);

| **Parameters**
| max_len: number of bytes to resize the internal buffer to.

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| Descriptor data buffer has a default size of 20 bytes and can be
  increased up to 230 bytes.
|  

**BLERemoteDescriptor::getBufferLen**

| **Description**
| Get the size of the descriptor internal buffer.

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
|  

**BLERemoteDescriptor::readString**

| **Description**
| Request for descriptor data from the remote device and read the data
  in the buffer, expressed as a String class object.

| **Syntax**
| String readString();

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns the data in the descriptor buffer expressed as a
  String class object.

| **Example Code**
| NA

| **Notes and Warnings**
| NA
|  

**BLERemoteDescriptor::readData8**

| **Description**
| Request for descriptor data from the remote device and read the data
  in the buffer, expressed as an unsigned 8-bit integer.

| **Syntax**
| uint8_t readData8();

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns the data in the descriptor buffer expressed as a
  uint8_t value.

| **Example Code**
| NA

| **Notes and Warnings**
| NA
|  

**BLERemoteDescriptor::readData16**

| **Description**
| Request for descriptor data from the remote device and read the data
  in the buffer, expressed as an unsigned 16-bit integer.

| **Syntax**
| uint16_t readData16();

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns the data in the descriptor buffer expressed as a
  uint16_t value.

| **Example Code**
| NA

| **Notes and Warnings**
| NA
|  

**BLERemoteDescriptor::readData32**

| **Description**
| Request for descriptor data from the remote device and read the data
  in the buffer, expressed as an unsigned 32-bit integer.

| **Syntax**
| uint32_t readData32();

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns the data in the descriptor buffer expressed as a
  uint32_t value.

| **Example Code**
| NA

| **Notes and Warnings**
| NA
|  

**BLERemoteDescriptor::writeString**

| **Description**
| Write data to the remote device descriptor as a String object or
  character array.

| **Syntax**
| bool writeString(String str);
| bool writeString(const char\* str);

| **Parameters**
| str: the data to write to the remote descriptor, expressed as a String
  class object or a char array.

| **Returns**
| The function returns TRUE if write data is successful.

| **Example Code**
| NA

| **Notes and Warnings**
| NA
|  

**BLERemoteDescriptor::writeData8**

| **Description**
| Write data to the remote device descriptor as an unsigned 8-bit
  integer.

| **Syntax**
| bool writeData8(uint8_t num);

| **Parameters**
| num: the data to write to the descriptor buffer expressed as an
  unsigned 8-bit integer.

| **Returns**
| The function returns TRUE if write data is successful.

| **Example Code**
| NA

| **Notes and Warnings**
| NA
|  

**BLERemoteDescriptor::writeData16**

| **Description**
| Write data to the remote device descriptor as an unsigned 16-bit
  integer.

| **Syntax**
| bool writeData16(uint16_t num);

| **Parameters**
| num: the data to write to the descriptor buffer expressed as an
  unsigned 16-bit integer.

| **Returns**
| The function returns TRUE if write data is successful.

| **Example Code**
| NA

| **Notes and Warnings**
| NA
|  

**BLERemoteDescriptor::writeData32**

| **Description**
| Write data to the remote device descriptor as a 32-bit integer.

| **Syntax**
| bool writeData32(uint32_t num);
| bool writeData32(int num);

| **Parameters**
| num: the data to write to the descriptor buffer expressed as a 32-bit
  integer.

| **Returns**
| The function returns TRUE if write data is successful.

| **Example Code**
| NA

| **Notes and Warnings**
| NA
|  

**BLERemoteDescriptor::setData**

| **Description**
| Write data to the remote device descriptor.

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
|  

**BLERemoteDescriptor::getData**

| **Description**
| Request for descriptor data from the remote device and read the data
  in the buffer.

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
