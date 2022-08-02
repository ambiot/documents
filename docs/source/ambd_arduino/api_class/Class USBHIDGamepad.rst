####################
Class USBHIDGamepad
####################

**Description**

A class used for creating and managing a USB HID Gamepad.

**Syntax**

.. code:: cpp

    class USBHIDGamepad

**Members**

**Public Constructors**

+--------------------------------------+-------------------------------+
| USBHIDGamepad::USBHIDGamepad         | Constructs a USBHIDGamepad    |
|                                      | object                        |
+--------------------------------------+-------------------------------+

**Public Methods**

+------------------------------------+---------------------------------+
| USBHIDGamepad::setReportID         | Set HID report ID for the HID   |
|                                    | Gamepad                         |
+------------------------------------+---------------------------------+
| USBHIDGamepad::gamepadReport       | Send a HID Gamepad report       |
+------------------------------------+---------------------------------+
| USBHIDGamepad::buttonPress         | Send a HID Gamepad report       |
|                                    | indicating buttons pressed      |
+------------------------------------+---------------------------------+
| USBHIDGamepad::buttonRelease       | Send a HID Gamepad report       |
|                                    | indicating buttons released     |
+------------------------------------+---------------------------------+
| USBHIDGamepad::buttonReleaseAll    | Send a HID Gamepad report       |
|                                    | indicating no buttons pressed   |
+------------------------------------+---------------------------------+
| USBHIDGamepad::setHat              | Send a HID Gamepad report       |
|                                    | indicating hat switch position  |
+------------------------------------+---------------------------------+
| USBHIDGamepad::setAxes             | Send a HID Gamepad report       |
|                                    | indicating position of all axes |
+------------------------------------+---------------------------------+
| USBHIDGamepad::setLeftStick        | Send a HID Gamepad report       |
|                                    | indicating position of axes     |
|                                    | corresponding to left analog    |
|                                    | stick                           |
+------------------------------------+---------------------------------+
| USBHIDGamepad::setRightStick       | Send a HID Gamepad report       |
|                                    | indicating position of axes     |
|                                    | corresponding to right analog   |
|                                    | stick                           |
+------------------------------------+---------------------------------+
| USBHIDGamepad::setTriggers         | Send a HID Gamepad report       |
|                                    | indicating position of axes     |
|                                    | corresponding to triggers       |
+------------------------------------+---------------------------------+

----

.. method:: USBHIDGamepad::USBHIDGamepad

**Description**

Constructs a USBHIDGamepad object.

**Syntax**

.. code:: cpp

    USBHIDGamepad::USBHIDGamepad ();

**Parameters**

The function requires no input parameter.

**Returns**

The function returns nothing.

**Example Code**

Example: USBHIDGamepad

**Notes and Warnings**

By default, the USBHIDGamepad class assumes the HID report descriptor
implements a gamepad device with 16 buttons, 6 axes with 16-bit
resolution and an 8-direction hat switch. This class will not work if a
different gamepad report descriptor is implemented.

----

.. method:: USBHIDGamepad::setReportID

**Description**

Set HID report ID for the HID Gamepad.

**Syntax**

.. code:: cpp

    void setReportID (uint8_t reportID);

**Parameters**

``reportID`` : The report ID for the gamepad device, corresponding to the HID
report descriptor.

**Returns**

The function returns nothing.

**Example Code**

NA

**Notes and Warnings**

HID report ID should start at 1. Some systems may consider a report ID
of 0 as invalid.

----

.. method:: USBHIDGamepad::gamepadReport

**Description**

Send a HID Gamepad report.

**Syntax**

.. code:: cpp

    void gamepadReport (hid_gamepad_report_t* report);

.. code:: cpp

    void gamepadReport (uint16_t buttons, uint8_t hat, int16_t x, int16_t y,
    int16_t z, int16_t Rz, int16_t Rx, int16_t Ry);

**Parameters**

``report`` : pointer to gamepad report structure containing data on all
inputs

``buttons`` : bitmap indicating state of each button. 1 = pressed, 0 =
released.

``hat`` : position of hat switch. Valid values:

-  GAMEPAD_HAT_CENTERED = 0

-  GAMEPAD_HAT_UP = 1

-  GAMEPAD_HAT_UP_RIGHT = 2

-  GAMEPAD_HAT_RIGHT = 3

-  GAMEPAD_HAT_DOWN_RIGHT = 4

-  GAMEPAD_HAT_DOWN = 5

-  GAMEPAD_HAT_DOWN_LEFT = 6

-  GAMEPAD_HAT_LEFT = 7

-  GAMEPAD_HAT_UP_LEFT = 8

``x`` : position of x axis. Integer value from -32767 to 32767.

``y`` : position of y axis. Integer value from -32767 to 32767.

``z`` : position of z axis. Integer value from -32767 to 32767.

