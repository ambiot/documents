Class BLEDevice
====================
**BLEDevice Class**

| **Description**
| A class used for general control and management of BLE functions.

| **Syntax**
| class BLEDevice

**Members**

+----------------------------------------------------------------------+
| **Public Constructors**                                              |
+======================================================================+
| The public constructor should not be used as this class is intended  |
| to be a singleton class. Access member functions using the object    |
| instance named BLE.                                                  |
+----------------------------------------------------------------------+

+--------------------------------+------------------------------------+
| **Public Methods**             |                                    |
+================================+====================================+
| BLEDevice::init                | Allocate resources required for    |
|                                | BLE functionality                  |
+--------------------------------+------------------------------------+
| BLEDevice::deinit              | Free resources used by BLE         |
|                                | functionality                      |
+--------------------------------+------------------------------------+
| BLEDevice::connected           | Check if a BLE device is connected |
+--------------------------------+------------------------------------+
| BLEDevice::setDeviceName       | Set BLE GAP device name            |
+--------------------------------+------------------------------------+
| BLEDevice::setDeviceAppearance | Set BLE GAP device appearance      |
+--------------------------------+------------------------------------+
| BLEDevice::configAdvert        | Configure BLE advertising          |
|                                | parameters                         |
+--------------------------------+------------------------------------+
| BLEDevice::configScan          | Configure BLE scan parameters      |
+--------------------------------+------------------------------------+
| BLEDevice::setScanCallback     | Set callback function for BLE      |
|                                | scans                              |
+--------------------------------+------------------------------------+
| BLEDevice::beginCentral        | Start BLE stack in central mode    |
+--------------------------------+------------------------------------+
| BLEDevice::beginPeripheral     | Start BLE stack in peripheral mode |
+--------------------------------+------------------------------------+
| BLEDevice::end                 | Stop BLE stack                     |
+--------------------------------+------------------------------------+
| BLEDevice::configServer        | Configure BLE stack for services   |
+--------------------------------+------------------------------------+
| BLEDevice::addService          | Add a service to the BLE stack     |
+--------------------------------+------------------------------------+
| BLEDevice::configClient        | Configure BLE stack for clients    |
+--------------------------------+------------------------------------+
| BLEDevice::addClient           | Add a client to the BLE stack      |
+--------------------------------+------------------------------------+
| BLEDevice::getLocalAddr        | Get local device Bluetooth address |
+--------------------------------+------------------------------------+

**BLEDevice::init**

| **Description**
| Allocate resources required for BLE functionality.

