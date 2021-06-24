[RTL8722CSM] [RTL8722DM] Flash Memory - Use Flash Memory Larger Than 4K
========================================================================
Preparation

-  Ameba x 1

Example

Flash Memory API uses memory of 4K bytes, which is normally sufficient
for most application. However, larger memory can be provided by
specifying a specific memory address and required size.

First, open the sample code in “File” -> “Examples” ->
“AmebaFlashMemory” -> “ReadWriteOneWord”

| In this example, we specify the starting address of flash memory is
  0xFC000 and size is 0x4000 (The default starting address is 0xFF000
  and size is 0x1000).
| Then calculate correct address according to the specified offset and
  perform read/write operation. In the sample code we use offset 0x3F00,
  that is, 0xFC000 + 0x3F00 = 0xFFF00 in flash. We set the value to 0 at
  first, then increase by 1 every time Ameba reboots.

.. image:: ../media/[RTL8722CSM]_[RTL8722DM]_Flash_Memory_Use_Flash_Memory_Larger_Than_4K/image1.png
   :alt: 1
   :width: 6.5in
   :height: 3.975in

Code Reference

We can use the flash api we used in previous flash memory example, but
we need to use begin() function to specify the desired starting address
and memory size.

FlashMemory.begin(0xFC000, 0x4000);

Use readWord() to read the value stored in a memory address. In the
example, we read the value stored in memory offset 0x3F00, that is
0xFC000 + 0x3F00 = 0xFFF00. readWord() function reads a 32-bit value and
returns it.

value = FlashMemory.readWord(0x3F00);

Use writeWord() to write to a memory address. The first argument is the
memory offset, the second argument is the value to write to memory.

FlashMemory.writeWord(0x3F0C, value);
