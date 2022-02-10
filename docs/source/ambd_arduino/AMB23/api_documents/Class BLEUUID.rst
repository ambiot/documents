Class BLEUUID
=================
**BLEUUID Class**

| **Description**
| A class used for creating and managing UUIDs.

| **Syntax**
| class BLEUUID

**Members**

======================= ===============================================
**Public Constructors** 
======================= ===============================================
BLEUUID::BLEUUID        Create a UUID object
**Public Methods**       
BLEUUID::str            Get the character string representation of UUID
BLEUUID::data           Get the binary representation of UUID
BLEUUID::length         Get the length of UUID
======================= ===============================================

**BLEUUID::BLEUUID**

| **Description**
| Create a UUID object from a UUID character string

| **Syntax**
| BLEUUID();
| BLEUUID(const char\* str);
| BLEUUID(uint8_t\* data, uint8_t length);

| **Parameters**
| str: UUID character string used to created object
| data: pointer to byte array containing the desired UUID
| length: number of bytes in array containing the desired UUID. Valid
  values of 2, 4 or 16

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
|  

**BLEUUID::str**

| **Description**
| Get the character string representation of UUID

| **Syntax**
| const char\* str(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| Pointer to a character string representation of the UUID

| **Example Code**
| NA

| **Notes and Warnings**
|  

**BLEUUID::data**

| **Description**
| Get the binary representation of UUID

| **Syntax**
| const uint8_t\* data(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| Pointer to an unsigned 8-bit integer array containing the UUID
  expressed in binary form

| **Example Code**
| NA

| **Notes and Warnings**
| Returned pointer is of const uint8_t\* type and will not allow
  changing of the data.
|  

**BLEUUID::length**

| **Description**
| Get the length of UUID

| **Syntax**
| uint8_t length(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| Length of the UUID, in terms of bytes

| **Example Code**
| NA

| **Notes and Warnings**
| A 4-character UUID will be 16 bits / 2 bytes long.
| A 32-character UUID will be 128 bits / 16 bytes long.
