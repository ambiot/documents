Class EpdIF
=============
**EpdIf Class**

| **Description**
| A class used to control the electronic paper display internal
  functions.

| **Syntax**
| class EpdIf

**Members**

+----------------------------------------------------------------------+
| **Public Constructors**                                              |
+======================================================================+
| A public constructor should not be used as this class is intended to |
| be a singleton class. Access member functions using the object       |
| instance named EpdIf.                                                |
+----------------------------------------------------------------------+

+--------------------------------+------------------------------------+
| **Public Methods**             |                                    |
+================================+====================================+
| EpdIf::EPD_Dis_Part            | Put an image buffer to the frame   |
|                                | memory, but not updating the       |
|                                | display                            |
+--------------------------------+------------------------------------+
| EpdIf::EPD_SetFrame            | Put display data to the frame      |
|                                | memory, usually used for setup     |
|                                | text display functions             |
+--------------------------------+------------------------------------+
| EpdIf::EPD_SetRAMValue_BaseMap | To read image data stored in the   |
|                                | RAM, but not display on the screen |
+--------------------------------+------------------------------------+
| EpdIf::EPD_SetFrameMemory      | To read image data stored in the   |
|                                | buffer, but not display on the     |
|                                | screen                             |
+--------------------------------+------------------------------------+
| EpdIf::EPD_UpdateDisplay       | Update the display                 |
+--------------------------------+------------------------------------+
| EpdIf::EPD_ClearScreen_White   | Clear the frame memory with the    |
|                                | White color, but not updating the  |
|                                | display                            |
+--------------------------------+------------------------------------+
| EpdIf::EPD_ClearScreen_Black   | Clear the frame memory with the    |
|                                | Black color, but not updating the  |
|                                | display                            |
+--------------------------------+------------------------------------+
| EpdIf::EPD_Busy                | Wait until the Busy pin goes to    |
|                                | low, which is the idle state       |
+--------------------------------+------------------------------------+
| EpdIf::EPD_Reset               | Used for the Epaper module reset.  |
|                                | Often used to awaken the module in |
|                                | deep sleep                         |
+--------------------------------+------------------------------------+
| EpdIf::EPD_Sleep               | After this command is transmitted, |
|                                | the chip would enter the           |
|                                | deep-sleep mode to save power      |
+--------------------------------+------------------------------------+

**EpdIf:: EPD_Dis_Part**

| **Description**
| Put an image buffer to the frame memory, but not updating the display.

| **Syntax**
| void EPD_Dis_Part(unsigned int x_start, unsigned int y_start, const
  unsigned char\* datas, unsigned int PART_COLUMN, unsigned int
  PART_LINE);

| **Parameters**
| x_start: starting position of the x-axis
| y_start: starting position of the y-axis
| datas: data to be displayed on the e-paper module
| PART_COLUMN: height of the display area
| PART_LINE: width of the display area

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| NA

**EpdIf:: EPD_SetFrame**

| **Description**
| Put display data to the frame memory, usually used for setup text
  display functions.

| **Syntax**
| void EPD_SetFrame(const unsigned char\* image_buffer, int x, int y,
  int image_width, int image_height);

| **Parameters**
| image_buffer: the buffer which stores the data to be displayed on the
  e-paper module, usually used to display texts.
| x: starting position of the x-axis
| y: starting position of the y-axis
| image_width: width of the display area
| image_height: height of the display area

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| NA

**EpdIf:: EPD_SetRAMValue_BaseMap**

| **Description**
| To read image data stored in the RAM, but not display on the screen.

| **Syntax**
| void EPD_SetRAMValue_BaseMap(const unsigned char\* datas);

| **Parameters**
| datas: contains the black and white information that forms the image
  stored in RAM

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| NA

**EpdIf:: EPD_SetFrameMemory**

| **Description**
| To read image data stored in the buffer but not display on the screen.

| **Syntax**
| void EPD_SetFrameMemory(const unsigned char\* image_buffer);

| **Parameters**
| image_buffer: the buffer where stores the image data in hexadecimal
  numbers

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| NA

**EpdIf:: EPD_UpdateDisplay**

| **Description**
| Update the ePaper display module. Always combined used with functions
  set the frames.

| **Syntax**
| void EPD_UpdateDisplay(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| There are 2 memory areas embedded in the e-paper display but once this
  function is called, then the next action of SetFrameMemory or
  ClearScreen will set the other memory area.

**EpdIf:: EPD_ClearScreen_White**

| **Description**
| Clear the frame memory with the White color.

| **Syntax**
| void EpdIf::EPD_ClearScreen_White(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| If the users want to see the actual display on the e-paper screen, the
  function EPD_UpdateDisplay() is required to be added behind this code.

**EpdIf:: EPD_ClearScreen_Black**

| **Description**
| Clear the frame memory with the Black color.

| **Syntax**
| void EpdIf::EPD_ClearScreen_Black(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| If the users want to see the actual display on the e-paper screen, the
  function EPD_UpdateDisplay() is required to be added behind this code.

**EpdIf:: EPD_Busy**

| **Description**
| Wait until the busy_pin goes to low, which is the idle state.

| **Syntax**
| void EpdIf::EPD_Busy(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| If the users want to see the actual display on the e-paper screen, the
  function EPD_UpdateDisplay() is required to be added behind this code.

**EpdIf:: EPD_Reset**

| **Description**
| This command will let the E-paper module reset, it is often used to
  awaken the module in while it’s in the deep sleep mode, you will find
  more details in the function EpdIf:: EPD_Sleep().

| **Syntax**
| void EpdIf::EPD_Reset(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| NA

**EpdIf::EPD_Sleep**

| **Description**
| After this command is transmitted, the chip would enter the deep-sleep
  mode to save power. The deep sleep mode would return to standby by
  hardware reset. You can use EPD:: Init() to awaken the E-paper module.

| **Syntax**
| void EpdIf::EPD_Sleep(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| NA
