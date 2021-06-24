Class AudioCodec 
========================

**Description**


A class used for general control and management of the hardware audio
codec functions.

**Syntax**


class AudioCodec

**Members**


**Public Constructors**

The public constructor should not be used as this class is intended to
be a singleton class. Access member functions using the object instance
named Codec.

**Public Methods**

+-------------------------------+-------------------------------------+
| AudioCodec::begin             | Configure and start the audio codec |
|                               | for transmit and receive operation  |
+===============================+=====================================+
| AudioCodec::end               | Stop all audio codec operation      |
+-------------------------------+-------------------------------------+
| AudioCodec::getBufferPageSize | Get the byte size of a single page  |
|                               | of the audio codec buffer           |
+-------------------------------+-------------------------------------+
| AudioCodec::setSampleRate     | Configure the audio codec transmit  |
|                               | and receive sampling rate           |
+-------------------------------+-------------------------------------+
| AudioCodec::setBitDepth       | Configure the audio codec transmit  |
|                               | and receive bit depth (bits per     |
|                               | sample)                             |
+-------------------------------+-------------------------------------+
| AudioCodec::setChannelCount   | Configure the audio codec transmit  |
|                               | and receive channel count           |
+-------------------------------+-------------------------------------+
| AudioCodec::setInputMicType   | Configure for analog or digital     |
|                               | input microphone type               |
+-------------------------------+-------------------------------------+
| AudioCodec::setInputLRMux     | Configure input left right channel  |
|                               | multiplexing                        |
+-------------------------------+-------------------------------------+
| AudioCodec::setDMicBoost      | Configure boost gain for digital    |
|                               | microphone input                    |
+-------------------------------+-------------------------------------+
| AudioCodec::setAMicBoost      | Configure boost gain for analog     |
|                               | microphone input                    |
+-------------------------------+-------------------------------------+
| AudioCodec::setADCGain        | Configure gain of ADC used to       |
|                               | acquire analog input                |
+-------------------------------+-------------------------------------+
| AudioCodec::muteInput         | Mute input audio data stream        |
+-------------------------------+-------------------------------------+
| AudioCodec::setOutputVolume   | Configure output audio volume       |
+-------------------------------+-------------------------------------+
| AudioCodec::muteOutput        | Mute output audio                   |
+-------------------------------+-------------------------------------+
| AudioCodec::writeAvaliable    | Check for free buffer page          |
|                               | available for data write            |
+-------------------------------+-------------------------------------+
| AudioCodec::writeDataPage     | Write audio data to an available    |
|                               | buffer page                         |
+-------------------------------+-------------------------------------+
| AudioCodec::readAvaliable     | Check for buffer page with new data |
|                               | available for read                  |
+-------------------------------+-------------------------------------+
| AudioCodec::readDataPage      | Read audio data from a ready buffer |
|                               | page                                |
+-------------------------------+-------------------------------------+
| AudioCodec::setWriteCallback  | Set a callback function to be       |
|                               | notified when a free buffer page is |
|                               | available for write                 |
+-------------------------------+-------------------------------------+
| AudioCodec::setReadCallback   | Set a callback function to be       |
|                               | notified when a buffer page with    |
|                               | new data is available for read      |
+-------------------------------+-------------------------------------+




**AudioCodec::begin**


**Description**

Configure and start the audio codec for transmit and receive operation.

**Syntax**

void begin(bool input, bool output);

**Parameters**

input: enable audio codec data input

output: enable audio codec data output

**Returns**

The function returns nothing.

**Example Code**

Example: BasicInputOutput

**Notes and Warnings**

**AudioCodec::end**


**Description**

Stop all audio codec operation.

**Syntax**

void end();

**Parameters**

The function requires no input parameter.

**Returns**

The function returns nothing.

**Example Code**

NA

**Notes and Warnings**

**AudioCodec::getBufferPageSize**


**Description**

Get the byte size of a single page of the audio codec buffer.

**Syntax**

uint32_t getBufferPageSize();

**Parameters**

The function requires no input parameter.

**Returns**

The size of a audio codec buffer page, in number of bytes.

**Example Code**

NA

**Notes and Warnings**

The AudioCodec class includes a transmit and receive buffer to store
audio sample data while transferring to and from the DAC output and ADC
input. The buffer is divided into pages of fixed size, and audio data
can be read and written one page at a time. Depending on the configured
bit depth (bits per audio sample) and channel count, a buffer page may
contain a different number of audio samples.

