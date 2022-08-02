#################
Class BLEBeacon
#################

**Description**

A class used for managing iBeacon BLE advertising data.

**Syntax**

.. code:: cpp

  class iBeacon

**Members**

+----------------------------+------------------------------------------------+
| **Public Constructors**    |                                                |
+============================+================================================+
| iBeacon::iBeacon           | Create an instance of iBeacon advertising data |
+----------------------------+------------------------------------------------+

+----------------------------+------------------------------------------------+
| **Public Methods**         |                                                |
+============================+================================================+
| iBeacon::getManufacturerId | Get current manufacturer ID value              |
+----------------------------+------------------------------------------------+
| iBeacon::getUUID           | Get current UUID value                         |
+----------------------------+------------------------------------------------+
| iBeacon::getMajor          | Get current Major value                        |
+----------------------------+------------------------------------------------+
| iBeacon::getMinor          | Get current Minor value                        |
+----------------------------+------------------------------------------------+
| iBeacon::getRSSI           | Get current RSSI value                         |
+----------------------------+------------------------------------------------+
| iBeacon::setManufacturerId | Set manufacturer ID value                      |
+----------------------------+------------------------------------------------+
| iBeacon::setUUID           | Set UUID value                                 |
+----------------------------+------------------------------------------------+
| iBeacon::setMajor          | Set Major value                                |
+----------------------------+------------------------------------------------+
| iBeacon::setMinor          | Set Minor value                                |
+----------------------------+------------------------------------------------+
| iBeacon::setRSSI           | Set RSSI value                                 |
+----------------------------+------------------------------------------------+
| iBeacon::getAdvData        | Get current advertising data                   |
+----------------------------+------------------------------------------------+
| iBeacon::getScanRsp        | Get current scan response data                 |
+----------------------------+------------------------------------------------+

--------------------------------------------------------------------------------------

================
altBeacon Class
================

**Description**

A class used for managing altBeacon BLE advertising data.

**Syntax**

.. code:: cpp

  class altBeacon

**Members**

+------------------------------+--------------------------------------+
| **Public Constructors**      |                                      |
+==============================+======================================+
| altBeacon::altBeacon         | Create an instance of altBeacon      |
|                              | advertising data                     |
+------------------------------+--------------------------------------+
| **Public Methods**           |                                      |
+------------------------------+--------------------------------------+
| altBeacon::getManufacturerId | Get current manufacturer ID value    |
+------------------------------+--------------------------------------+
| altBeacon::getUUID           | Get current UUID value               |
+------------------------------+--------------------------------------+
| altBeacon::getMajor          | Get current Major value              |
+------------------------------+--------------------------------------+
| altBeacon::getMinor          | Get current Minor value              |
+------------------------------+--------------------------------------+
| altBeacon::getRSSI           | Get current RSSI value               |
+------------------------------+--------------------------------------+
| altBeacon::getRSVD           | Get current Reserved value           |
+------------------------------+--------------------------------------+
| altBeacon::setManufacturerId | Set manufacturer ID value            |
+------------------------------+--------------------------------------+
| altBeacon::setUUID           | Set UUID value                       |
+------------------------------+--------------------------------------+
| altBeacon::setMajor          | Set Major value                      |
+------------------------------+--------------------------------------+
| altBeacon::setMinor          | Set Minor value                      |
+------------------------------+--------------------------------------+
| altBeacon::setRSSI           | Set RSSI value                       |
+------------------------------+--------------------------------------+
| altBeacon::setRSVD           | Set Reserved value                   |
+------------------------------+--------------------------------------+
| altBeacon::getAdvData        | Get current advertising data         |
+------------------------------+--------------------------------------+
| altBeacon::getScanRsp        | Get current scan response data       |
+------------------------------+--------------------------------------+

------------------------------------------------------------------------------------

.. method:: iBeacon::iBeacon

**Description**

Create an iBeacon object.

**Syntax**

.. code:: cpp

  void iBeacon(void);

**Parameters**

The function requires no input parameter.

**Returns**

The function returns nothing.

**Example Code**

NA

