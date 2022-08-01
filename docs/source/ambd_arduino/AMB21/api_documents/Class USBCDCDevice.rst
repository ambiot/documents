####################
Class USBCDCDevice
####################

**Description**

A class for managing, transmitting, and receiving data using USB CDC ACM
device class.

**Syntax**

.. code:: cpp

    class USBCDCDevice

**Members**

**Public Constructors**

The public constructor should not be used as this class is intended to
be a singleton class. Access member functions using the object instance
named ``SerialUSB``.

**Public Methods**

+------------------------------------+---------------------------------+
| USBCDCDevice::setVID               | Set USB vendor ID value         |
+------------------------------------+---------------------------------+
| USBCDCDevice::setPID               | Set USB product ID value        |
+------------------------------------+---------------------------------+
| U                                  | Set USB manufacturer string     |
| SBCDCDevice::setManufacturerString |                                 |
+------------------------------------+---------------------------------+
| USBCDCDevice::setModelString       | Set USB product model string    |
+------------------------------------+---------------------------------+
| USBCDCDevice::setSerialString      | Set USB product serial number   |
|                                    | string                          |
+------------------------------------+---------------------------------+
| USBCDCDevice::USBconnected         | Check if the USB port is        |
|                                    | connected to a host             |
+------------------------------------+---------------------------------+
| USBCDCDevice::connected            | Check if the USB CDC serial     |
|                                    | terminal is ready on the host   |
+------------------------------------+---------------------------------+
| USBCDCDevice::dtr                  | Check DTR signal state          |
+------------------------------------+---------------------------------+
| USBCDCDevice::rts                  | Check RTS signal state          |
+------------------------------------+---------------------------------+
| USBCDCDevice::begin                | Start serial communication      |
|                                    | using USB CDC                   |
+------------------------------------+---------------------------------+
| USBCDCDevice::end                  | Stop serial communication using |
|                                    | USB CDC                         |
+------------------------------------+---------------------------------+
| USBCDCDevice::available            | Get the number of bytes         |
|                                    | (characters) available for      |
|                                    | reading from the USB serial     |
|                                    | port                            |
+------------------------------------+---------------------------------+
| USBCDCDevice::peek                 | Returns the next byte           |
|                                    | (character) of incoming serial  |
|                                    | data without removing it from   |
|                                    | the internal buffer             |
+------------------------------------+---------------------------------+
| USBCDCDevice::read                 | Reads incoming serial data      |
+------------------------------------+---------------------------------+
| USBCDCDevice::flush                | Waits for the transmission of   |
|                                    | outgoing serial data to         |
|                                    | complete                        |
+------------------------------------+---------------------------------+
| USBCDCDevice::write                | Writes binary data to the       |
|                                    | serial port                     |
+------------------------------------+---------------------------------+

----

.. method:: USBCDCDevice::setVID

**Description**

Set USB vendor ID value.

**Syntax**

.. code:: cpp

    void setVID (uint16_t VID);

**Parameters**

``VID`` : vendor ID

**Returns**

The function returns nothing.

**Example Code**

NA

**Notes and Warnings**

The VID should be configured before ``USBCDCDevice::begin()`` function is
called.

-----

.. method:: USBCDCDevice::setPID

**Description**

Set USB product ID value.

**Syntax**

.. code:: cpp

    void setPID (uint16_t PID);

**Parameters**

``PID`` : product ID

**Returns**

The function returns nothing.

**Example Code**

NA

**Notes and Warnings**

The PID should be configured before ``USBCDCDevice::begin()`` function is
called.

----

.. method:: USBCDCDevice::setManufacturerString

**Description**

Set USB manufacturer string.

**Syntax**

.. code:: cpp

    void setManufacturerString (const char* manufacturer);

**Parameters**

``manufacturer`` : Character string containing manufacturer name

**Returns**

The function returns nothing.

**Example Code**

NA

**Notes and Warnings**

The manufacturer string should be configured before
``USBCDCDevice::begin()`` function is called.

----

.. method:: USBCDCDevice::setModelString

**Description**

Set USB product model string.

**Syntax**

.. code:: cpp

    void setModelString (const char* model);

**Parameters**

``model`` : Character string containing model name

**Returns**

The function returns nothing.

**Example Code**

NA

**Notes and Warnings**

The model string should be configured before ``USBCDCDevice::begin()``
function is called.

----

.. method::: USBCDCDevice::setSerialString

**Description**

Set USB product serial number string.

