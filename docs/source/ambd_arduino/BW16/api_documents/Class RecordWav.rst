################
Class RecordWav
################

**Description**

A class used for control and recording of .wav file format audio data.

**Syntax**

class RecordWav

**Members**

**Public Constructors**

============================== =============================================
RecordWav:: RecordWav	        Create an instance of the RecordWav class
============================== =============================================

**Public Methods**

============================== =============================================
RecordWav::openFile	            Open a .wav file for playback
RecordWav::closeFile	        Close a previously opened file
RecordWav::fileOpened	        Check if a .wav file is already opened
RecordWav::setSampleRate	    Get the sample rate of the .wav file
RecordWav::setChannelCount	    Set the number of audio channels in the .wav file
RecordWav::setBitDepth	        Set the bit depth of each sample in the .wav file
RecordWav::getLengthMillis	    Get the current record length of the .wav file in milliseconds
RecordWav::millisToBytes	    Convert a playback duration to equivalent number of bytes
RecordWav::bytesToMillis	    Convert number of bytes to an equivalent playback duration
RecordWav::writeAudioData	    Write audio data to the .wav file
============================== =============================================

----

**RecordWav::RecordWav**

**Description**

Create a RecordWav class object.

**Syntax**

void RecordWav(void);

**Parameters**

The function requires no input parameter.

**Returns**

The function returns nothing.

**Example Code**

Example: RecordWavFile

**Notes and Warnings**

NA

----

**RecordWav::openFile**

**Description**

Open a .wav file for recording.

**Syntax**

void openFile(const char* absFilepath);

**Parameters**

absFilepath: the filepath of the .wav file to open.

**Returns**

The function returns nothing.

**Example Code**

Example: RecordWavFile

**Notes and Warnings**

NA

----

**RecordWav::closeFile**

**Description**

Close a previously opened file.

**Syntax**

void closeFile(void);

**Parameters**

The function requires no input parameter.

**Returns**

The function returns nothing.

**Example Code**

Example: RecordWavFile

**Notes and Warnings**

Any open .wav files should be closed after recording is complete, otherwise, loss of recorded audio data may occur.

----

**RecordWav::fileOpened**

**Description**

Check if a .wav file is already opened.

**Syntax**

bool fileOpened(void);

**Parameters**

The function requires no input parameter.

**Returns**

The function returns true if a .wav file is already open, false otherwise.

**Example Code**

Example: RecordWavFile

**Notes and Warnings**

NA

----

**RecordWav::setSampleRate**

**Description**

Set the recording sample rate of the .wav file.

**Syntax**

void setSampleRate(uint32_t sampleRate);

**Parameters**

sampleRate: The desired recording sample rate.

**Returns**

The function returns nothing.

**Example Code**

Example: RecordWavFile

**Notes and Warnings**

NA

----

**RecordWav::setChannelCount**

**Description**

Set the number of recording audio channels in the .wav file.

**Syntax**

void setChannelCount(uint16_t channelCount);

**Parameters**

channelCount: number of recording audio channels.

**Returns**

The function returns nothing.

**Example Code**

NA

**Notes and Warnings**

NA

----

**RecordWav::setBitDepth**

**Description**

Set the recording bit depth of each sample in the .wav file.

**Syntax**

void setBitDepth(uint16_t bitDepth);

**Parameters**

bitDepth: number of bits per sample.

**Returns**

The function returns nothing.

**Example Code**

NA

**Notes and Warnings**

NA

----

**RecordWav::getLengthMillis**

**Description**

Get the current recorded length of the .wav file in milliseconds.

**Syntax**

uint32_t getLengthMillis(void);

**Parameters**

The function requires no input parameter.

**Returns**

The function returns the current recorded length of the currently open .wav file in milliseconds.

**Example Code**

NA

**Notes and Warnings**

NA

----

**RecordWav::millisToBytes**

**Description**

Convert a playback duration to equivalent number of bytes.

**Syntax**

uint32_t millisToBytes(uint32_t ms);

**Parameters**

ms: playback duration in milliseconds.

**Returns**

The function returns the number of bytes that is equivalent to the input playback duration, converted using the current sample rate, number of channels and bit depth.

**Example Code**

NA

**Notes and Warnings**

NA

----

**RecordWav::bytesToMillis**

**Description**

Convert number of bytes to an equivalent playback duration.

**Syntax**

uint32_t bytesToMillis(uint32_t bytes);

**Parameters**

bytes: playback duration in number of bytes.

**Returns**

The function returns the time duration in milliseconds that is equivalent to the input number of bytes, converted using the current sample rate, number of channels and bit depth.

**Example Code**

NA

**Notes and Warnings**

NA

----

**RecordWav::writeAudioData**

**Description**

Write audio data to the .wav file.

**Syntax**

uint32_t writeAudioData(int8_t* src, uint32_t len);
uint32_t writeAudioData(int16_t* src, uint32_t len);

**Parameters**

src: pointer to array containing data to write to .wav file.
len: number of audio samples to write to .wav file.

**Returns**

The function returns number of audio samples written.

**Example Code**

Example: RecordWavFile

**Notes and Warnings**

NA