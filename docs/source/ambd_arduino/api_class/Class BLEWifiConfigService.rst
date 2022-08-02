############################
Class BLEWifiConfigService
############################


**Description**

A class used for managing a BLE WiFi configuration service running on
the device.

**Syntax**

.. code:: cpp

  class BLEWifiConfigService

**Members**

+----------------------------------+----------------------------------+
| **Public Constructors**          |                                  |
+==================================+==================================+
| BLEWifiCon                       | Only one instance of this class  |
| figService::BLEWifiConfigService | should be created                |
+----------------------------------+----------------------------------+

+----------------------------------+----------------------------------+
| **Public Methods**               |                                  |
+==================================+==================================+
| BLEWifiConfigService::begin      | Start background thread to       |
|                                  | process WiFi configuration       |
|                                  | commands                         |
+----------------------------------+----------------------------------+
| BLEWifiConfigService::end        | Stop background thread           |
|                                  | processing WiFi configuration    |
|                                  | commands                         |
+----------------------------------+----------------------------------+
| BLEWifiConfigService::addService | Add the service to the BLE stack |
+----------------------------------+----------------------------------+
| BLEWifiConfigService::advData    | Get advertising data correctly   |
|                                  | formatted for WiFi configuration |
|                                  | service                          |
+----------------------------------+----------------------------------+

------

BLEWifiConfigService::BLEWifiConfigService


**Description**

Create an instance of the BLEWifiConfigService object.

**Syntax**

.. code:: cpp

  void BLEWifiConfigService ();

**Parameters**

The function requires no input parameter.

**Returns**

The function returns nothing.

**Example Code**

Example: BLEWifiConfig

**Notes and Warnings**

Only one instance of this class / service should be created.

-----

.. method:: BLEWifiConfigService::begin


**Description**

Start background thread to process WiFi configuration commands.

**Syntax**

.. code:: cpp

  void begin();

**Parameters**

The function requires no input parameter.

**Returns**

The function returns nothing.

**Example Code**

Example: BLEWifiConfig

**Notes and Warnings**

NA

-----

.. method:: BLEWifiConfigService::end


**Description**

Stop background thread processing WiFi configuration commands.

**Syntax**

.. code:: cpp

  void end();

**Parameters**

The function requires no input parameter.

**Returns**

The function returns nothing.

**Example Code**

NA

**Notes and Warnings**

NA

-----

.. method:: BLEWifiConfigService::addService


**Description**

Add the WiFi configuration service to the BLE stack.

**Syntax**

.. code:: cpp

  void addService();

**Parameters**

The function requires no input parameter.

**Returns**

The function returns nothing.

**Example Code**

Example: BLEWifiConfig

**Notes and Warnings**

NA

-----

.. method:: BLEWifiConfigService::advData


**Description**

Get advertising data correctly formatted for WiFi configuration
service.

**Syntax**

.. code:: cpp

  BLEAdvertData advData();

**Parameters**

The function requires no input parameter.

**Returns**

The function returns a BLEAdvertData object that contains the required
advertising data fields for the WiFi configuration service to work.

**Example Code**

Example: BLEWifiConfig

**Notes and Warnings**

The advertisement data needs to be correctly formatted for the
corresponding smartphone app to recognise the device. WiFi
configuration service advertisement data requires the local BT
address, and should be called only after peripheral mode is started
and may also require stopping and restarting the advertising process.
