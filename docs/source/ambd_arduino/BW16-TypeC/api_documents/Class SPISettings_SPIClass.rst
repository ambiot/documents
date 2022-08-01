Class SPISettings_SPIClass
===============================
**SPISettings Class**

| **Description**
| Defines a class to set SPI parameters.

| **Syntax**
| class SPISettings

**Members**

+--------------------------+------------------------------------------+
| **Public Constructors**  |                                          |
+==========================+==========================================+
| SPISettings::SPISettings | Create a SPISettings object and set SPI  |
|                          | clock speed, bit order and data mode     |
+--------------------------+------------------------------------------+

**SPISettings::SPISettings**

| **Description**
| Construct an object and configure SPI parameters — clock speed, bit
  order and data model to the preferred default value.

| **Syntax**
| SPISettings YourObject(uint32_t clock, BitOrder bitOrder, uint8_t
  dataMode);

| **Parameters**
| clock: SPI clock speed, default is 4000000
| bitOrder: order of bit stream, MSB first or LSB first, default is
  MSBFIRST
| dataMode: There are 4 modes -> SPI_MODE0~3, default is SPI_MODE0

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| This class seldom used alone, it is always used with
  beginTransaction() as a parameter in SPIClass.
|  

**SPIClass Class**

| **Description**
| Defines a class of SPI implementation for Ameba.

| **Syntax**
| class SPIClass

**Members**

+-------------------------------+-------------------------------------+
| **Public Constructors**       |                                     |
+===============================+=====================================+
| SPIClass::SPIClass            | Constructs an SPI object            |
+-------------------------------+-------------------------------------+
| **Public Methods**            |                                     |
+-------------------------------+-------------------------------------+
| SPIClass::transfer            | Transfer data through SPI           |
+-------------------------------+-------------------------------------+
| SPIClass::transfer16          | Transfer a 16-bits data through SPI |
+-------------------------------+-------------------------------------+
| SPIClass::beginTransaction    | Set slave select pin and SPI        |
|                               | initial settings                    |
+-------------------------------+-------------------------------------+
| SPIClass::endTransaction      | Stop SPI transaction                |
+-------------------------------+-------------------------------------+
| SPIClass::begin               | Associate each SPI pin to Ameba pin |
|                               | using ameba HAL APIs                |
+-------------------------------+-------------------------------------+
| SPIClass::end                 | Stop SPI master mode                |
+-------------------------------+-------------------------------------+
| SPIClass::setBitOrder         | Set MSB first or LSB first          |
+-------------------------------+-------------------------------------+
| SPIClass::setDataMode         | Set to one of the four data modes   |
+-------------------------------+-------------------------------------+
| SPIClass::setClockDivider     | Set to correct clock speed (no      |
|                               | effect on Ameba)                    |
+-------------------------------+-------------------------------------+
| SPIClass::setDefaultFrequency | Set default SPI frequency           |
+-------------------------------+-------------------------------------+

**SPIClass::SPIClass**

| **Description**
| Construct an SPI object, create a pointer to the object, and attach
  “MOSI, MISO, CLK, and SS” to each pin on Ameba.

| **Syntax**
| SPIClass(void \*pSpiObj, int mosi, int miso, int clk, int ss);

| **Parameters**
| pSpiObj: SPI pointer to the object
| mosi: master out slave in
| miso: master in slave out
| clk: clock
| ss: slave select

| **Returns**
| The function returns nothing.

| **Example Code**
| SPIClass SPI((void \*)(&spi_obj0), 11, 12, 13, 10);

| **Notes and Warnings**
| 2 SPI objects are created in the library for 2 different hardware SPI
  on Ameba (if applicable), use “SPI” for first hardware SPI and “SPI1”
  for the second.
|  

**SPIClass::transfer**

| **Description**
| Calling HAL API to send data in the buffer to the slave

| **Syntax**
| byte SPIClass::transfer (byte \_pin, uint8_t \_data, SPITransferMode
  \_mode);
