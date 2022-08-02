####################
Class USBHIDMouse
####################


**Description**

A class used for creating and managing a USB HID Mouse.

**Syntax**

.. code:: cpp

    class USBHIDMouse

**Members**

**Public Constructors**

+--------------------------------+-------------------------------------+
| USBHIDMouse::USBHIDMouse       | Constructs a USBHIDMouse object     |
+--------------------------------+-------------------------------------+

**Public Methods**

+------------------------------------+---------------------------------+
| USBHIDMouse::setReportID           | Set HID report ID for the HID   |
|                                    | Mouse                           |
+------------------------------------+---------------------------------+
| USBHIDMouse::mouseReport           | Send a HID Mouse report         |
+------------------------------------+---------------------------------+
| USBHIDMouse::mousePress            | Send a HID Mouse report         |
|                                    | indicating buttons pressed      |
+------------------------------------+---------------------------------+
| USBHIDMouse::mouseRelease          | Send a HID Mouse report         |
|                                    | indicating buttons released     |
+------------------------------------+---------------------------------+
| USBHIDMouse::mouseReleaseAll       | Send a HID Mouse report         |
|                                    | indicating no buttons pressed   |
+------------------------------------+---------------------------------+
| USBHIDMouse::mouseMove             | Send a HID Mouse report         |
|                                    | indicating mouse movement       |
+------------------------------------+---------------------------------+
| USBHIDMouse::mouseScroll           | Send a HID Mouse report         |
|                                    | indicating mouse scroll wheel   |
|                                    | movement                        |
+------------------------------------+---------------------------------+

----

.. method:: USBHIDMouse::USBHIDMouse

**Description**

Constructs a USBHIDMouse object.

**Syntax**

.. code:: cpp

    USBHIDMouse::USBHIDMouse ();

**Parameters**

The function requires no input parameter.

**Returns**

The function returns nothing.

**Example Code**

Example: USBHIDMouse

**Notes and Warnings**

NA

----

.. method:: USBHIDMouse::setReportID

**Description**

Set HID report ID for the HID Mouse.

**Syntax**

.. code:: cpp

    void setReportID (uint8_t reportID);

**Parameters**

``reportID`` : The report ID for the HID mouse device, corresponding to the
HID report descriptor.

**Returns**

The function returns nothing.

**Example Code**

NA

**Notes and Warnings**

NA

----

.. method:: USBHIDMouse::mouseReport

**Description**

Send a HID Mouse report.

**Syntax**

.. code:: cpp

    void mouseReport (hid_mouse_report_t* report);

.. code:: cpp

    void mouseReport (uint8_t buttons, int8_t x, int8_t y, int8_t scroll);

**Parameters**

``report`` : pointer to mouse report structure containing data on mouse
inputs

``buttons`` : bitmap indicating state of each button. 1 = pressed, 0 =
released.

``x`` : mouse x-axis movement. Integer value from -127 to 127.

``y`` : mouse y-axis movement. Integer value from -127 to 127.

``scroll`` : mouse scroll wheel movement. Integer value from -127 to 127.

**Returns**

The function returns nothing.

**Example Code**

NA

**Notes and Warnings**

NA

-----

.. method:: USBHIDMouse::mousePress

**Description**

Send a HID Mouse report indicating buttons pressed.

**Syntax**

.. code:: cpp

    void mousePress (uint8_t buttons);

**Parameters**

``buttons`` : bitmap indicating buttons pressed. 1 = pressed.

**Returns**

The function returns nothing.

**Example Code**

Example: USBHIDMouse

**Notes and Warnings**

NA

----

.. method:: USBHIDMouse::mouseRelease

**Description**

Send a HID Mouse report indicating buttons released.

**Syntax**

.. code:: cpp

    void mouseRelease (uint8_t buttons);

**Parameters**

``buttons`` : bitmap indicating buttons released. 1 = released.

**Returns**

The function returns nothing.

**Example Code**

Example: USBHIDMouse

**Notes and Warnings**

NA

----

.. method:: USBHIDMouse::mouseReleaseAll

**Description**

Send a HID Mouse report indicating no buttons pressed.

**Syntax**

.. code:: cpp

    void mouseReleaseAll ();

**Parameters**

The function requires no input parameter.

**Returns**

The function returns nothing.

**Example Code**

NA

**Notes and Warnings**

NA

----

.. method:: USBHIDMouse::mouseMove

**Description**

Send a HID Mouse report indicating mouse movement.

**Syntax**

.. code:: cpp

    void mouseMove (int8_t x, int8_t y);

**Parameters**

``x`` : mouse x-axis movement. Integer value from -127 to 127.

``y`` : mouse y-axis movement. Integer value from -127 to 127.

**Returns**

The function returns nothing.

**Example Code**

Example: USBHIDMouse

**Notes and Warnings**

NA

----

.. method:: USBHIDMouse::mouseScroll

**Description**

Send a HID Mouse report indicating mouse scroll wheel movement.

**Syntax**

.. code:: cpp

    void mouseScroll (int8_t scroll);

**Parameters**

``scroll`` : mouse scroll wheel movement. Integer value from -127 to 127.

**Returns**

The function returns nothing.

**Example Code**

Example: USBHIDMouse

**Notes and Warnings**

NA
