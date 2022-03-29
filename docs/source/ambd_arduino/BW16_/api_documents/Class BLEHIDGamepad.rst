Class BLEHIDGamepad
===================

**BLEHIDGamepad Class**

**Description**

A class used for creating and managing a BLE HID Gamepad.

| **Syntax**
| class BLEHIDGamepad

**Members**

+--------------------+-------------------------------------------------+
| **Public           |                                                 |
| Constructors**     |                                                 |
+====================+=================================================+
| BLEHIDGame         | Constructs a BLEHIDGamepad object               |
| pad::BLEHIDGamepad |                                                 |
+--------------------+-------------------------------------------------+
| **Public Methods** |                                                 |
+--------------------+-------------------------------------------------+
| BLEHIDGa           | Set HID report ID for the HID Gamepad           |
| mepad::setReportID |                                                 |
+--------------------+-------------------------------------------------+
| BLEHIDGame         | Send a HID Gamepad report                       |
| pad::gamepadReport |                                                 |
+--------------------+-------------------------------------------------+
| BLEHIDGa           | Send a HID Gamepad report indicating buttons    |
| mepad::buttonPress | pressed                                         |
+--------------------+-------------------------------------------------+
| BLEHIDGame         | Send a HID Gamepad report indicating buttons    |
| pad::buttonRelease | released                                        |
+--------------------+-------------------------------------------------+
| BLEHIDGamepad      | Send a HID Gamepad report indicating no buttons |
| ::buttonReleaseAll | pressed                                         |
+--------------------+-------------------------------------------------+
| BLE                | Send a HID Gamepad report indicating hat switch |
| HIDGamepad::setHat | position                                        |
+--------------------+-------------------------------------------------+
| BLEH               | Send a HID Gamepad report indicating position   |
| IDGamepad::setAxes | of all axes                                     |
+--------------------+-------------------------------------------------+
| BLEHIDGam          | Send a HID Gamepad report indicating position   |
| epad::setLeftStick | of axes corresponding to left analog stick      |
+--------------------+-------------------------------------------------+
| BLEHIDGame         | Send a HID Gamepad report indicating position   |
| pad::setRightStick | of axes corresponding to right analog stick     |
+--------------------+-------------------------------------------------+
| BLEHIDGa           | Send a HID Gamepad report indicating position   |
| mepad::setTriggers | of axes corresponding to triggers               |
+--------------------+-------------------------------------------------+

**BLEHIDGamepad::BLEHIDGamepad**
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

| **Description**
| Constructs a BLE object

| **Syntax**
| BLEHIDGamepad::BLEHIDGamepad();

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: BLEHIDGamepad

| **Notes and Warnings**
| By default, the BLEHIDGamepad class assumes the HID report descriptor
  implements a gamepad device with 16 buttons, 6 16-bit axes and an
  8-direction hat switch. This class will not work if a different
  gamepad report descriptor is implemented.

**BLEHIDGamepad::setReportID**
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

| **Description**
| Set HID report ID for the HID Gamepad.

| **Syntax**
| void setReportID (uint8_t reportID);

| **Parameters**
| reportID: The report ID for the gamepad device, corresponding to the
  HID report descriptor.

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: BLEHIDGamepad

| **Notes and Warnings**
| HID report ID should start at 1. Some systems may consider a report ID
  of 0 as invalid.

**BLEHIDGamepad::gamepadReport**
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

| **Description**
| Send a HID Gamepad report.

| **Syntax**
| void gamepadReport (hid_gamepad_report_t\* report);
| void gamepadReport (uint16_t buttons, uint8_t hat, int16_t x, int16_t
  y, int16_t z, int16_t Rz, int16_t Rx, int16_t Ry);

| **Parameters**
| report: pointer to gamepad report structure containing data on all
  inputs
| buttons: bitmap indicating state of each button. 1 = pressed, 0 =
  released.
