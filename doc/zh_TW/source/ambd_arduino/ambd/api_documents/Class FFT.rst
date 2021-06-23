Class FFT
=================

**Description**


A class used for performing FFT calculations with real-number inputs and
outputs.

**Syntax**


class FFT

**Members**


**Public Constructors**

======== ===================================
FFT::FFT Create an instance of the FFT class
======== ===================================

**Public Methods**

+-----------------------+---------------------------------------------+
| FFT::setWindow        | Configure the window function used in FFT   |
|                       | calculations                                |
+=======================+=============================================+
| FFT::calculate        | Calculate FFT for an input array of values  |
+-----------------------+---------------------------------------------+
| FFT::getFrequencyBins | Get the FFT output frequency bins           |
+-----------------------+---------------------------------------------+
| FFT::getFFTSize       | Get the size of FFT output for a given      |
|                       | input size                                  |
+-----------------------+---------------------------------------------+




**FFT::FFT**


**Description**

Create a FFT class object.

**Syntax**

void FFT();

**Parameters**

The function requires no input parameter.

**Returns**

The function returns nothing.

**Example Code**

Example: FFT

**Notes and Warnings**

**FFT::setWindow**


**Description**

Configure the window function used in FFT calculations.

**Syntax**

void setWindow(FFTWindow_t window, uint16_t sampleCount);

**Parameters**

window: The window function to be used in FFT calculations. Valid
values: None, Hann, Hamming.

sampleCount: Number of sample datapoints in the input.

**Returns**

The function returns nothing.

**Example Code**

Example: FFT

**Notes and Warnings**

The window function is used to reduce the effects of discontinuities
that occur when the input signal has frequencies that do not fit an
integer number of periods in the sample datapoints.

More information on FFTs and window functions can be seen at:

https://download.ni.com/evaluation/pxi/Understanding%20FFTs%20and%20Windowing.pdf

https://en.wikipedia.org/wiki/Window_function

**FFT::Calculate**


**Description**

Calculate FFT for an input array of values.

**Syntax**

void calculate(float\* inputBuf, float\* outputBuf, uint16_t
sampleCount);

void calculate(int16_t\* inputBuf, float\* outputBuf, uint16_t
sampleCount);

**Parameters**

inputBuf: pointer to an array of sampleCount size, containing input
sample datapoints, in float or uint16_t format.

outputBuf: pointer to a float array of sampleCount/2 size, for
containing FFT output.

sampleCount: number of sample datapoints in the input array, valid
values: 16, 32, 64, 128, 256, 512, 1024, 2048.

**Returns**

The function returns nothing.

**Example Code**

Example:FFT

**Notes and Warnings**

Large sample counts will require a longer time for FFT calculations, but
will also return a result with higher frequency resolution.

**FFT::getFrequencyBins**


**Description**

Get the FFT output frequency bins.

**Syntax**

void getFrequencyBins(uint16_t\* outputBuf, uint16_t sampleCount,
uint32_t sampleRate);

**Parameters**

outputBuf: pointer to a uint16_t array of sampleCount/2 size, for
containing the calculated center frequency of each FFT output element.

**Returns**

The function returns nothing.

**Example Code**

Example: FFT

**Notes and Warnings**

**FFT::getFFTSize**


**Description**

Get the size of FFT output for a given input size.

**Syntax**

uint16_t getFFTSize(uint16_t sampleCount);

**Parameters**

sampleCount: number of input sample datapoints.

**Returns**

The function returns the FFT output size for the given sampleCount,
which is sampleCount/2.

**Example Code**

NA

**Notes and Warnings**