``Rz`` : position of Rz axis. Integer value from -32767 to 32767.

``Rx`` : position of Rx axis. Integer value from -32767 to 32767.

``Ry`` : position of Ry axis. Integer value from -32767 to 32767.

**Returns**

The function returns nothing.

**Example Code**

Example: USBHIDGamepad

**Notes and Warnings**

NA

----

.. method:: USBHIDGamepad::buttonPress

**Description**

Send a HID Gamepad report indicating buttons pressed.

**Syntax**

.. code:: cpp

    void buttonPress (uint16_t buttons);

**Parameters**

``buttons`` : bitmap indicating buttons pressed. 1 = pressed.

**Returns**

The function returns nothing.

**Example Code**

NA

**Notes and Warnings**

NA

----

.. method:: USBHIDGamepad::buttonRelease

**Description**

Send a HID Gamepad report indicating buttons released.

**Syntax**

.. code:: cpp

    void buttonRelease (uint16_t buttons);

**Parameters**

``buttons`` : bitmap indicating buttons released. 1 = released.

**Returns**

The function returns nothing.

**Example Code**

NA

**Notes and Warnings**

NA

----

.. method:: USBHIDGamepad::buttonReleaseAll

**Description**

Send a HID Gamepad report indicating no buttons pressed.

**Syntax**

.. code:: cpp

    void buttonReleaseAll ();

**Parameters**

The function takes no parameter.

**Returns**

The function returns nothing.

**Example Code**

Example: USBHIDGamepad

**Notes and Warnings**

NA

----

.. method:: USBHIDGamepad::setHat

**Description**

Send a HID Gamepad report indicating hat switch position.

**Syntax**

.. code:: cpp

    void setHat (uint8_t hat);

**Parameters**

``hat`` : position of hat switch. Valid values:

-  GAMEPAD_HAT_CENTERED = 0

-  GAMEPAD_HAT_UP = 1

-  GAMEPAD_HAT_UP_RIGHT = 2

-  GAMEPAD_HAT_RIGHT = 3

-  GAMEPAD_HAT_DOWN_RIGHT = 4

-  GAMEPAD_HAT_DOWN = 5

-  GAMEPAD_HAT_DOWN_LEFT = 6

-  GAMEPAD_HAT_LEFT = 7

-  GAMEPAD_HAT_UP_LEFT = 8

**Returns**

The function returns nothing.

**Example Code**

NA

**Notes and Warnings**

NA

----

.. method:: USBHIDGamepad::setAxes

**Description**

Send a HID Gamepad report indicating position of all axes.

**Syntax**

.. code:: cpp

    void setAxes (int16_t x, int16_t y, int16_t z, int16_t Rz, int16_t Rx,
    int16_t Ry);

**Parameters**

``x`` : position of x axis. Integer value from -32767 to 32767.

``y`` : position of y axis. Integer value from -32767 to 32767.

``z`` : position of z axis. Integer value from -32767 to 32767.

``Rz`` : position of Rz axis. Integer value from -32767 to 32767.

``Rx`` : position of Rx axis. Integer value from -32767 to 32767.

``Ry`` : position of Ry axis. Integer value from -32767 to 32767.

**Returns**

The function returns nothing.

**Example Code**

Example: USBHIDGamepad

**Notes and Warnings**

NA

----

.. method:: USBHIDGamepad::setLeftStick

**Description**

Send a HID Gamepad report indicating position of axes corresponding to
left analog stick.

**Syntax**

.. code:: cpp

    void setLeftStick (int16_t x, int16_t y);

**Parameters**

``x``: position of x axis. Integer value from -32767 to 32767.

``y`` : position of y axis. Integer value from -32767 to 32767.

**Returns**

The function returns nothing.

**Example Code**

NA

**Notes and Warnings**

NA

----

.. method:: USBHIDGamepad::setRightStick**

**Description**

Send a HID Gamepad report indicating position of axes corresponding to
right analog stick.

**Syntax**

.. code:: cpp

    void setLeftStick (int16_t z, int16_t Rz);

**Parameters**

``z`` : position of z axis. Integer value from -32767 to 32767.

``Rz`` : position of Rz axis. Integer value from -32767 to 32767.

**Returns**

The function returns nothing.

**Example Code**

NA

**Notes and Warnings**

NA

----

.. method:: USBHIDGamepad::setTrigger

**Description**

Send a HID Gamepad report indicating position of axes corresponding to
triggers.

**Syntax**

.. code:: cpp

    void setTriggers (int16_t Rx, int16_t Ry);

**Parameters**

``Rx`` : position of Rx axis. Integer value from -32767 to 32767.

``Ry`` : position of Ry axis. Integer value from -32767 to 32767.

**Returns**

The function returns nothing.

**Example Code**

NA

**Notes and Warnings**

NA