**AudioCodec::setSampleRate**


**Description**

Configure the audio codec transmit and receive sampling rate.

**Syntax**

void setSampleRate(uint32_t sampleRate);

**Parameters**

sampleRate: desired audio codec sampling rate in Hz. Default value of
48000. Supported values: 8000, 16000, 32000, 44100, 48000, 88200, 96000.

**Returns**

The function returns nothing.

**Example Code**

Example: BasicInputOutput

**Notes and Warnings**

High sample rates above 48000Hz will require frequent buffer reads and
writes to keep up with the large amount of data input and output. If
there is insufficient processing time dedicated to this task, audio
quality will be degraded.

**AudioCodec::setBitDepth**


**Description**

Configure the audio codec transmit and receive bit depth (bits per
sample).

**Syntax**

void setBitDepth(uint8_t bitDepth);

**Parameters**

bitDepth: desired number of bits per sample. Default value of 16.
Supported values: 8, 16, 24.

**Returns**

The function returns nothing.

**Example Code**

NA

**Notes and Warnings**

Setting a bit depth of 24 bits per sample will require 32 bits (4 bytes)
of buffer space for storing each sample, with the most significant byte
ignored.

**AudioCodec::setChannelCount**


**Description**

Configure the audio codec transmit and receive channel count.

**Syntax**

void setChannelCount(uint8_t monoStereo);

**Parameters**

monoStereo: number of channels. Default value of 1. Supported values: 1,
2.

**Returns**

The function returns nothing.

**Example Code**

Example: BasicInputOutput

**Notes and Warnings**

**AudioCodec::setInputMicType**


**Description**

Configure for analog or digital input microphone type.

**Syntax**

Void setInputMicType(Mic_Type micType);

**Parameters**

micType: Input microphone type. Default value ANALOGMIC. Valid values:

-  ANALOGMIC – microphone with an analog output

-  PDMMIC – digital microphone with a PDM output

**Returns**

The function returns nothing.

**Example Code**

NA

**Notes and Warnings**

For analog single-ended output, connect to PA_4 for the left channel and
PA_2 for the right channel.

For digital PDM output, connect the PDM clock to PB_1 and PDM data to
PB_2.

**AudioCodec::setInputLRMux**


**Description**

Configure input left right channel multiplexing.

**Syntax**

void setInputLRMux(uint32_t mux);

**Parameters**

mux: desired left right audio channel multiplexing setting. Default
value RX_CH_LR. Valid values:

-  RX_CH_LR

-  RX_CH_RL

-  RX_CH_LL

-  RX_CH_RR

**Returns**

The function returns nothing.

**Example Code**

NA

**Notes and Warnings**

In mono channel mode, both RX_CH_LR and RX_CH_LL will result in the
audio codec sampling input data from the left channel microphone.
Similarly, both RX_CH_RL and RX_CH_RR will result in the audio codec
sampling input data from the right channel microphone.

In stereo channel mode, RX_CH_RL will switch the positions of input data
sampled from the microphones. RX_CH_RR and RX_CH_LL will result in
duplicated samples from the right and left microphones respectively.\ **
**

**AudioCodec::setDMicBoost**


**Description**

Configure boost gain for digital microphone input.

**Syntax**

void setDMicBoost(uint32_t leftBoost, uint32_t rightBoost);

**Parameters**

leftBoost: boost gain for left channel digital microphone input

rightBoost: boost gain for right channel digital microphone input

Valid boost gain values:

-  0 : 0dB

-  1 : 12dB

-  2 : 24dB

-  3 : 36dB

**Returns**

The function returns nothing.

**Example Code**

NA

**Notes and Warnings**

**AudioCodec::setAMicBoost**


**Description**

Configure boost gain for analog microphone input.

**Syntax**

void setAMicBoost(uint32_t leftBoost, uint32_t rightBoost);

**Parameters**

leftBoost: boost gain for left channel analog microphone input

rightBoost: boost gain for right channel analog microphone input

Valid boost gain values:

-  0 : 0dB

-  1 : 20dB

-  2 : 30dB

-  3 : 40dB

**Returns**

The function returns nothing.

**Example Code**

NA

**Notes and Warnings**

Only use this function if additional gain is required after using
setADCGain function.

**AudioCodec::setADCGain**


**Description**

Configure gain of ADC used to acquire analog input.

**Syntax**

void setADCGain(uint32_t leftGain, uint32_t rightGain);

**Parameters**

