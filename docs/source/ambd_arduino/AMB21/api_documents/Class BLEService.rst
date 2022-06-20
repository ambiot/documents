Class BLEService
==================
.. class:: BLEService


**Description**

A class used for creating and managing BLE GATT services.

**Syntax**

.. code:: cpp

  class BLEService

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

----------------------------------------------------------

.. method:: BLEService::BLEService


**Description**

Constructs a BLEService object.

**Syntax**

.. code:: cpp

  BLEService::BLEService(BLEUUID uuid);

.. code:: cpp

  BLEService::BLEService(const char *uuid);

**Parameters**

``uuid``: service UUID, expressed as a BLEUUID class object or a character array

**Returns**

The function returns nothing.

**Example Code**

Example: BLEUartService

**Notes and Warnings**

NA

---------------------------------------------------

.. method:: BLEService::setUUID


**Description**

Set the service UUID.

**Syntax**

.. code:: cpp

  void setUUID(BLEUUID uuid);

**Parameters**

``uuid`` : service UUID, expressed as a BLEUUID class object.

**Returns**

The function returns nothing.

**Example Code**

NA

**Notes and Warnings**

NA

-------------------------------------------------------

.. method:: BLEService::getUUID


**Description**

Get the service UUID.

**Syntax**

.. code:: cpp

  BLEUUID getUUID();

**Parameters**

The function requires no input parameter.

**Returns**

The function returns the service UUID in a BLEUUID class object.

**Example Code**

NA

**Notes and Warnings**

NA

------------------------------------------------------------

.. method:: BLEService::addCharacteristic


**Description**

Add a characteristic to the service.

**Syntax**

.. code:: cpp

  void addCharacteristic(BLECharacteristic &newChar);

**Parameters**

``newChar`` : the BLECharacteristic to add to the service.

**Returns**

The function returns nothing.

**Example Code**

Example: BLEUartService

**Notes and Warnings**

NA

-------------------------------------------------------------------

.. method:: BLEService::getCharacteristic


**Description**

Get a previously added characteristic.

**Syntax**

.. code:: cpp

  BLECharacteristic *getCharacteristic(uint8_t charIndex);

**Parameters**

``charIndex`` : position index of characteristic.

**Returns**

The function returns a pointer to the BLECharacteristic at the
requested position index.

**Example Code**

NA

**Notes and Warnings**

NA
