Class BLEHIDKeyboard 
====================

**BLEHIDKeyboard Class**

**Description**

A class used for creating and managing a BLE HID Keyboard.

| **Syntax**
| class BLEHIDKeyboard

**Members**

+---------------------+------------------------------------------------+
| **Public            |                                                |
| Constructors**      |                                                |
+=====================+================================================+
| BLEHIDKeybo         | Constructs a BLEHIDKeyboard object             |
| ard::BLEHIDKeyboard |                                                |
+---------------------+------------------------------------------------+
| **Public Methods**  |                                                |
+---------------------+------------------------------------------------+
| BLEHIDKe            | Set HID report ID for the HID Keyboard and HID |
| yboard::setReportID | consumer control                               |
+---------------------+------------------------------------------------+
| BLEHIDKeybo         | Send a HID Consumer report                     |
| ard::consumerReport |                                                |
+---------------------+------------------------------------------------+
| BLEHIDKeybo         | Send a HID Keyboard report                     |
| ard::keyboardReport |                                                |
+---------------------+------------------------------------------------+
| BLEHIDKeyb          | Send a HID Consumer report indicating button   |
| oard::consumerPress | pressed                                        |
+---------------------+------------------------------------------------+
| BLEHIDKeyboa        | Send a HID Consumer report indicating button   |
| rd::consumerRelease | released                                       |
+---------------------+------------------------------------------------+
| BLEHI               | Send a HID Keyboard report indicating keys     |
| DKeyboard::keypress | pressed                                        |
+---------------------+------------------------------------------------+
| BLEHIDK             | Send a HID Keyboard report indicating keys     |
| eyboard::keyRelease | released                                       |
+---------------------+------------------------------------------------+
| BLEHIDKeyb          | Send a HID Keyboard report indicating no keys  |
| oard::keyReleaseAll | pressed                                        |
+---------------------+------------------------------------------------+
| BLEHIDKey           | Send a HID Keyboard report indicating keys     |
| board::keyCharPress | pressed to output an ASCII character           |
+---------------------+------------------------------------------------+
| BLEHIDKe            | Send a HID Keyboard report indicating keys     |
| yboard::keySequence | pressed to output an ASCII string              |
+---------------------+------------------------------------------------+

**BLEHIDKeyboard::BLEHIDKeyboard**
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

| **Description**
| Constructs a BLEHIDKeyboard object.

| **Syntax**
| BLEHIDKeyboard::BLEHIDKeyboard();

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: BLEHIDKeyboard

| **Notes and Warnings**
| NA

**BLEHIDKeyboard::setReportID**
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

| **Description**
| Set HID report ID for the HID Keyboard and HID consumer control.

| **Syntax**
| void setReportID (uint8_t reportIDKeyboard, uint8_t reportIDConsumer);

| **Parameters**
| reportIDKeyboard: The report ID for the HID keyboard device,
  corresponding to the HID report descriptor.
| reportIDConsumer: The report ID for the HID consumer control device,
  corresponding to the HID report descriptor.

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| NA

**BLEHIDKeyboard::consumerReport**
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

| **Description**
| Send a HID Consumer report.

| **Syntax**
| void consumerReport (uint16_t usage_code);

| **Parameters**
| usage_code: HID consumer control usage code for the button pressed.

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| NA

**BLEHIDKeyboard::keyboardReport**
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

| **Description**
| Send a HID Keyboard report.

| **Syntax**
| void keyboardReport (void);
| void keyboardReport (uint8_t modifiers, uint8_t keycode[6]);

| **Parameters**
| modifiers: bitmap indicating key modifiers pressed (CTRL, ALT, SHIFT).
| keycode: byte array indicating keys pressed.

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| NA

**BLEHIDKeyboard::consumerPress**
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

| **Description**
| Send a HID Consumer report indicating button pressed.

| **Syntax**
| void consumerPress (uint16_t usage_code);

| **Parameters**
| usage_code: HID consumer control usage code for the button pressed.

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| NA

**BLEHIDKeyboard::consumerRelease**
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

| **Description**
| Send a HID Consumer report indicating button released.

| **Syntax**
| void consumerRelease (void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| NA

**BLEHIDKeyboard::keypress**
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

| **Description**
| Send a HID Keyboard report indicating keys pressed.

| **Syntax**
| void keyPress (uint16_t key);

| **Parameters**
| key: HID keycode for key pressed, value ranges from 0x00 to 0xE7.

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: BLEHIDKeyboard

| **Notes and Warnings**
| NA

**BLEHIDKeyboard::keyRelease**
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

| **Description**
| Send a HID Keyboard report indicating keys released.

| **Syntax**
| void keyRelease (uint16_t key);

| **Parameters**
| key: HID keycode for key pressed, value ranges from 0x00 to 0xE7.

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| NA

**BLEHIDKeyboard::keyReleaseAll**
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

| **Description**
| Send a HID Keyboard report indicating no keys pressed.

| **Syntax**
| void keyReleaseAll(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: BLEHIDKeyboard

| **Notes and Warnings**
| NA

**BLEHIDKeyboard::keyCharPress**
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

| **Description**
| Send a HID Keyboard report indicating keys pressed to output an ASCII
  character.

| **Syntax**
| void keyCharPress (char ch);

| **Parameters**
| ch: ASCII character to output.

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| NA

**BLEHIDKeyboard::keySequence**
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

| **Description**
| Send a HID Keyboard report indicating keys pressed to output an ASCII
  string.

| **Syntax**
| void keySequence (const char\* str, uint16_t delayTime);
| void keySequence (String str, uint16_t delayTime);

| **Parameters**
| str: pointer to character string to output
| str: String object containing character string to output
| delayTime: time delay between key press and release, in milliseconds.
  Default value of 5.

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: BLEHIDKeyboard

| **Notes and Warnings**
| NA
