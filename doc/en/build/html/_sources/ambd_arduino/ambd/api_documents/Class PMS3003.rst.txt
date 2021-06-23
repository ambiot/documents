Class HttpClient
==================
**PMS3003 Class**

| **Description**
| Defines a class to work with PMS3003 air quality sensor on Ameba.

| **Syntax**
| class PMS3003

**Members**

+-----------------------------------+-----------------------------------------+
| **Public Constructors**           |                                         |
+===================================+=========================================+
| PMS3003::PMS3003                  | Constructs a PMS3003 object             |
+-----------------------------------+-----------------------------------------+
| **Public Methods**                |                                         |
+-----------------------------------+-----------------------------------------+
| PMS3003::begin                    | Initialize hardware UART                |
+-----------------------------------+-----------------------------------------+
| PMS3003::end                      | Free allocated space thus stopping UART |
+-----------------------------------+-----------------------------------------+
| PMS3003::get_pm1p0_cf1            | Get PM1.0 under correction factor = 1   |
+-----------------------------------+-----------------------------------------+
| PMS3003:: get_pm2p5_cf1           | Get PM2.5 under correction factor = 1   |
+-----------------------------------+-----------------------------------------+
| PMS3003:: get_pm10_cf1            | Get PM10 under correction factor = 1    |
+-----------------------------------+-----------------------------------------+
| PMS3003:: get_pm1p0_air           | Get PM1.0 air quality                   |
+-----------------------------------+-----------------------------------------+
| PMS3003:: get_pm2p5_air           | Get PM2.5 air quality                   |
+-----------------------------------+-----------------------------------------+
| PMS3003:: get_pm10_air            | Get PM10 air quality                    |
+-----------------------------------+-----------------------------------------+
| PMS3003:update_cache              | Updates the cache memory                |
+-----------------------------------+-----------------------------------------+
| PMS3003::pms3003_handle_interrupt | Set up the serial event handler         |
+-----------------------------------+-----------------------------------------+

**PMS3003::PMS3003**

| **Description**
| Constructs a PMS3003 object and initialize the pin mapping.

| **Syntax**
| PMS3003::PMS3003(int \_rx, int \_tx, int \_set, int \_reset)

| **Parameters**
| \_rx: RX pin of UART
| \_tx: TX pin of UART
| \_set: Set pin
| \_reset: Reset pin

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| NA
|  

**PMS3003::begin**

| **Description**
| Initialize hardware UART and allocate space for serial buffer

| **Syntax**
| void PMS3003::begin(void)

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| NA
|  

**PMS3003::end**

| **Description**
| Free serial buffer space and stop UART

| **Syntax**
| void PMS3003::end(void)

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| NA
|  

**PMS3003::get_pm1p0_cf1**

| **Description**
| Get PM1.0 under correction factor = 1

| **Syntax**
| int PMS3003::get_pm1p0_cf1(void)

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns the value “pm1p0_cf1” as an integer.

| **Example Code**
| NA

| **Notes and Warnings**
| NA
|  

**PMS3003::get_pm2p5_cf1**

| **Description**
| Get PM2.5 under correction factor = 1

| **Syntax**
| int PMS3003::get_pm2p5_cf1(void)

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns the value of “pm2p5_cf1” as an integer.

| **Example Code**
| NA

| **Notes and Warnings**
| NA
|  

**PMS3003::get_pm10_cf1**

| **Description**
| Get PM10 under correction factor = 1

| **Syntax**
| int PMS3003::get_pm10_cf1(void)

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns the value of “pm10_cf1” as an integer.

| **Example Code**
| NA

| **Notes and Warnings**
| NA
|  

**PMS3003::get_pm1p0_air**

| **Description**
| Get PM1.0 air quality

| **Syntax**
| int PMS3003::get_pm1p0_air(void)

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns the value of “pm1p0_air” as an integer.

| **Example Code**
| NA

| **Notes and Warnings**
| NA
|  

**PMS3003::get_pm2p5_air**

| **Description**
| Get PM2.5 air quality

| **Syntax**
| int PMS3003::get_pm2p5_air(void)

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns the value of “pm2p5_air” as an integer.

| **Example Code**
| NA

| **Notes and Warnings**
| NA
|  

**PMS3003::get_pm10_air**

| **Description**
| Get PM10 air quality

| **Syntax**
| int PMS3003::get_pm10_air(void)

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns the value of “pm10_air” as an integer.

| **Example Code**
| NA

| **Notes and Warnings**
| NA
|  

**PMS3003::pms3003_handle_interrupt**

| **Description**
| Set up the serial event handler

| **Syntax**
| void pms3003_handle_interrupt(uint32_t id, uint32_t event)

| **Parameters**
| id: device identifier
| event: Serial event for handling incoming data

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| NA
|  

**PMS3003::update_cache**

| **Description**
| Serves the function of updating cache memory. One package has 32
  bytes. Illustrate the formate by using below raw data: 42 4d 00 1c 00
  1b 00 21 00 29 00 1a 00 21 00 29 2b fb 04 be 00 6b 00 10 00 04 00 04
  67 00 04 46
| 42 4d : header signature
| 00 1c : frame length, 0x001c = 28 bytes (not include header and this
  field)
| 00 1b : PM1.0 under CF=1
| 00 21 : PM2.5 under CF=1
| 00 29 : PM10 under CF=1
| 00 1a : PM1.0 under air
| 00 21 : PM2.5 under air
| 00 29 : PM10 under air
| 2b fb : number of pariticle, diameter size 0.3 um in 0.1 liter air
| 04 be : number of pariticle, diameter size 0.5 um in 0.1 liter air
| 00 6b : number of pariticle, diameter size 1.0 um in 0.1 liter air
| 00 10 : number of pariticle, diameter size 2.5 um in 0.1 liter air
| 00 04 : number of pariticle, diameter size 5.0 um in 0.1 liter air
| 00 04 : number of pariticle, diameter size 10 um in 0.1 liter air
| 67 : serial number
| 00 : error code
| 04 46 :
  checksum,0x42+0x4d+0x00+0x1c+0x00+0x1b+0x00+0x21+0x00+0x29+0x00+0x1a+0x00+0x21+0x00+0x29+
  0x2b+0xfb+0x04+0xbe+0x00+0x6b+0x00+0x10+0x00+0x04+0x00+0x04+0x67+0x00
  = 0x0446

| **Syntax**
| void PMS3003::update_cache(void)

| **Parameters**
| The function requires no input parameters.

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| NA
