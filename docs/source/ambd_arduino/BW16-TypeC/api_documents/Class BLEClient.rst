Class BLEClient
===================
**BLEClient Class**

| **Description**
| A class used for discovering and accessing BLE GATT services on a
  connected remote device.

| **Syntax**
| class BLEClient

**Members**

+----------------------------------------------------------------------+
| **Public Constructors**                                              |
+======================================================================+
| No public constructor is available for this class. You can get a     |
| pointer to an instance of this class using BLEDevice::addClient().   |
+----------------------------------------------------------------------+

+----------------------------------+----------------------------------+
| **Public Methods**               |                                  |
+==================================+==================================+
| BLEClient::connected             | Check if the corresponding       |
|                                  | remote device for the client is  |
|                                  | connected                        |
+----------------------------------+----------------------------------+
| BLEClient::discoverServices      | Start service discovery process  |
|                                  | for connected device             |
+----------------------------------+----------------------------------+
| BLEClient::discoveryDone         | Determine if service discovery   |
|                                  | process has been completed       |
+----------------------------------+----------------------------------+
| BLEClient::printServices         | Format and print discovered      |
|                                  | services to serial port          |
+----------------------------------+----------------------------------+
| BLEClient::getService            | Get a specific service on the    |
|                                  | remote device                    |
+----------------------------------+----------------------------------+
| BLEClient::getConnId             |                                  |
+----------------------------------+----------------------------------+
| BLEClient::getClientId           | Get corresponding client ID      |
+----------------------------------+----------------------------------+
| BLEClient::setDisconnectCallback | Set a user function to be called |
|                                  | when the remote device is        |
|                                  | disconnected                     |
+----------------------------------+----------------------------------+

**BLEClient::connected**

| **Description**
| Check if the remote device associated with the client is still
  connected.

| **Syntax**
| bool connected();

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns TRUE if the remote device is connected.

| **Example Code**
| NA

| **Notes and Warnings**
| NA
|  

**BLEClient::discoverServices**

| **Description**
| Start the service discovery process for the connected remote device.

| **Syntax**
| void discoverServices();

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: BLEUartClient

| **Notes and Warnings**
| NA
|  

**BLEClient::discoveryDone**

| **Description**
| Check if the service discovery process has been completed.

| **Syntax**
| bool discoveryDone();

| **Parameters**
| The function requires no input parameter.

| **Returns**
| TThe function returns TRUE if the service discovery process has been
  completed successfully, FALSE if the service discovery process failed,
  is still in progress, or has yet to start.

| **Example Code**
| Example: BLEUartClient

| **Notes and Warnings**
| NA
|  

**BLEClient::printServices**

| **Description**
| Print out a formatted list of discovered services to the serial port.

| **Syntax**
| void printServices();

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| NA
|  

**BLEClient::getService**

| **Description**
| Get a service with the specified UUID on the remote device.

| **Syntax**
| BLERemoteService\* getService(const char\* uuid);
| BLERemoteService\* getService(BLEUUID uuid);

| **Parameters**
| uuid: the desired service UUID, expressed as a character array or a
  BLEUUID object.

| **Returns**
| The function returns the found service as a BLERemoteService object
  pointer, otherwise nullptr is returned if a service with the UUID is
  not found.

| **Example Code**
| Example: BLEUartClient

| **Notes and Warnings**
| NA
|  

**BLEClient::getConnId**

| **Description**
| Get the connection ID associated with the remote device.

| **Syntax**
| uint8_t getConnId;

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns the connection ID for the connected remote
  device.

| **Example Code**
| NA

| **Notes and Warnings**
| NA
|  

**BLEClient::getClientId**

| **Description**
| Get the client ID for the BLEClient object.

| **Syntax**
| T_CLIENT_ID getClientId();;

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns the BLEClient object’s client ID.

| **Example Code**
| NA

| **Notes and Warnings**
| The client ID is used when calling internal GATT client API.
|  

**BLEClient::setDisconnectCallback**

| **Description**
| Set a user function as a callback function when the remote device is
  disconnected.

| **Syntax**
| void setDisconnectCallback(void (\*fCallback) (BLEClient\* client));

| **Parameters**
| fCallback: A user callback function that returns void and takes one
  argument.
| client: A pointer to the BLEClient object corresponding to the
  disconnected remote device

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| The user callback function will be called after the remote device has
  disconnected, before the characteristics, services and client
  associated with the remote device are deleted.