**Syntax**

.. code:: cpp

    void setSerialString (const char* serial);

**Parameters**

``serial`` : Character string containing serial number

**Returns**

The function returns nothing.

**Example Code**

NA

**Notes and Warnings**

The serial string should be configured before ``USBCDCDevice::begin()``
function is called.

----

.. method:: USBCDCDevice::USBconnected

**Description**

Check if the USB port is connected to a host.

**Syntax**

.. code:: cpp

    uint8_t USBconnected ();

**Parameters**

The function requires no input parameter.

**Returns**

The function returns **TRUE** if the USB port is connected to a host, **FALSE**
if it is not connected.

**Example Code**

NA

**Notes and Warnings**

NA

----

.. method:: USBCDCDevice::connected

**Description**

Check if the USB CDC serial terminal is ready on the host.

**Syntax**

.. code:: cpp

    uint8_t connected ();

**Parameters**

The function requires no input parameter.

**Returns**

The function returns **TRUE** if the USB port is connected to a host and the
DTR and RTS signals are set, **FALSE** otherwise.

**Example Code**

NA

**Notes and Warnings**

NA

----

.. method:: USBCDCDevice::dtr

**Description**

Check DTR signal state.

**Syntax**

.. code:: cpp

    uint8_t dtr ();

**Parameters**

The function requires no input parameter.

**Returns**

The function returns the state of the DTR signal line.

**Example Code**

NA

**Notes and Warnings**

NA

----

.. method:: USBCDCDevice::rts

**Description**

Check RTS signal state.

**Syntax**

.. code:: cpp

    uint8_t rts ();

**Parameters**

The function requires no input parameter.

**Returns**

The function returns the state of the RTS signal line.

**Example Code**

NA

**Notes and Warnings**

NA

----

.. method:: USBCDCDevice::begin

**Description**

Start serial communication using USB CDC.

**Syntax**

.. code:: cpp

    void begin (uint32_t baud);

**Parameters**

``baud`` : baud rate

**Returns**

The function returns nothing.

**Example Code**

Example: USBCDCSerial

**Notes and Warnings**

The baud rate parameter has no significance in the context of a USB CDC
serial port and can be left empty.

----

.. method:: USBCDCDevice::end

**Description**

Stop serial communication using USB CDC.

**Syntax**

.. code:: cpp

    void end ();

**Parameters**

The function requires no input parameter.

**Returns**

The function returns nothing.

**Example Code**

NA

**Notes and Warnings**

NA

----

.. method:: USBCDCDevice::available

**Description**

Get the number of bytes (characters) available for reading from the USB
serial port.

**Syntax**

.. code:: cpp

    int available ();

**Parameters**

The function requires no input parameter.

**Returns**

The function returns the number of bytes received in the buffer.

**Example Code**

Example: USBCDCSerial

**Notes and Warnings**

NA

----

.. method:: USBCDCDevice::peek

**Description**

Returns the next byte (character) of incoming serial data without
removing it from the internal buffer.

**Syntax**

.. code:: cpp

    int peek ();

**Parameters**

The function requires no input parameter.

**Returns**

The function returns the next byte of received serial data without
removing it from the internal buffer.

**Example Code**

NA

**Notes and Warnings**

NA

----

.. method:: USBCDCDevice::read

**Description**

Reads incoming serial data.

**Syntax**

.. code:: cpp

    int read ();

**Parameters**

The function requires no input parameter.

**Returns**

The function returns the next byte of received serial data.

**Example Code**

Example: USBCDCSerial

**Notes and Warnings**

NA

----

.. method:: USBCDCDevice::flush

**Description**

Waits for the transmission of outgoing serial data to complete.

**Syntax**

.. code:: cpp

    void flush ();

**Parameters**

The function requires no input parameter.

**Returns**

The function returns nothing.

**Example Code**

NA

**Notes and Warnings**

NA

---- 

.. method:: USBCDCDevice::write

**Description**

Writes binary data to the serial port.

**Syntax**

.. code:: cpp

    size_t write (uint8_t data);

.. code:: cpp

    size_t write (const uint8_t* buffer, size_t size);

**Parameters**

``data`` : 1 byte of data to write to serial port

``buffer`` : pointer to buffer containing data to write to serial port

``size`` : number of bytes of data in buffer to write to serial port

**Returns**

The function returns the number of bytes written to serial port.

**Example Code**

Example: USBCDCSerial

**Notes and Warnings**

NA