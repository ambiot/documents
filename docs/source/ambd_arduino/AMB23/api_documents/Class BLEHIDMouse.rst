Class BLEHIDMouse 
=================

**BLEHIDMouse Class**

**Description**

A class used for creating and managing a BLE HID Mouse.

| **Syntax**
| class BLEHIDMouse

**Members**

+-----------------------+----------------------------------------------+
| **Public              |                                              |
| Constructors**        |                                              |
+=======================+==============================================+
| BLE                   | Constructs a BLEHIDMouse object              |
| HIDMouse::BLEHIDMouse |                                              |
+-----------------------+----------------------------------------------+
| **Public Methods**    |                                              |
+-----------------------+----------------------------------------------+
| BLE                   | Set HID report ID for the HID Mouse          |
| HIDMouse::setReportID |                                              |
+-----------------------+----------------------------------------------+
| BLE                   | Send a HID Mouse report                      |
| HIDMouse::mouseReport |                                              |
+-----------------------+----------------------------------------------+
| BL                    | Send a HID Mouse report indicating buttons   |
| EHIDMouse::mousePress | pressed                                      |
+-----------------------+----------------------------------------------+
| BLEH                  | Send a HID Mouse report indicating buttons   |
| IDMouse::mouseRelease | released                                     |
+-----------------------+----------------------------------------------+
| BLEHIDM               | Send a HID Mouse report indicating no        |
| ouse::mouseReleaseAll | buttons pressed                              |
+-----------------------+----------------------------------------------+
| B                     | Send a HID Mouse report indicating mouse     |
| LEHIDMouse::mouseMove | movement                                     |
+-----------------------+----------------------------------------------+
| BLE                   | Send a HID Mouse report indicating mouse     |
| HIDMouse::mouseScroll | scroll wheel movement                        |
+-----------------------+----------------------------------------------+

**BLEHIDMouse::BLEHIDMouse**
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

| **Description**
| Constructs a BLEHIDMouse object.

| **Syntax**
| BLEHIDMouse::BLEHIDMouse();

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: BLEHIDMouse

| **Notes and Warnings**
| NA

**BLEHIDMouse::setReportID**
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

| **Description**
| Set HID report ID for the HID Mouse.

| **Syntax**
| void setReportID (uint8_t reportID);

| **Parameters**
| reportID: The report ID for the HID mouse device, corresponding to the
  HID report descriptor.

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| NA

**BLEHIDMouse::mouseReport**
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

| **Description**
| Send a HID Mouse report.

| **Syntax**
| void mouseReport (hid_mouse_report_t\* report);
| void mouseReport (uint8_t buttons, int8_t x, int8_t y, int8_t scroll);

| **Parameters**
| report: pointer to mouse report structure containing data on mouse
  inputs
| buttons: bitmap indicating state of each button. 1 = pressed, 0 =
  released.
| x: mouse x-axis movement. Integer value from -127 to 127.
| y: mouse y-axis movement. Integer value from -127 to 127.
| scroll: mouse scroll wheel movement. Integer value from -127 to 127.

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| NA

**BLEHIDMouse::mousePress**
~~~~~~~~~~~~~~~~~~~~~~~~~~~

| **Description**
| Send a HID Mouse report indicating buttons pressed.

| **Syntax**
| void mousePress (uint8_t buttons);

| **Parameters**
| buttons: bitmap indicating buttons pressed. 1 = pressed.

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: BLEHIDMouse

| **Notes and Warnings**
| NA

**BLEHIDMouse::mouseRelease**
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

| **Description**
| Send a HID Mouse report indicating buttons released.

| **Syntax**
| void mouseRelease (uint8_t buttons);

| **Parameters**
| buttons: bitmap indicating buttons released. 1 = released.

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: BLEHIDMouse

| **Notes and Warnings**
| NA

**BLEHIDMouse::mouseReleaseAll**
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

| **Description**
| Send a HID Mouse report indicating no buttons pressed.

| **Syntax**
| void mouseReleaseAll(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| NA

**BLEHIDMouse::mouseMove**
~~~~~~~~~~~~~~~~~~~~~~~~~~

| **Description**
| Send a HID Mouse report indicating mouse movement.

| **Syntax**
| void mouseMove (int8_t x, int8_t y);

| **Parameters**
| x: mouse x-axis movement. Integer value from -127 to 127.
| y: mouse y-axis movement. Integer value from -127 to 127.

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: BLEHIDMouse

| **Notes and Warnings**
| NA

**BLEHIDMouse::mouseScroll**
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

| **Description**
| Send a HID Mouse report indicating mouse scroll wheel movement.

| **Syntax**
| void mouseScroll (int8_t scroll);

| **Parameters**
| scroll: mouse scroll wheel movement. Integer value from -127 to 127.

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: BLEHIDMouse

| **Notes and Warnings**
| NA
