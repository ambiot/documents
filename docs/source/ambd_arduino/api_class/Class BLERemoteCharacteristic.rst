##############################
Class BLERemoteCharacteristic
##############################


**Description**

A class used for managing BLE GATT characteristics on connected remote
devices.

**Syntax**

.. code:: cpp

  class BLERemoteCharacteristic

**Members**

+----------------------------------------------------------------------+
| **Public Constructors**                                              |
+======================================================================+
| No public constructor is available for this class. You can get a     |
| pointer to an instance of this class using                           |
| BLERemoteService::getCharacteristic().                               |
+----------------------------------------------------------------------+

+----------------------------------+----------------------------------+
| **Public Methods**               |                                  |
+==================================+==================================+
| BLERem                           | Get a specific descriptor on the |
| oteCharacteristic::getDescriptor | remote device                    |
+----------------------------------+----------------------------------+
| BLERemoteCharacteristic::getUUID | Get the characteristic UUID      |
+----------------------------------+----------------------------------+
| BLERe                            | Set the size of the internal     |
| moteCharacteristic::setBufferLen | data buffer                      |
+----------------------------------+----------------------------------+
| BLERe                            | Get the current size of the      |
| moteCharacteristic::getBufferLen | internal data buffer             |
+----------------------------------+----------------------------------+
| BLERemoteCharacteristic::canRead | Determine if characteristic has  |
|                                  | read property enabled            |
+----------------------------------+----------------------------------+
| B                                | Determine if characteristic has  |
| LERemoteCharacteristic::canWrite | write property enabled           |
+----------------------------------+----------------------------------+
| BL                               | Determine if characteristic has  |
| ERemoteCharacteristic::canNotify | notify property enabled          |
+----------------------------------+----------------------------------+
| BLER                             | Determine if characteristic has  |
| emoteCharacteristic::canIndicate | indicate property enabled        |
+----------------------------------+----------------------------------+
| BLERem                           | Get the characteristic           |
| oteCharacteristic::getProperties | properties                       |
+----------------------------------+----------------------------------+
| BLE                              | Read the characteristic data     |
| RemoteCharacteristic::readString | buffer as a String object        |
+----------------------------------+----------------------------------+
| BL                               | Read the characteristic data     |
| ERemoteCharacteristic::readData8 | buffer as an unsigned 8-bit      |
|                                  | integer                          |
+----------------------------------+----------------------------------+
| BLE                              | Read the characteristic data     |
| RemoteCharacteristic::readData16 | buffer as an unsigned 16-bit     |
|                                  | integer                          |
+----------------------------------+----------------------------------+
| BLE                              | Read the characteristic data     |
| RemoteCharacteristic::readData32 | buffer as an unsigned 32-bit     |
|                                  | integer                          |
+----------------------------------+----------------------------------+
| BLER                             | Write data to the characteristic |
| emoteCharacteristic::writeString | as a String object or character  |
|                                  | array                            |
+----------------------------------+----------------------------------+
| BLE                              | Write data to the characteristic |
| RemoteCharacteristic::writeData8 | as an unsigned 8-bit integer     |
+----------------------------------+----------------------------------+
| BLER                             | Write data to the characteristic |
| emoteCharacteristic::writeData16 | as an unsigned 16-bit integer    |
+----------------------------------+----------------------------------+
| BLER                             | Write data to the characteristic |
| emoteCharacteristic::writeData32 | as an unsigned 16-bit integer    |
+----------------------------------+----------------------------------+
| BLERemoteCharacteristic::setData | Write data to the characteristic |
+----------------------------------+----------------------------------+
| BLERemoteCharacteristic::getData | Read data from the               |
|                                  | characteristic                   |
+----------------------------------+----------------------------------+
| BLERemoteChar                    | Enable notification or           |
| acteristic::enableNotifyIndicate | indication for the               |
|                                  | characteristic                   |
+----------------------------------+----------------------------------+
| BLERemoteChara                   | Disable notification and         |
| cteristic::disableNotifyIndicate | indication for the               |
|                                  | characteristic                   |
+----------------------------------+----------------------------------+
| BLERemoteC                       | Set a user function as a         |
| haracteristic::setNotifyCallback | notification callback            |
+----------------------------------+----------------------------------+

-----

.. method:: BLERemoteCharacteristic::getDescriptor

**Description**

Get a descriptor with the specified UUID on the remote device.

**Syntax**

.. code:: cpp

  BLERemoteDescriptor* getDescriptor(const char* uuid);

.. code:: cpp

  BLERemoteDescriptor* getDescriptor(BLEUUID uuid);

**Parameters**

``uuid`` : the desired descriptor UUID, expressed as a character array or a BLEUUID object

