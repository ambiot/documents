Class BLEAddr
======================
**BLEAddr Class**

**Description**

A class used for managing Bluetooth addresses.

| **Syntax**
| class BLEAddr

**Members**

+-------------------------+-------------------------------------------+
| **Public Constructors** |                                           |
+=========================+===========================================+
| BLEAddr::BLEAddr        | Constructs a BLEAddr object               |
+-------------------------+-------------------------------------------+
| **Public Methods**      |                                           |
+-------------------------+-------------------------------------------+
| BLEAddr::str            | Get the Bluetooth address represented as  |
|                         | a formatted string                        |
+-------------------------+-------------------------------------------+
| BLEAddr::data           | Get the Bluetooth address represented as  |
|                         | an integer array                          |
+-------------------------+-------------------------------------------+

**BLEAddr::BLEAddr**

| **Description**
| Constructs a BLEAddr object.

| **Syntax**
| BLEAddr::BLEAddr(void);
| BLEAddr::BLEAddr(uint8_t (&addr)[6]);
| BLEAddr::BLEAddr(const char\* str);

| **Parameters**
| addr: An array of 6 bytes containing the desired Bluetooth address.
| str: A character string representing the desired Bluetooth address.

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| When expressed as a string, the Bluetooth address should be written as
  6 bytes in hexadecimal format, using a colon “:” to separate the bytes
  is acceptable (example – 00:11:22:33:EE:FF).

**BLEAddr::str**

| **Description**
| Get the Bluetooth address represented as a formatted string.

| **Syntax**
| const char\* str(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns a pointer to a character string containing the
  hexadecimal representation of the Bluetooth address.

| **Example Code**
| Example: BLEScan

| **Notes and Warnings**
| The Bluetooth address expressed as a string will be written as 6 bytes
  in hexadecimal format, with a colon “:” separating the bytes (example
  – 00:11:22:33:EE:FF).

**BLEAddr::data**

| **Description**
| Get the Bluetooth address represented as an integer array.

| **Syntax**
| uint8_t\* data(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns a pointer to a 6 byte array containing the
  Bluetooth address.

| **Example Code**
| NA

| **Notes and Warnings**
| The Bluetooth address is stored with MSB at array index [5].