**Notes and Warnings**

Include “BLEBeacon.h” to use this class function.

---------------

.. method:: altBeacon::altBeacon


**Description**

Create an altBeacon object.

**Syntax**

.. code:: cpp

  void altBeacon(void);

**Parameters**

The function requires no input parameter.

**Returns**

The function returns nothing.

**Example Code**

NA

**Notes and Warnings**

Include “BLEBeacon.h” to use this class function.

------

.. method:: iBeacon::getManufacturerId

.. method:: altBeacon::getManufacturerId


**Description**

Get current Manufacturer ID value.

**Syntax**

.. code:: cpp

  uint16_t getManufacturerId(void);

**Parameters**

The function requires no input parameter.

**Returns**

A 16-bit unsigned integer containing the current Company ID.

**Example Code**

NA

**Notes and Warnings**

Refer
to https://www.bluetooth.com/specifications/assigned-numbers/company-identifiers/ for
the full list of assigned Bluetooth company identifiers.

-----

.. method:: iBeacon::getUUID

.. method:: altBeacon::getUUID


**Description**

Get the current UUID value.

**Syntax**

.. code:: cpp

  void getUUID(uint8_t* UUID);

**Parameters**

UUID: pointer to a 16 element uint8_t array, current UUID will be
copied into the array.

**Returns**

The function returns nothing.

**Example Code**

NA

**Notes and Warnings**

UUID is a 128-bit number used to uniquely identify a beacon. It is
commonly expressed as a 32-character hexadecimal string. UUIDs can be
generated at https://www.uuidgenerator.net/.

-----

.. method:: iBeacon::getMajor

.. method:: altBeacon::getMajor


**Description**

Get current Major value.

**Syntax**

.. code:: cpp

  uint16_t getMajor(void);

**Parameters**

The function requires no input parameter.

**Returns**

A 16-bit unsigned integer containing the current Major value.

**Example Code**

NA

**Notes and Warnings**

Major and Minor are values used for customizing beacons. These can be
set to any value. Refer
to https://developer.apple.com/ibeacon/ or https://altbeacon.org/ for
more information.

-----

.. method:: iBeacon::getMinor

.. method:: altBeacon::getMinor


**Description**

Get current Minor value.

**Syntax**

.. code:: cpp

  uint16_t getMinor(void);

**Parameters**

The function requires no input parameter.

**Returns**

A 16-bit unsigned integer containing the current Minor value.

**Example Code**

NA

**Notes and Warnings**

Major and Minor are values used for customizing beacons. These can be
set to any value. Refer
to https://developer.apple.com/ibeacon/ or https://altbeacon.org/ for
more information.

-----

.. method:: iBeacon::getRSSI

.. method:: altBeacon::getRSSI


**Description**

Get the current RSSI value.

**Syntax**

.. code:: cpp

  int8_t getRSSI(void);

**Parameters**

The function requires no input parameter.

**Returns**

An 8-bit signed integer containing the currently set RSSI value.

**Example Code**

NA

**Notes and Warnings**

The beacon RSSI value is the received signal strength at 1 meter. This
can be used to estimate the distance to the beacon. Refer
to https://developer.apple.com/ibeacon/ or https://altbeacon.org/ for
more information.

-----

.. method:: iBeacon::setManufacturerId

.. method:: altBeacon::setManufacturerId


**Description**

Set Manufacturer ID value.

**Syntax**

.. code:: cpp

  void setManufacturerId(uint16_t id);

**Parameters**

``id`` : desired Manufacturer ID

**Returns**

The function returns nothing.

**Example Code**

Example: BLEBeacon

**Notes and Warnings**

Refer
to https://www.bluetooth.com/specifications/assigned-numbers/company-identifiers/ for
the full list of assigned Bluetooth company identifiers.

-----

.. method:: iBeacon::setUUID

.. method:: altBeacon::setUUID


**Description**

Set UUID value.

**Syntax**

.. code:: cpp

  void setUUID(uint8_t* UUID);

.. code:: cpp

  void setUUID(const char* UUID);

**Parameters**