**Returns**

The function returns the found descriptor as a BLERemoteDescriptor
object pointer, otherwise nullptr is returned if a descriptor with the
UUID is not found.

**Example Code**

NA

**Notes and Warnings**

NA

-----


.. method:: BLERemoteCharacteristic::getUUID

**Description**

Get the characteristic UUID.

**Syntax**

.. code:: cpp

  BLEUUID getUUID();

**Parameters**

The function requires no input parameter.

**Returns**

The function returns the characteristic UUID as a BLEUUID class
object.

**Example Code**

NA

**Notes and Warnings**

NA

-----

.. method:: BLERemoteCharacteristic::setBufferLen


**Description**

Set the size of the internal data buffer of the characteristic.

**Syntax**

.. code:: cpp

  void setBufferLen(uint16_t max_len);

**Parameters**

``max_len`` : number of bytes to resize the internal buffer to.

**Returns**

The function returns nothing.

**Example Code**

Example: BLEUartClient

**Notes and Warnings**

Characteristic data buffer has a default size of 20 bytes and can be
increased up to 230 bytes.

-----

.. method:: BLERemoteCharacteristic::getBufferLen

**Description**

Get the size of the characteristic internal buffer.

**Syntax**

.. code:: cpp

  uint16_t getBufferLen();

**Parameters**

The function requires no input parameter.

**Returns**

The function returns the currently set internal buffer size.

**Example Code**

NA

**Notes and Warnings**

NA

-----

.. method:: BLERemoteCharacteristic::canRead

**Description**

Determine if characteristic has read property enabled.

**Syntax**

.. code:: cpp

  bool canRead();

**Parameters**

The function requires no input parameter.

**Returns**

The function returns TRUE if the read property for the characteristic
is enabled.

**Example Code**

NA

**Notes and Warnings**

NA

-----


.. method:: BLERemoteCharacteristic::canWrite

**Description**

Determine if characteristic has write property enabled.

**Syntax**

.. code:: cpp

  bool canWrite();

**Parameters**

The function requires no input parameter.

**Returns**

The function returns TRUE if the write property for the characteristic
is enabled.

**Example Code**

NA

**Notes and Warnings**

NA

-----


.. method:: BLERemoteCharacteristic::canNotify

**Description**

Determine if characteristic has notify property enabled.

**Syntax**

.. code:: cpp

  bool canNotify();

**Parameters**

The function requires no input parameter.

**Returns**

The function returns TRUE if the notify property for the

characteristic is enabled.

**Example Code**

NA

**Notes and Warnings**

NA

-----

.. method:: BLERemoteCharacteristic::canIndicate


**Description**

Determine if characteristic has indicate property enabled.

**Syntax**

.. code:: cpp

  bool canIndicate();

**Parameters**

The function requires no input parameter.

**Returns**

The function returns TRUE if the indicate property for the
characteristic is enabled.

**Example Code**

NA

**Notes and Warnings**

NA

-----


.. method:: BLERemoteCharacteristic::getProperties

**Description**

Get the characteristic properties.

**Syntax**

.. code:: cpp

  uint16_t getProperties();

**Parameters**

The function requires no input parameter.

**Returns**

The function returns the characteristic properties.

**Example Code**

NA

**Notes and Warnings**

NA

------


.. method:: BLERemoteCharacteristic::readString

**Description**

Request for characteristic data from the remote device and read the
data in the buffer, expressed as a String class object.

**Syntax**

.. code:: cpp

  String readString();

**Parameters**

The function requires no input parameter.

**Returns**

The function returns the data in the characteristic buffer expressed
as a String class object.

**Example Code**

Example: BLEUartClient

**Notes and Warnings**

NA

-----

.. method:: BLERemoteCharacteristic::readData8


**Description**

Request for characteristic data from the remote device and read the
data in the buffer, expressed as an unsigned 8-bit integer.

**Syntax**

.. code:: cpp

  uint8_t readData8();

**Parameters**

The function requires no input parameter.

**Returns**

The function returns the data in the characteristic buffer expressed
as a uint8_t value.

**Example Code**

Example: BLEBatteryClient

**Notes and Warnings**

NA

-----

BLERemoteCharacteristic::readData16

**Description**

Request for characteristic data from the remote device and read the
data in the buffer, expressed as an unsigned 16-bit integer.

**Syntax**

.. code:: cpp

  uint16_t readData16();

**Parameters**

The function requires no input parameter.

**Returns**

The function returns the data in the characteristic buffer expressed
as a uint16_t value.

**Example Code**

NA

**Notes and Warnings**

NA

-----


.. method:: BLERemoteCharacteristic::readData32

**Description**

