####################
Class USBHIDDevice
####################

**Description**

A class used for creating and managing USB HID device class

**Syntax**

.. code:: cpp

    class USBHIDDevice

**Members**

**Public Constructors**

The public constructor should not be used as this class is intended to
be a singleton class. Access member functions using the object instance
named ``USBHIDDev``.

**Public Methods**

+------------------------------------+---------------------------------+
| USBHIDDevice::setReportDescriptor  | Configure the HID report        |
|                                    | descriptor                      |
+------------------------------------+---------------------------------+
| USBHIDDevice::setUSBEndpointMPS    | Configure USB endpoint maximum  |
|                                    | packet size                     |
+------------------------------------+---------------------------------+
| US                                 | Configure USB endpoint polling  |
| BHIDDevice::setUSBEndpointInterval | interval                        |
+------------------------------------+---------------------------------+
| USBHIDDevice::setVID               | Set USB vendor ID value         |
+------------------------------------+---------------------------------+
| USBHIDDevice::setPID               | Set USB product ID value        |
+------------------------------------+---------------------------------+
| U                                  | Set USB manufacturer string     |
| SBHIDDevice::setManufacturerString |                                 |
+------------------------------------+---------------------------------+
| USBHIDDevice::setModelString       | Set USB product model string    |
+------------------------------------+---------------------------------+
| USBHIDDevice::setSerialString      | Set USB product serial number   |
|                                    | string                          |
+------------------------------------+---------------------------------+
| USBHIDDevice::USBconnected         | Check if the USB port is        |
|                                    | connected to a host             |
+------------------------------------+---------------------------------+
| USBHIDDevice::begin                | Start USB HID device            |
+------------------------------------+---------------------------------+
| USBHIDDevice::end                  | Stop USB HID device             |
+------------------------------------+---------------------------------+
| USBHIDDevice::inputReport          | Send a HID input report         |
+------------------------------------+---------------------------------+

----

.. method:: USBHIDDevice::setReportDescriptor

**Description**

Configure the HID report descriptor.

**Syntax**

.. code:: cpp

    void setReportDescriptor (uint8_t* report_desc, uint16_t len);

**Parameters**

``report_desc`` : pointer to buffer containing HID report descriptor

``len`` : HID report descriptor length in number of bytes

**Returns**

The function returns nothing.

**Example Code**

Example: USBHIDGamepad

**Notes and Warnings**

Default HID report descriptor is configured for mouse + keyboard +
consumer control.

----

.. method:: USBHIDDevice::setUSBEndpointMPS

**Description**

Configure USB endpoint maximum packet size.

**Syntax**

.. code:: cpp

    void setUSBEndpointMPS (uint8_t max_packet_size);

**Parameters**

``max_packet_size`` : maximum HID report packet size in bytes

**Returns**

The function returns nothing.

**Example Code**

Example: USBHIDGamepad

**Notes and Warnings**

The USB endpoint maximum packet size should correspond to the size of
the largest HID report defined in the HID report descriptor.

----

.. method:: USBHIDDevice::setUSBEndpointInterval

**Description**

Configure USB endpoint polling interval.

**Syntax**

.. code:: cpp

    void setUSBEndpointInterval (uint8_t poll_interval);

**Parameters**

``poll_interval`` : polling interval for USB interrupt endpoint, expressed in
milliseconds

**Returns**

The function returns nothing.

**Example Code**

NA

**Notes and Warnings**

Default polling interval is set at the minimum of 1 millisecond.

----

.. method:: USBHIDDevice::setVID

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

The VID should be configured before USBHIDDevice::begin() function is
called.

----

.. method:: USBHIDDevice::setPID

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

The PID should be configured before USBHIDDevice::begin() function is
called.

----

.. method:: USBHIDDevice::setManufacturerString

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
``USBHIDDevice::begin()`` function is called.

----

.. method:: USBHIDDevice::setModelString

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

The model string should be configured before ``USBHIDDevice::begin()``
function is called.

----

.. method:: USBHIDDevice::setSerialString

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

The serial string should be configured before USBHIDDevice::begin()
function is called.

----

.. method:: USBHIDDevice::USBconnected

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

Example: USBHIDGamepad, USBHIDKeyboard, USBHIDMouse

**Notes and Warnings**

NA

-----

.. method:: USBHIDDevice::begin

**Description**

Start USB HID device.

**Syntax**

.. code:: cpp

    void begin ();

**Parameters**

The function requires no input parameter.

**Returns**

The function returns nothing.

**Example Code**

Example: USBHIDGamepad, USBHIDKeyboard, USBHIDMouse

**Notes and Warnings**

NA

----

.. method:: USBHIDDevice::end

**Description**

Stop USB HID device.

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

.. method:: USBHIDDevice::inputReport

**Description**

Send a HID input report.

**Syntax**

.. code:: cpp

    void inputReport (uint8_t reportID, uint8_t* data, uint16_t len);

**Parameters**

``reportID`` : HID report ID of input report

``data`` : pointer to HID input report data to send

``len`` : length of HID input report data in bytes

**Returns**

The function returns nothing.

**Example Code**

NA

**Notes and Warnings**

A reportID value of 0 is not a valid report ID and will send an input
report without the report ID field.
