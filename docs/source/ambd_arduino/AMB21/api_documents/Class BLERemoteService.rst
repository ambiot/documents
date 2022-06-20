Class BLERemoteService
========================

.. class:: BLERemoteService


**Description**

A class used for managing BLE GATT services on connected remote devices.

**Syntax**

class BLERemoteService

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

---------------------------------------

.. method:: BLERemoteService::getUUID


**Description**

Get the service UUID.

**Syntax**

.. code:: cpp

  BLEUUID getUUID();

**Parameters**

The function requires no input parameter.

**Returns**

The function returns the service UUID as a BLEUUID class object.

**Example Code**

NA

**Notes and Warnings**

NA

---------------------------------------------------------

.. method:: BLERemoteService::getCharacteristic


**Description**

Get a characteristic with the specified UUID on the remote device.

**Syntax**

.. code:: cpp

  BLERemoteCharacteristic* getCharacteristic (const char* uuid);

.. code:: cpp

  BLERemoteCharacteristic* getCharacteristic (BLEUUID uuid);

**Parameters**

``uuid``: the desired characteristic UUID, expressed as a character array or a BLEUUID object.

**Returns**

The function returns the found characteristic as a
BLERemoteCharacteristic object pointer, otherwise nullptr is returned
if a characteristic with the UUID is not found.

**Example Code**

Example: BLEUartClient

**Notes and Warnings**

NA