| hat: position of hat switch. Valid values:
| – GAMEPAD_HAT_CENTERED = 0
| – GAMEPAD_HAT_UP = 1
| – GAMEPAD_HAT_UP_RIGHT = 2
| – GAMEPAD_HAT_RIGHT = 3
| – GAMEPAD_HAT_DOWN_RIGHT = 4
| – GAMEPAD_HAT_DOWN = 5
| – GAMEPAD_HAT_DOWN_LEFT = 6
| – GAMEPAD_HAT_LEFT = 7
| – GAMEPAD_HAT_UP_LEFT = 8
| x: position of x axis. Integer value from -32767 to 32767.
| y: position of y axis. Integer value from -32767 to 32767.
| z: position of z axis. Integer value from -32767 to 32767.
| Rz: position of Rz axis. Integer value from -32767 to 32767.
| Rx: position of Rx axis. Integer value from -32767 to 32767.
| Ry: position of Ry axis. Integer value from -32767 to 32767.

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: BLEHIDGamepad

| **Notes and Warnings**
| NA

**BLEHIDGamepad::buttonPress**
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

| **Description**
| Send a HID Gamepad report indicating buttons pressed.

| **Syntax**
| void buttonPress (uint16_t buttons);

| **Parameters**
| buttons: bitmap indicating buttons pressed. 1 = pressed.

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| NA

**BLEHIDGamepad::buttonRelease**
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

| **Description**
| Send a HID Gamepad report indicating buttons released.

| **Syntax**
| void buttonRelease (uint16_t buttons);

| **Parameters**
| buttons: bitmap indicating buttons released. 1 = released.

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| NA

**BLEHIDGamepad::buttonReleaseAll**
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

| **Description**
| Send a HID Gamepad report indicating no buttons pressed.

| **Syntax**
| void buttonReleaseAll (void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: BLEHIDGamepad

| **Notes and Warnings**
| NA

**BLEHIDGamepad::setHat**
~~~~~~~~~~~~~~~~~~~~~~~~~

| **Description**
| Send a HID Gamepad report indicating hat switch position.

| **Syntax**
| void setHat (uint8_t hat);

| **Parameters**
| hat: position of hat switch. Valid values:
| – GAMEPAD_HAT_CENTERED = 0
| – GAMEPAD_HAT_UP = 1
| – GAMEPAD_HAT_UP_RIGHT = 2
| – GAMEPAD_HAT_RIGHT = 3
| – GAMEPAD_HAT_DOWN_RIGHT = 4
| – GAMEPAD_HAT_DOWN = 5
| – GAMEPAD_HAT_DOWN_LEFT = 6
| – GAMEPAD_HAT_LEFT = 7
| – GAMEPAD_HAT_UP_LEFT = 8

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| NA

**BLEHIDGamepad::setAxes**
~~~~~~~~~~~~~~~~~~~~~~~~~~

| **Description**
| Send a HID Gamepad report indicating position of all axes.

| **Syntax**
| void setAxes (int16_t x, int16_t y, int16_t z, int16_t Rz, int16_t Rx,
  int16_t Ry);

| **Parameters**
| x: position of x axis. Integer value from -32767 to 32767.
| y: position of y axis. Integer value from -32767 to 32767.
| z: position of z axis. Integer value from -32767 to 32767.
| Rz: position of Rz axis. Integer value from -32767 to 32767.
| Rx: position of Rx axis. Integer value from -32767 to 32767.
| Ry: position of Ry axis. Integer value from -32767 to 32767.

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: BLEHIDGamepad

| **Notes and Warnings**
| NA

**BLEHIDGamepad::setLeftStick**
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

| **Description**
| Send a HID Gamepad report indicating position of axes corresponding to
  left analog stick.

| **Syntax**
| void setLeftStick (int16_t x, int16_t y);

| **Parameters**
| x: position of x axis. Integer value from -32767 to 32767.
| y: position of y axis. Integer value from -32767 to 32767.

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| NA

**BLEHIDGamepad::setRightStick**
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

| **Description**
| Send a HID Gamepad report indicating position of axes corresponding to
  right analog stick.

| **Syntax**
| void setLeftStick (int16_t z, int16_t Rz);

| **Parameters**
| z: position of z axis. Integer value from -32767 to 32767.
| Rz: position of Rz axis. Integer value from -32767 to 32767.

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| NA

**BLEHIDGamepad::setTriggers**
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

| **Description**
| Send a HID Gamepad report indicating position of axes corresponding to
  triggers.

| **Syntax**
| void setTriggers (int16_t Rx, int16_t Ry);

| **Parameters**
| Rx: position of Rx axis. Integer value from -32767 to 32767.
| Ry: position of Ry axis. Integer value from -32767 to 32767.

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| NA
