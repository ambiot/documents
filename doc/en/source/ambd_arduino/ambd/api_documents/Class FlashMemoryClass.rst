Class EpdIF
============
**FlashMemoryClass Class**

| **Description**
| Defines a class of Flash memory API

| **Syntax**
| class FlashMemoryClass

**Members**

+----------------------------------+----------------------------------+
| **Public Constructors**          |                                  |
+==================================+==================================+
| Fl                               | Constructs a FlashMemoryClass    |
| ashMemoryClass::FlashMemoryClass | object                           |
+----------------------------------+----------------------------------+
| Fla                              | Deconstructs a FlashMemoryClass  |
| shMemoryClass::~FlashMemoryClass | object                           |
+----------------------------------+----------------------------------+
| **Public Methods**               |                                  |
+----------------------------------+----------------------------------+
| FlashMemoryClass::begin          | Initialize/Re-initialize the     |
|                                  | base address and size            |
+----------------------------------+----------------------------------+
| FlashMemoryClass::read           | Read the content to buf          |
+----------------------------------+----------------------------------+
| FlashMemoryClass::update         | Write buf back to flash memory   |
+----------------------------------+----------------------------------+
| FlashMemoryClass::readWord       | Read 4 bytes from flash memory   |
+----------------------------------+----------------------------------+
| FlashMemoryClass::writeWord      | Write 4 bytes into flash memory  |
+----------------------------------+----------------------------------+
| FlashMemoryClass::buf_size       | The buf size                     |
+----------------------------------+----------------------------------+
| FlashMemoryClass::*buf           | The buf to be operated           |
+----------------------------------+----------------------------------+

**FlashMemoryClass::FlashMemoryClass**

| **Description**
| Constructs a FlashMemoryClass object.

| **Syntax**
| FlashMemoryClass(unsigned int \_base_address, unsigned int
  \_buf_size);

| **Parameters**
| \_base_address: The base address to operate.
| \_buf_size: The buf size for mirror a copy to reduce flash memory
  operation

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: FleshMemory_Basic
| This example demonstrates the basic use of flash memory. Since boot
  count is stored in flash, each time upon device boot up, the boot
  count will be read from the flash, add one, then write back to the
  flash. Ameba’s flash memory can be edit in a unit of a sector which
  has the size of 4K bytes.
| Direct read from flash memory is allowed. To write data into flash
  memory, each bit on flash memory can only change from ‘1’ to ‘0’ and
  it cannot change from ‘0’ to ‘1’. To make sure the data are correctly
  written we do erase the flash memory sector before write data on it.

**#include <FlashMemory.h>**

**void** setup() {

FlashMemory.read();

**if** (FlashMemory.buf[0] == *0xFF*) {

FlashMemory.buf[0] = *0x00*;

FlashMemory.update();

Serial.println("write count to 0");

} **else** {

FlashMemory.buf[0]++;

FlashMemory.update();

Serial.print("Boot count: ");

Serial.println(FlashMemory.buf[0]);

}

}

**void** loop() {

delay(1000);

}

| Example: ReadWriteOneWord
| This example shows how to request flash memory larger than default
  0x4000, and read/write one specific word (32-bit).

**#include <FlashMemory.h>**

**void** setup() {

unsigned **int** value;

/\* request flash size 0x4000 from 0xFC000 \*/

FlashMemory.begin(*0xFC000*, *0x4000*);

/\* read one word (32-bit) from 0xFC000 plus offset 0x3F00 \*/

value = FlashMemory.readWord(*0x3F00*);

printf("value is 0x%08X\r\n", value);

**if** (value == *0xFFFFFFFF*) {

value = 0;

} **else** {

value++;

}

/\* write one word (32-bit) to 0xFC000 plus offset 0x3F00 \*/

FlashMemory.writeWord(*0x3F00*, value);

}

**void** loop() {

// put your main code here, to run repeatedly:

}

| **Notes and Warnings**
| Include “FlashMemory.h” to use the class function.
|  

**FlashMemoryClass::begin**

| **Description**
| Initialize/Re-initialize the base address and size. The base address
  shell aligns with the size of 0x1000. And the size shell is multiple
  of 0x1000.

| **Syntax**
| void begin(unsigned int \_base_address, unsigned int \_buf_size);

