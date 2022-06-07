��          �                 Y     R   g  V   �      L   .  9   {  k   �  (   !  �   J  q   	  )  {  <   �  5   �  H     �  a  Z   �  W   >	  W   �	  �   �	  [   �
  @   ;  d   |  *   �  �     �   �  N  I  :   �  0   �  H      :raw-html:`<p style="color:#E67E22; font-size:24px">` **Code Reference** :raw-html:`</p>` :raw-html:`<p style="color:#E67E22; font-size:24px">` **Example** :raw-html:`</p>` :raw-html:`<p style="color:#E67E22; font-size:24px">` **Preparation** :raw-html:`</p>` Ameba provides Flash Memory component for data storage and the data can be preserved when the power is off if necessary, e.g., compiled program. To avoid the memory space overlapped with the program on Ameba, the Flash API uses the tail part of the address space, with sector size 4K. By default, the Flash Memory API uses address 0xFF000~0xFFFFF to store data. Compile and upload to Ameba, then press the reset button. First open the example, ``“File” -> “Example” -> “AmebaFlashMemory” -> “FlashMemoryBasic”`` Flash Memory - Store data in FlashEEProm In this example, we store the value of boot times in flash memory. Every time Ameba reboots, it reads the boot times from flash, increases the value by 1, and writes it back to flash memory. Open the Serial Monitor, press the reset button for a few times. Then you can see the boot times value increases. There is limitation when writing to flash memory. That is, you can not directly write data to the same address you used in last write. To do that correctly, you need erase the sector first. The Flash API of Ameba uses a 4K SRAM to record the user modification and do the erase/write task together. Use ``FlashMemory.buf[0] = 0x00;`` to manipulate the 4K buf. Use ``FlashMemory.read()`` to read from Flash memory. Use ``FlashMemory.update();`` to update the data in buf to Flash Memory. Project-Id-Version: AmebaDocs EPUB3
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2022-02-18 03:07+0000
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: zh_CN
Language-Team: zh_CN <LL@li.org>
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.10.1
 :raw-html:`<p style="color:#E67E22; font-size:24px">` **程式码说明** :raw-html:`</p>` :raw-html:`<p style="color:#E67E22; font-size:24px">` **范例说明** :raw-html:`</p>` :raw-html:`<p style="color:#E67E22; font-size:24px">` **材料准备** :raw-html:`</p>` Ameba提供Flash Memory供储存永久性的资料，让Ameba断电之后这些资料可以保存。这些资料包括编译好的程式。为了避免覆盖到程式，Flash Api使用位址较后面的区段，大小为一个sector = 4K。 Flash Memory API预设使用位址0xFF000的Flash memory，大小为4K，即0xFF000~0xFFFFF 将程式码编绎并上传到Ameba，结束之后按Reset按钮 首先打开范例, “File” -> “Examples” -> “AmebaFlashMemory” -> “FlashMemoryBasic” Flash Memory - 记录资讯在 FlashEEPROM 这个范例里将开机的次数存到flash里面，重开机之后将这个值读出来加1，再写回到flash里面，并显示在Serial Monitor上。 接着打开Serial Monitor，按个几次Reset按钮，会看到Boot count随着开机次数而增加，表示开机次数成功地写入到Flash Memory里面。 Flash Memory在读的时候可以直接读，但写入时则有限制，如果前一次该位址已被写入，则这次写入会有问题。要正确的写入，需要先erase sector，但会一次清除4K大小的Flash memory。所以Flash API里面使用4K大小的SRAM，记录使用者要做的修改，最后再一并erase/write FlashMemory.buf[0] = 0x00;可以直接操作4K大小的buf FlashMemory.read()可以读出Flash memory的值 FlashMemory.update();可以将buf所有内容更新到Flash Memory里面 