| byte SPIClass::transfer (uint8_t \_data, SPITransferMode \_mode);
| void SPIClass::transfer (byte \_pin, void \*_buf, size_t \_count,
  SPITransferMode \_mode);
| void SPIClass::transfer (void \*_buf, size_t \_count, SPITransferMode
  \_mode);

| **Parameters**
| \_pin: Slave select pin
| \_data: Actual data being sent over
| \_mode: SPI transfer mode
| \_count: number of bytes of data
| \_buf: data buffer

| **Returns**
| Void or “0” in case of error, “d” in case success

| **Example Code**
| NA

| **Notes and Warnings**
| NA
|  

**SPIClass::transfer16**

| **Description**
| Same as “transfer” method above except data being of 16-bits.

| **Syntax**
| uint16_t SPIClass::transfer16(byte \_pin, uint16_t \_data,
  SPITransferMode \_mode)
| uint16_t SPIClass::transfer16(uint16_t \_data, SPITransferMode \_mode)

| **Parameters**
| \_pin: Slave select pin
| \_data: Actual data being sent over
| \_mode: SPI transfer mode

| **Returns**
| The data being transferred

| **Example Code**
| NA

| **Notes and Warnings**
| NA
|  

**SPIClass::beginTransaction**

| **Description**
| Set slave select pin and initialize SPI with default settings using
  SPISettings class.

| **Syntax**
| void SPIClass::beginTransaction(uint8_t pin, SPISettings settings)
| void SPIClass::beginTransaction(SPISettings settings)

| **Parameters**
| pin: slave select pin
| settings: an object of SPISettings class

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| Refer to SPISettings class for details of the initial settings.
|  

**SPIClass::endTransaction**

| **Description**
| Set slave select pin to 1 and stop SPI transaction.

| **Syntax**
| void SPIClass::endTransaction(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| NA
|  

**SPIClass::begin**

| **Description**
| Calling HAL APIs to initialize SPI pins to physical Ameba pins and set
  SPI format and frequency

| **Syntax**
| void SPIClass::begin(void)
| void SPIClass::begin(int ss)

| **Parameters**
| void or ss: slave select

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| This is a required method to use SPI on Ameba.
|  

**SPIClass::end**

| **Description**
| Free hardware SPI from any activity.

| **Syntax**
| void SPIClass::end(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| NA
|  

**SPIClass::setBitOrder**

| **Description**
| A specific method to set bit order to either MSB first or LSB first
  and set slave select pin.

| **Syntax**
| void SPIClass::setBitOrder(uint8_t \_pin, BitOrder \_bitOrder)
| void SPIClass::setBitOrder(BitOrder \_order)

| **Parameters**
| \_pin: slave select
| \_bitOrder: bit order -> either MSB first or LSB first
| \_order: same as above

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| NA
|  

**SPIClass::setDataMode**

| **Description**
| A specific method to set data mode to one of the 4 modes (default:
  SPI_MODE0) and set slave lave select pin.

| **Syntax**
| void SPIClass::setDataMode(uint8_t \_pin, uint8_t \_mode)
| void SPIClass::setDataMode(uint8_t \_mode)

| **Parameters**
| \_pin: slave select
| \_mode: one of the 4 modes (default: SPI_MODE0)

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| NA
|  

**SPIClass::setClockDivider**

| **Description**
| A specific method to set to divider in order to get correct clock
  speed

| **Syntax**
| void SPIClass::setClockDivider(uint8_t \_pin, uint8_t \_divider)
| void SPIClass::setClockDivider(uint8_t \_div)

| **Parameters**
| \_pin: slave select
| \_divider: clock divider
| \_div: same as above

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| This function does not affect the Ameba board.
|  

**SPIClass::setDefaultFrequency**

| **Description**
| A specific method to set default SPI frequency

| **Syntax**
| void SPIClass::setDefaultFrequency(int \_frequency)

| **Parameters**
| \_frequency: the default SPI frequency

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: PM25_on_ILI9341_TFT_LCD
| Details of the code are given in the previous section of
  AmebaILI9341:: AmebaILI9341.

| **Notes and Warnings**
| Take note that defaultFrequency = \_frequency.