| **Parameters**
| \_base_address: The base address
| \_buf_size: The desired work size

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: FleshMemory_Basic
| This example demonstrates the basic use of flash memory. Since boot
  count is stored in flash, each time upon device boot up, the boot
  count will be read from the flash, add one, then write back to the
  flash. Ameba’s flash memory can be edit in a unit of a sector which
  has the size of 4K bytes.
| Example: ReadWriteOneWord
| This example shows how to request flash memory larger than default
  0x4000, and read/write one specific word (32-bit).
| Details of the example codes can be found in the previous section of
  “FlashMemoryClass:: FlashMemoryClass”.

| **Notes and Warnings**
| Include “FlashMemory.h” to use the class function.
|  

**FlashMemoryClass::read**

| **Description**
| Read the content to buf. Read flash memory into the buf. The size
  would be 0x1000.

| **Syntax**
| void read(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: FleshMemory_Basic
| This example demonstrates the basic use of flash memory. Since boot
  count is stored in flash, each time upon device boot up, the boot
  count will be read from the flash, add one, then write back to the
  flash. Ameba’s flash memory can be edit in a unit of a sector which
  has the size of 4K bytes.
| Details of the example codes can be found in the previous section of
  “FlashMemoryClass:: FlashMemoryClass”.

| **Notes and Warnings**
| Include “FlashMemory.h” to use the class function.
|  

**FlashMemoryClass::update**

| **Description**
| Write buf back to flash memory. Write flash memory with the content of
  the buffer. The size is 0x1000.

| **Syntax**
| void update(bool erase = true);

| **Parameters**
| erase: By default, it is true and erases flash memory before writing
  to it

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: FleshMemory_Basic
| This example demonstrates the basic use of flash memory. Since boot
  count is stored in flash, each time upon device boot up, the boot
  count will be read from the flash, add one, then write back to the
  flash. Ameba’s flash memory can be edit in a unit of a sector which
  has the size of 4K bytes.
| Details of the example codes can be found in the previous section of
  “FlashMemoryClass:: FlashMemoryClass”.

| **Notes and Warnings**
| Include “FlashMemory.h” to use the class function.
|  

**FlashMemoryClass::readWord**

| **Description**
| Read 4 bytes from flash memory. Read 4 byte from specific offset based
  on base address.

| **Syntax**
| unsigned int readWord(unsigned int offset);

| **Parameters**
| offset: The offset according to the base address

| **Returns**
| The read data with a size of 4 bytes

| **Example Code**
| Example: ReadWriteOneWord
| This example shows how to request flash memory larger than default
  0x4000, and read/write one specific word (32-bit).
| Details of the example codes can be found in the previous section of
  “FlashMemoryClass:: FlashMemoryClass”.

| **Notes and Warnings**
| Include “FlashMemory.h” to use the class function.
|  

**FlashMemoryClass::writeWord**

| **Description**
| Write 4 bytes into flash memory. It will try to write 4 bytes first.
  If the read data differ from the write data, then we buffer the sector
  of flash memory, erase it, and write correct data back to it.

| **Syntax**
| void writeWord(unsigned int offset, unsigned int data);

| **Parameters**
| offset: The offset according to the base address
| data: The data to be written

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: ReadWriteOneWord
| This example shows how to request flash memory larger than default
  0x4000, and read/write one specific word (32-bit).
| Details of the example codes can be found in the previous section of
  “FlashMemoryClass:: FlashMemoryClass”.

| **Notes and Warnings**
| Include “FlashMemory.h” to use the class function.
|  

**FlashMemoryClass::buf_size**

| **Description**
| The buf size (It can be regarded as work size).

| **Syntax**
| unsigned int buf_size;

| **Example Code**
| Example: FlashMemory_Basic
| This example demonstrates the basic use of flash memory. Since boot
  count is stored in flash, each time upon device boot up, the boot
  count will be read from the flash, add one, then write back to the
  flash. Ameba’s flash memory can be edit in a unit of a sector which
  has the size of 4K bytes.
| Details of the example codes can be found in the previous section of
  “FlashMemoryClass:: FlashMemoryClass”.

| **Notes and Warnings**
| Include “FlashMemory.h” to use the class function.
|  

**FlashMemoryClass::*buf**

| **Description**
| The buf to be operated. Modify buf won’t change the content of the
  buf. It needs an update to write back to flash memory.

| **Syntax**
| unsigned char \*buf;

| **Example Code**
| NA

| **Notes and Warnings**
| Include “FlashMemory.h” to use the class function.