| **Syntax**
| void init(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: BLEBatteryService

| **Notes and Warnings**
| Call this member function first before using any other member
  functions in the BLEDevice class.
|  

**BLEDevice::deinit**

| **Description**
| Free up resources used for BLE functionality.

| **Syntax**
| void deinit(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| Call this member function last after all other BLE operations are
  stopped.
|  

**BLEDevice::connected**

| **Description**
| Check if a BLE device is connected.

| **Syntax**
| bool connected(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| TRUE if another BLE device is connected, FALSE if no BLE device is
  connected.

| **Example Code**
| NA

| **Notes and Warnings**
| NA
|  

**BLEDevice::setDeviceName**

| **Description**
| Set the BLE GAP device name.

| **Syntax**
| void setDeviceName(String devName);

| **Parameters**
| devName: desired device name contained in an Arduino String object

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| The GAP device name has a maximum length of 39 characters. Other
  devices can see this name after a BLE connection is established. This
  name is separate and different from the device name sent in a BLE
  advertisement, the names should be the same but are not required.
|  

**BLEDevice::setDeviceAppearance**

| **Description**
| Set the BLE GAP device appearance.

| **Syntax**
| void setDeviceAppearance(uint16_t devAppearance);

| **Parameters**
| devAppearance: desired device appearance expressed as a 16-bit
  unsigned integer.

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| Refer to Bluetooth SIG assigned device appearances
  at https://www.bluetooth.com/specifications/gatt/characteristics/.
|  

**BLEDevice::configAdvert**

| **Description**
| Configure BLE advertising parameters.

| **Syntax**
| BLEAdvert\* configAdvert(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| A pointer to a BLEAdvert class instance for configuring BLE
  advertising parameters.

| **Example Code**
| Example: BLEBatteryService

| **Notes and Warnings**
| Use this member function instead of creating a BLEAdvert class
  instance manually.
|  

**BLEDevice::configScan**

| **Description**
| Configure BLE scanning parameters.

| **Syntax**
| BLEScan\* configScan(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| A pointer to a BLEScan class instance for configuring BLE scanning
  parameters.

| **Example Code**
| Example: BLEScan

#include "BLEDevice.h"

#include "BLEScan.h"

int dataCount = 0;

void scanFunction(T_LE_CB_DATA\* p_data) {

printf("\r\nScan Data %d\r\n", ++dataCount);

BLE.configScan()->printScanInfo(p_data);

}

void setup() {

BLE.init();

BLE.configScan()->setScanMode(GAP_SCAN_MODE_ACTIVE);

BLE.configScan()->setScanInterval(500); // Start a scan every 500ms

BLE.configScan()->setScanWindow(250); // Each scan lasts for 250ms

// Provide a callback function to process scan data.

// If no function is provided, default BLEScan::printScanInfo is used

BLE.setScanCallback(scanFunction);

BLE.beginCentral(0);

BLE.configScan()->startScan(5000); // Repeat scans for 5 seconds, then
stop

}

void loop() {

}

| **Notes and Warnings**
| Use this member function instead of creating a BLEScan class instance
  manually.
|  

**BLEDevice::setScanCallback**

| **Description**
| Set a callback function for processing BLE scan results.

| **Syntax**
| void setScanCallback(void (*scanCB)(T_LE_CB_DATA*));

| **Parameters**
| scanCB: a function that returns nothing and takes in a scan data
  pointer of type T_LE_CB_DATA\*

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: BLEScan

| **Notes and Warnings**
| Use this member function to set a callback function that will be
  called for each BLE device scan result found.
|  

**BLEDevice::beginCentral**

| **Description**
| Start the BLE stack in central mode.

| **Syntax**
| void beginCentral(uint8_t connCount);

| **Parameters**
| connCount: maximum number of allowed connected devices. If no argument
  is provided, default to maximum allowed connected devices for specific
  board.

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: BLEScan
| The function returns nothing.

| **Notes and Warnings**
| Use this member function to start the device in BLE central mode,
  after other BLE parameters are set correctly.
|  

**BLEDevice::beginPeripheral**

| **Description**
| Start the BLE stack in peripheral mode.

| **Syntax**
| void beginPeripheral(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: BLEBatteryService

| **Notes and Warnings**
| Use this member function to start the device in BLE peripheral mode,
  after other BLE parameters are set correctly.
|  

**BLEDevice::end**

| **Description**
| Stop the BLE stack.

| **Syntax**
| void end(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| Use this member function to stop the device operating in either BLE
  peripheral mode or BLE central mode.
|  

**BLEDevice::configServer**

| **Description**
| Configure the BLE stack for services.

| **Syntax**
| void configServer(uint8_t maxServiceCount);

| **Parameters**
| maxServiceCount: Maximum number of services that will run on the
  device

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: BLEBatteryService

| **Notes and Warnings**
| Use this member function before adding any service to the BLE stack.
|  

**BLEDevice::addService**

| **Description**
| Add a new service to the BLE stack.

| **Syntax**
| void addService(BLEService& newService);

| **Parameters**
| newService: the service to be added, defined using a BLEService class
  object.

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: BLEBatteryService

| **Notes and Warnings**
| N/A
|  

**BLEDevice::configClient**

| **Description**
| Configure the BLE stack for clients.

| **Syntax**
| void configClient();

| **Parameters**
| The function requries no input parameter.

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: BLEBatteryClient

| **Notes and Warnings**
| Use this member function before adding any client to the BLE stack.
|  

**BLEDevice::addClient**

| **Description**
| Add a new client to the BLE stack.

| **Syntax**
| BLEClient\* addClient(uint8_t connId);

| **Parameters**
| connId: the connection ID of the connected device to create a client
  for.

| **Returns**
| The function returns a pointer to a BLEClient class object,
  corresponding to the device with the specified connection ID, which
  can be used to access the services and characteristics on the
  connected device.

| **Example Code**
| Example: BLEBatteryClient

| **Notes and Warnings**
| Only one client should be added per connected device.
| The BLEClient object and any service, characteristic, descriptor
  associated with the connected device will be deleted when the device
  is disconnected.
|  

**BLEDevice::getLocalAddr**

| **Description**
| Get local device Bluetooth address.

| **Syntax**
| void getLocalAddr(uint8_t (&addr)[GAP_BD_ADDR_LEN]);

| **Parameters**
| addr: 6 byte array to store local device Bluetooth address.

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| Local device address is only available after starting in central or
  peripheral mode. This function will return all zeros for the address
  if central or peripheral mode is not in operation.
