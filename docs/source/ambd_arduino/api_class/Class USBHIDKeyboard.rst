####################
Class USBHIDKeyboard
####################

**Description**

A class used for creating and managing a USB HID Keyboard.

**Syntax**

.. code:: cpp

    class USBHIDKeyboard

**Members**

**Public Constructors**

+-------------------------------------+--------------------------------+
| USBHIDKeyboard::USBHIDKeyboard      | Constructs a USBHIDKeyboard    |
|                                     | object                         |
+-------------------------------------+--------------------------------+

**Public Methods**

+------------------------------------+---------------------------------+
| USBHIDKeyboard::setReportID        | Set HID report ID for the HID   |
|                                    | Keyboard and HID consumer       |
|                                    | control                         |
+------------------------------------+---------------------------------+
| USBHIDKeyboard::consumerReport     | Send a HID Consumer report      |
+------------------------------------+---------------------------------+
| USBHIDKeyboard::keyboardReport     | Send a HID Keyboard report      |
+------------------------------------+---------------------------------+
| USBHIDKeyboard::consumerPress      | Send a HID Consumer report      |
|                                    | indicating button pressed       |
+------------------------------------+---------------------------------+
| USBHIDKeyboard::consumerRelease    | Send a HID Consumer report      |
|                                    | indicating button released      |
+------------------------------------+---------------------------------+
| USBHIDKeyboard::keyPress           | Send a HID Keyboard report      |
|                                    | indicating keys pressed         |
+------------------------------------+---------------------------------+
| USBHIDKeyboard::keyRelease         | Send a HID Keyboard report      |
|                                    | indicating keys released        |
+------------------------------------+---------------------------------+
| USBHIDKeyboard::keyReleaseAll      | Send a HID Keyboard report      |
|                                    | indicating no keys pressed      |
+------------------------------------+---------------------------------+
| USBHIDKeyboard::keyCharPress       | Send a HID Keyboard report      |
|                                    | indicating keys pressed to      |
|                                    | output an ASCII character       |
+------------------------------------+---------------------------------+
| USBHIDKeyboard::keySequence        | Send a HID Keyboard report      |
|                                    | indicating keys pressed to      |
|                                    | output an ASCII string          |
+------------------------------------+---------------------------------+

----

.. method:: USBHIDKeyboard::USBHIDKeyboard

**Description**

Constructs a USBHIDKeyboard object.

**Syntax**

.. code:: cpp

    USBHIDKeyboard::USBHIDKeyboard();

**Parameters**

The function requires no input parameter.

**Returns**

The function returns nothing.

**Example Code**

Example: USBHIDKeyboard

**Notes and Warnings**

NA

----

.. method:: USBHIDKeyboard::setReportID

**Description**

Set HID report ID for the HID Keyboard and HID consumer control.

**Syntax**

.. code:: cpp

    void setReportID (uint8_t reportIDKeyboard, uint8_t reportIDConsumer);

**Parameters**

``reportIDKeyboard`` : The report ID for the HID keyboard device,
corresponding to the HID report descriptor.

``reportIDConsumer`` : The report ID for the HID consumer control device,
corresponding to the HID report descriptor.

**Returns**

The function returns nothing.

**Example Code**

NA

**Notes and Warnings**

NA

----

.. method:: USBHIDKeyboard::consumerReport

**Description**

Send a HID Consumer report.

**Syntax**

.. code:: cpp

    void consumerReport (uint16_t usage_code);

**Parameters**

``usage_code`` : HID consumer control usage code for the button pressed.

**Returns**

The function returns nothing.

**Example Code**

NA

**Notes and Warnings**

NA

----

.. method:: USBHIDKeyboard::keyboardReport

**Description**

Send a HID Keyboard report.

**Syntax**

.. code:: cpp

    void keyboardReport ();

.. code:: cpp

    void keyboardReport (uint8_t modifiers, uint8_t keycode[6]);

**Parameters**

``modifiers`` : bitmap indicating key modifiers pressed (CTRL, ALT, SHIFT).

``keycode`` : byte array indicating keys pressed.

**Returns**

The function returns nothing.

**Example Code**

NA

**Notes and Warnings**

NA

----

.. method:: USBHIDKeyboard::consumerPress

**Description**

Send a HID Consumer report indicating button pressed.

**Syntax**

.. code:: cpp

    void consumerPress (uint16_t usage_code);

**Parameters**

``usage_code`` : HID consumer control usage code for the button pressed.

**Returns**

The function returns nothing.

**Example Code**

NA

**Notes and Warnings**

NA

----

.. method:: USBHIDKeyboard::consumerRelease

**Description**

Send a HID Consumer report indicating button released.

**Syntax**

.. code:: cpp

    void consumerRelease ();

**Parameters**

The function requires no input parameter.

**Returns**

The function returns nothing.

**Example Code**

NA

**Notes and Warnings**

NA

-----

.. method:: USBHIDKeyboard::keyPress

**Description**

Send a HID Keyboard report indicating keys pressed.

**Syntax**

.. code:: cpp

    void keyPress (uint16_t key);

**Parameters**

``key`` : HID keycode for key pressed, value ranges from 0x00 to 0xE7.

**Returns**

The function returns nothing.

**Example Code**

Example: USBHIDKeyboard

**Notes and Warnings**

NA

----

.. method:: USBHIDKeyboard::keyRelease

**Description**

Send a HID Keyboard report indicating keys released.

**Syntax**

.. code:: cpp

    void keyRelease (uint16_t key);

**Parameters**

``key`` : HID keycode for key pressed, value ranges from 0x00 to 0xE7.

**Returns**

The function returns nothing.

**Example Code**

NA

**Notes and Warnings**

NA

----

.. method:: USBHIDKeyboard::keyReleaseAll

**Description**

Send a HID Keyboard report indicating no keys pressed.

**Syntax**

.. code:: cpp

    void keyReleaseAll ();

**Parameters**

The function requires no input parameter.

**Returns**

The function returns nothing.

**Example Code**

Example: USBHIDKeyboard

**Notes and Warnings**

NA

----

.. method:: USBHIDKeyboard::keyCharPress

**Description**

Send a HID Keyboard report indicating keys pressed to output an ASCII
character.

**Syntax**

.. code:: cpp

    void keyCharPress (char ch);

**Parameters**

``ch`` : ASCII character to output.

**Returns**

The function returns nothing.

**Example Code**

NA

**Notes and Warnings**

NA

----

.. method:: USBHIDKeyboard::keySequence

**Description**

Send a HID Keyboard report indicating keys pressed to output an ASCII
string.

**Syntax**

.. code:: cpp

    void keySequence (const char* str, uint16_t delayTime);

.. code:: cpp

    void keySequence (String str, uint16_t delayTime);

**Parameters**

``str``: pointer to character string to output

``str``: String object containing character string to output

``delayTime``: time delay between key press and release, in milliseconds.
Default value of 5.

**Returns**

The function returns nothing.

**Example Code**

Example: USBHIDKeyboard

**Notes and Warnings**

NA
