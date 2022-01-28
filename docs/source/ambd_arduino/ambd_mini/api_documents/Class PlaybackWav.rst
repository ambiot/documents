##################
Class PlaybackWav
##################

**Description**

A class used for control and playback of .wav file format audio data.

**Syntax**

class PlaybackWav

**Members**

**Public Constructors**

============================== =============================================
PlaybackWav::PlaybackWav        Create an instance of the PlaybackWav class
============================== =============================================

**Public Methods**

============================== =============================================
PlaybackWav::openFile	        Open a .wav file for playback
PlaybackWav::closeFile	        Close a previously opened file
PlaybackWav::fileOpened	        Check if a .wav file is already opened
PlaybackWav::getSampleRate	    Get the sample rate of the .wav file
PlaybackWav::getChannelCount	Get the number of audio channels in the .wav file
PlaybackWav::getBitDepth	    Get the bit depth of each sample in the .wav file
PlaybackWav::getLengthMillis	Get the playback length of the .wav file in milliseconds
PlaybackWav::getPositionMillis	Get the current playback position in milliseconds
PlaybackWav::setPositionMillis	Set the current playback position in milliseconds
PlaybackWav::millisToBytes	    Convert a playback duration to equivalent number of bytes
PlaybackWav::bytesToMillis	    Convert number of bytes to an equivalent playback duration
PlaybackWav::readAudioData	    Read audio data from the .wav file
============================== =============================================

----

**PlaybackWav::PlaybackWav**

**Description**

Create a PlaybackWav class object.

**Syntax**

void PlaybackWav(void);

**Parameters**

The function requires no input parameter.

**Returns**

The function returns nothing.

**Example Code**

NA

**Notes and Warnings**

NA

----

**PlaybackWav::fileOpened**

**Description**

Check if a .wav file is already opened.

**Syntax**

bool fileOpened(void);

**Parameters**

The function requires no input parameter.

**Returns**

The function returns true if a .wav file is already open, false otherwise.

**Example Code**

Example: RecordPlaybackWav

**Notes and Warnings**

NA

----

**PlaybackWav::getSampleRate**

**Description**

Get the sample rate of the .wav file.

**Syntax**

uint32_t getSampleRate(void);

**Parameters**

The function requires no input parameter.

**Returns**

The function returns sampling rate encoded in the .wav file header.

**Example Code**

Example: PlaybackWavFile

**Notes and Warnings**

NA

----

**PlaybackWav::getChannelCount**

**Description**

Get the number of audio channels in the .wav file.

**Syntax**

uint16_t getChannelCount(void);

**Parameters**

The function requires no input parameter.

**Returns**

The function returns channel count encoded in the .wav file header.

**Example Code**

Example: PlaybackWavFile

**Notes and Warnings**

NA

----

**PlaybackWav::getBitDepth**

**Description**

Get the bit depth of each sample in the .wav file.

**Syntax**

uint16_t getBitDepth(void);

**Parameters**

The function requires no input parameter.

**Returns**

The function returns bit depth encoded in the .wav file header.

**Example Code**

Example: PlaybackWavFile

**Notes and Warnings**

NA

----

**PlaybackWav::getLengthMillis**

**Description**

Get the playback length of the .wav file in milliseconds.

**Syntax**

uint32_t getLengthMillis(void);

**Parameters**

The function requires no input parameter.

**Returns**

The function returns the total playback length of the currently open .wav file in milliseconds.

**Example Code**

Example: PlaybackWavFile

**Notes and Warnings**

NA

----

**PlaybackWav::getPositionMillis**

**Description**

Get the current playback position in milliseconds.

**Syntax**

uint32_t getPositionMillis(void);

**Parameters**

The function requires no input parameter.

**Returns**

The function returns the current playback position of the currently open .wav file in milliseconds.

**Example Code**

Example: PlaybackWavFile

**Notes and Warnings**

NA

----

**PlaybackWav::setPositionMillis**

**Description**

Set the current playback position in milliseconds.

**Syntax**

void setPositionMillis(uint32_t pos);

**Parameters**

pos: The desired playback position expressed in milliseconds.

**Returns**

The function returns nothing.

**Example Code**

Example: PlaybackWavFile

**Notes and Warnings**

Any changes to playback position will only take effect on the next call to PlaybackWav::readAudioData. If the desired playback position is beyond the total playback length of the file, the playback position will be set to the end of file, and no audio data will be output on subsequent data reads.

----

**PlaybackWav::millisToBytes**

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

**PlaybackWav::bytesToMillis**

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

**PlaybackWav::readAudioData**

**Description**

Read audio data from the .wav file.

**Syntax**

  * ``uint32_t readAudioData(int8_t* dst, uint32_t len);``
  * ``uint32_t readAudioData(int16_t* dst, uint32_t len);``

**Parameters**

  * ``dst``: pointer to array to store data read from .wav file.
  * ``len``: number of audio samples to read from .wav file.

**Returns**

The function returns number of audio samples read.

**Example Code**

Example: PlaybackWavFile

**Notes and Warnings**

NA