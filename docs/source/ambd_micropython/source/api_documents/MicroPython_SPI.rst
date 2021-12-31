####
SPI
####

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#0070C0; font-size:26px">`
**API Documents**
:raw-html:`</p>`

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Constructors**
:raw-html:`</p>`

| **SPI(**\ *unit_id*\ [required], *baudrate*\ [optional], *polarity*\ [optional], *phase*\ [optional], *databits*\ [optional], *firstbit*\ [optional], *miso*\ [optional], *mosi*\ [optional], *sck*\ [optional], *mode*\ [optional]\ **)**
| Create a SPI object and configure it using other parameters. This allows you to then read/write data on the SPI bus.

- ``unit_id``: The unit ID of the hardware SPI, assume default value if left blank
- ``baudrate``: The speed of SPI
- ``polarity``: one of factor determining SPI mode. (deprecated)
- ``phase``: one of factor determining SPI mode. (deprecated)
- ``databits``: number of data bits
- ``Firstbit``: this determine whether first bit is MSB or LSB
- ``miso```: miso pin. (deprecated)
- ``mosi``: mosi pin. (deprecated)
- ``sck``: clock pin. (deprecated)
- ``mode``: either MASTER mode or SLAVE mode

.. note::  
   All optional parameters have default values as follows:

.. table:: 
   :align: center

   ========= =============
   Parameter Default
   ========= =============
   Baudrate  2000000 Hz
   Polarity  Inactive_low
   Phase     Toggle_middle
   Databits  8
   Firstbit  MSB
   Miso      N.A.
   Mosi      N.A.
   Sck       N.A.
   Mode      MASTER
   ========= =============

There is currently 2 set of SPI, they are:

.. table:: 
   :align: center

   ==== ===== ===== ===== =====
   unit MOSI  MISO  SCK   CS
   ==== ===== ===== ===== =====
   0    PB_18 PB_19 PB_20 PB_21
   1    PB_4  PB_5  PB_6  PB_7
   ==== ===== ===== ===== =====

.. note:: 
   both unit support master mode, but only ``unit 0`` supports slave mode.

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Methods**
:raw-html:`</p>`

| **SPI.read()**
| This method waits and read data received in SPI buffer, then return the data received. Works in both master and slave mode.

| **SPI.write(**\ *value*\ [required]\ **)**
| This method writes an integer value to SPI bus. Works in both master and slave mode.

- **value**: an integer value to be sent on SPI bus