``uint8_t* UUID`` : pointer to a 16 element uint8_t array containing the
desired UUID

``const char UUID`` : desired UUID expressed as a character string

**Returns**

The function returns nothing.

**Example Code**

Example: BLEBeacon

**Notes and Warnings**

UUID is a 128-bit number used to uniquely identify a beacon. It is
commonly expressed as a 32-character hexadecimal string. UUIDs can be
generated at https://www.uuidgenerator.net/.

-----

.. method:: iBeacon::setMajor

.. method:: altBeacon::setMajor


**Description**

Set Major value.

**Syntax**

.. code:: cpp

  void setMajor(uint16_t major);

**Parameters**

``major`` : desired Major value

**Returns**

The function returns nothing.

**Example Code**

Example: BLEBeacon

**Notes and Warnings**

Major and Minor are values used for customizing beacons. These can be
set to any value. Refer
to https://developer.apple.com/ibeacon/ or https://altbeacon.org/ for
more information.

-----

.. method:: iBeacon::setMinor

.. method:: altBeacon::setMinor


**Description**

Set Minor value.

**Syntax**

.. code:: cpp

  void setMinor(uint16_t minor);

**Parameters**

``minor`` : desired Minor value

**Returns**

The function returns nothing.

**Example Code**

Example: BLEBeacon

**Notes and Warnings**

Major and Minor are values used for customizing beacons. These can be
set to any value. Refer
to https://developer.apple.com/ibeacon/ or https://altbeacon.org/ for
more information.

-----

.. method:: iBeacon::setRSSI

.. method:: altBeacon::setRSSI


**Description**

Set RSSI value.

**Syntax**

.. code:: cpp

  void setRSSI(int8_t RSSI);

**Parameters**

``RSSI`` : desired RSSI value

**Returns**

The function returns nothing.

**Example Code**

Example: BLEBeacon

**Notes and Warnings**

The beacon RSSI value is the received signal strength at 1 meter. This
can be used to estimate the distance to the beacon. Refer
to https://developer.apple.com/ibeacon/ or https://altbeacon.org/ for
more information.

-----

.. method:: iBeacon::getAdvData

.. method:: altBeacon::getAdvData


**Description**

Get current beacon advertising data.

**Syntax**

.. code:: cpp

  uint8_t* getAdvData(void);

**Parameters**

The function requires no input parameter.

**Returns**

A uint8_t pointer to the structure containing beacon advertising data.

**Example Code**

NA

**Notes and Warnings**

Avoid changing the beacon data through the returned pointer, use the
member functions instead.

-----

.. method:: iBeacon::getScanRsp

.. method:: altBeacon::getScanRsp


**Description**

Get current beacon advertising scan response data.

**Syntax**

.. code:: cpp

  uint8_t* getScanRsp(void);

**Parameters**

The function requires no input parameter.

**Returns**

A uint8_t pointer to the structure containing beacon advertising scan
response data.

**Example Code**

NA

**Notes and Warnings**

Avoid changing the beacon data through the returned pointer, use the
member functions instead.

-----

.. method:: altBeacon::getRSVD


**Description**

Get current Reserved value.

**Syntax**

.. code:: cpp

  uint8_t getRSVD(void);

**Parameters**

The function requires no input parameter.

**Returns**

An 8-bit unsigned integer containing the current Reserved value.

**Example Code**

NA

**Notes and Warnings**

Reserved for use by the manufacturer to implement special features.
The interpretation of this value is to be defined by the manufacturer
and is to be evaluated based on the MFG ID value. Refer
to https://altbeacon.org/ for more information.

-----

.. method:: altBeacon::setRSVD


**Description**

Set Reserved value.

**Syntax**

.. code:: cpp

  void setRSVD(uint8_t rsvd);

**Parameters**

``rsvd`` : desired Reserved value

**Returns**

The function returns nothing.

**Example Code**

NA

**Notes and Warnings**

Reserved for use by the manufacturer to implement special features.
The interpretation of this value is to be defined by the manufacturer
and is to be evaluated based on the MFG ID value. Refer
to https://altbeacon.org/ for more information.