Request for characteristic data from the remote device and read the
data in the buffer, expressed as an unsigned 32-bit integer.

**Syntax**

.. code:: cpp

  uint32_t readData32();

**Parameters**

The function requires no input parameter.

**Returns**

The function returns the data in the characteristic buffer expressed
as a uint32_t value.

**Example Code**

NA

**Notes and Warnings**

NA

-----

.. method:: BLERemoteCharacteristic::writeString

**Description**

Write data to the remote device characteristic as a String object or
character array.

**Syntax**

.. code:: cpp

  bool writeString(String str);

.. code:: cpp

  bool writeString(const char* str);

**Parameters**

``str`` : the data to write to the remote characteristic, expressed as a
String class object or a char array.

**Returns**

The function returns TRUE if write data is successful.

**Example Code**

NA

**Notes and Warnings**

NA

----

**BLERemoteCharacteristic::writeData8**


**Description**

Write data to the remote device characteristic as an unsigned 8-bit
integer.

**Syntax**

.. code:: cpp

  bool writeData8(uint8_t num);

**Parameters**

``num`` : the data to write to the characteristic buffer expressed as an
unsigned 8-bit integer.

**Returns**

The function returns TRUE if write data is successful.

**Example Code**

NA

**Notes and Warnings**

NA

-----

.. method:: BLERemoteCharacteristic::writeData16

**Description**

Write data to the remote device characteristic as an unsigned 16-bit
integer.

**Syntax**

.. code:: cpp

  bool writeData16(uint16_t num);

**Parameters**

``num`` : the data to write to the characteristic buffer expressed as an
unsigned 16-bit integer.

**Returns**

The function returns TRUE if write data is successful.

**Example Code**

NA

**Notes and Warnings**

NA

-----

.. method:: BLERemoteCharacteristic::writeData32


**Description**

Write data to the remote device characteristic as a 32-bit integer.

**Syntax**

.. code:: cpp

  bool writeData32(uint32_t num);

.. code:: cpp

  bool writeData32(int num);

**Parameters**

``num`` : the data to write to the characteristic buffer expressed as a
32-bit integer.

**Returns**

The function returns TRUE if write data is successful.

**Example Code**

NA

**Notes and Warnings**

NA

-----

.. method:: BLERemoteCharacteristic::setData

**Description**

Write data to the remote device characteristic.

**Syntax**

.. code:: cpp

  bool setData(uint8_t* data, uint16_t datalen);

**Parameters**

``data`` : pointer to byte array containing desired data

``datalen`` : number of bytes of data to write

**Returns**

The function returns TRUE if write data is successful.

**Example Code**

NA

**Notes and Warnings**

NA

-----

.. method:: BLERemoteCharacteristic::getData

**Description**

Request for characteristic data from the remote device and read the
data in the buffer.

**Syntax**

.. code:: cpp

  uint16_t getData(uint8_t* data, uint16_t datalen);

**Parameters**

``data``: pointer to byte array to save data read from buffer

``datalen`` : number of bytes of data to read

**Returns**

The function returns the number of bytes read.

**Example Code**

NA

**Notes and Warnings**

If the data buffer contains less data than requested, it will only
read the available number of bytes of data.

-----

.. method:: BLERemoteCharacteristic::enableNotifyIndicate


**Description**

Enable the remote device to send notifications or indications for the
characteristic.

**Syntax**

.. code:: cpp

  void enableNotifyIndicate(bool notify = 1);

**Parameters**

``notify`` : TRUE to enable notifications, FALSE to enable indications.

**Returns**

The function returns nothing.

**Example Code**

Example: BLEUartClient

**Notes and Warnings**

NA

-----

.. method:: BLERemoteCharacteristic::disableNotifyIndicate


**Description**

Disable receiving notifications and indications for the characteristic
from the remote device.

**Syntax**

.. code:: cpp

  void disableNotifyIndicate();

**Parameters**

The function requires no input parameter.

**Returns**

The function returns nothing.

**Example Code**

NA

**Notes and Warnings**

NA

-----

.. method:: BLERemoteCharacteristic::setNotifyCallback

**Description**

Set a user function to be called when the characteristic receives a
notification from the remote device.

**Syntax**

.. code:: cpp
  
  void setNotifyCallback(void (*fCallback) (BLERemoteCharacteristic* chr, uint8_t* data, uint16_t length));

**Parameters**

``fCallback`` : A user callback function that returns void and takes three
arguments.

``chr``: pointer to BLERemoteCharacteristic object associated with
notification.

``data``: pointer to byte array containing notification data.

``length``: number of bytes of notification data in array.

**Returns**

The function returns nothing.

**Example Code**

Example: BLEUartClient

**Notes and Warnings**

NA