leftGain: Gain for left channel ADC

rightGain: Gain for right channel ADC

Valid value range is from 0x00 to 0x7f. Gain increases by 0.375dB for
every increment in value:

-  0x00 : -17.625dB

-  0x01 : -17.25dB

-  0x2f : 0dB

-  0x30 : 0.375dB

-  0x7f : 30dB

**Returns**

The function returns nothing.

**Example Code**

NA

**Notes and Warnings**

**AudioCodec::muteInput**


**Description**

Mute input audio data stream.

**Syntax**

void muteInput(uint8_t leftMute, uint8_t rightMute);

**Parameters**

leftMute: 1 to mute left channel input, 0 to unmute

rightMute: 1 to mute right channel input, 0 to unmute

**Returns**

The function returns nothing.

**Example Code**

NA

**Notes and Warnings**

**AudioCodec::setOutputVolume**


**Description**

Configure output audio volume.

**Syntax**

void setOutputVolume(uint8_t leftVol, uint8_t rightVol);

**Parameters**

leftVol: left channel output volume

rightVol: right channel output volume

Valid value ranges from 0 to 100, corresponding to a volume of -65.625dB
to 0dB.

**Returns**

The function returns nothing.

**Example Code**

Example: BasicInputOutput

**Notes and Warnings**

**AudioCodec::muteOutput**


**Description**

Mute output audio.

**Syntax**

void muteOutput(uint8_t leftMute, uint8_t rightMute);

**Parameters**

leftMute: 1 to mute left channel output, 0 to unmute

rightMute: 1 to mute right channel output, 0 to unmute

**Returns**

The function returns nothing.

**Example Code**

NA

**Notes and Warnings**

**AudioCodec::writeAvaliable**


**Description**

Check for free buffer page available for data write.

**Syntax**

bool writeAvaliable();

**Parameters**

The function requires no input parameter.

**Returns**

Returns true if there is a buffer page that is available for writing
data into. Returns false if all buffer pages are full.

**Example Code**

Example: BasicInputOutput

**Notes and Warnings**

**AudioCodec::writeDataPage**


**Description**

Write audio data to an available buffer page.

**Syntax**

uint32_t writeDataPage(int8_t\* src, uint32_t len);

uint32_t writeDataPage(int16_t\* src, uint32_t len);

**Parameters**

src: pointer to array containing audio samples to write to audio codec.

len: number of audio samples in array.

**Returns**

The function returns the number of audio samples written to the audio
codec.

**Example Code**

Example: BasicInputOutput

**Notes and Warnings**

**AudioCodec::readAvaliable**


**Description**

Check for buffer page with new data available for read.

**Syntax**

bool readAvaliable();

**Parameters**

The function requires no input parameter.

**Returns**

Returns true if there is a buffer page with new data that is ready for
reading data from. Returns false if all buffer pages are empty.

**Example Code**

Example: BasicInputOutput

**Notes and Warnings**

**AudioCodec::readDataPage**


**Description**

Read audio data from a ready buffer page.

**Syntax**

uint32_t readDataPage(int8_t\* dst, uint32_t len);

uint32_t readDataPage(int16_t\* dst, uint32_t len);

**Parameters**

dst: pointer to array to contain audio samples read from audio codec.

len: number of audio samples to read.

**Returns**

The function returns the number of audio samples read from the audio
codec.

**Example Code**

Example: BasicInputOutput

**Notes and Warnings**

**AudioCodec::setWriteCallback**


**Description**

Set a callback function to be notified when a free buffer page is
available for write.

**Syntax**

void setWriteCallback(void (*writeCB)(void));

**Parameters**

writeCB: function to be called when a buffer page becomes available for
data write. Takes no arguments and returns nothing

**Returns**

The function returns nothing.

**Example Code**

NA

**Notes and Warnings**

After starting the audio codec with AudioCodec::begin(), the callback
function will be called each time the audio codec finishes outputting
the data in a buffer page.

**AudioCodec::setReadCallback**


**Description**

Set a callback function to be notified when a buffer page with new data
is available for read.

**Syntax**

void setReadCallback(void (*readCB)(void));

**Parameters**

readCB: function to be called when a buffer page with new data becomes
available for data read. Takes no arguments and returns nothing

**Returns**

The function returns nothing.

**Example Code**

NA

**Notes and Warnings**

After starting the audio codec with AudioCodec::begin(), the callback
function will be called each time the audio codec fills up a buffer page
with newly acquired audio samples.
