Class SoftwareSerial
=====================
**SoftwareSerial Class**

| **Description**
| Defines a class of software serial implementation for Ameba.

| **Syntax**
| class SoftwareSerial

**Members**

+----------------------------------+----------------------------------+
| **Public Constructors**          |                                  |
+==================================+==================================+
| SoftwareSerial::SoftwareSerial   | Constructs a SoftwareSerial      |
|                                  | object                           |
+----------------------------------+----------------------------------+
| **Public Methods**               |                                  |
+----------------------------------+----------------------------------+
| SoftwareSerial::begin            | Sets the speed (baud rate) for   |
|                                  | the serial communication         |
+----------------------------------+----------------------------------+
| SoftwareSerial::listen           | Enables the selected software    |
|                                  | serial port to listen            |
+----------------------------------+----------------------------------+
| SoftwareSerial::end              | Same as stopListening            |
+----------------------------------+----------------------------------+
| SoftwareSerial::stopListening    | Stop listening on the port       |
+----------------------------------+----------------------------------+
| SoftwareSerial::peek             | Return a character that was      |
|                                  | received on the RX pin of the    |
|                                  | software serial port             |
+----------------------------------+----------------------------------+
| SoftwareSerial::write            | Prints data to the transmit pin  |
|                                  | of the software serial port as   |
|                                  | raw bytes                        |
+----------------------------------+----------------------------------+
| SoftwareSerial::read             | Return a character that was      |
|                                  | received on the RX pin of the    |
|                                  | software serial port             |
+----------------------------------+----------------------------------+
| SoftwareSerial::available        | Get the number of bytes          |
|                                  | (characters) available for       |
|                                  | reading from a software serial   |
|                                  | port                             |
+----------------------------------+----------------------------------+
| SoftwareSerial::flush            | Flush the received buffer        |
+----------------------------------+----------------------------------+
| SoftwareSerial::setBufferSize    | Set buffer size                  |
+----------------------------------+----------------------------------+
| Soft                             | Set available callback           |
| wareSerial::setAvailableCallback |                                  |
+----------------------------------+----------------------------------+
| SoftwareSerial::handle_interrupt | Private methods handles          |
|                                  | interrupt                        |
+----------------------------------+----------------------------------+

**SoftwareSerial::SoftwareSerial**

| **Description**
| Constructs a SoftwareSerial object and sets RX and TX pin, and inverse
  logic.

| **Syntax**
| SoftwareSerial::SoftwareSerial(uint8_t receivePin, uint8_t
  transmitPin, bool inverse_logic /\* = false \*/)

| **Parameters**
| receivePin: the pin on which to receive serial data
| transmitPin: the pin on which to transmit serial data
| inverse_logic: is used to invert the sense of incoming bits

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: SoftwareSerialExample
| The example demonstrates a software serial test, it receives from
  serial RX and sends it to serial TX.

/\*

The circuit: (BOARD RTL8195A)

\* RX is digital pin 0 (connect to TX of other devices)

\* TX is digital pin 1 (connect to RX of other devices)

\*/

**#include <SoftwareSerial.h>**

**#if defined(BOARD_RTL8195A)**

SoftwareSerial mySerial(0, 1); // RX, TX

**#elif defined(BOARD_RTL8710)**

SoftwareSerial mySerial(17, 5); // RX, TX

**#else**

SoftwareSerial mySerial(0, 1); // RX, TX

**#endif**

**void** setup() {

// Open serial communications and wait for port to open:

Serial.begin(57600);

**while** (!Serial) {

; // wait for serial port to connect. Needed for native USB port only

}

Serial.println("Goodnight moon!");

// set the data rate for the SoftwareSerial port

mySerial.begin(4800);

mySerial.println("Hello, world?");

}

**void** loop() { // run over and over

**if** (mySerial.available()) {

mySerial.write(mySerial.read());

}

}

| **Notes and Warnings**
| Software Serial is using hardware serial thus DO NOT change the
  default pins
|  

**SoftwareSerial::begin**

| **Description**
| Sets the speed (baud rate) for the serial communication

| **Syntax**
| void SoftwareSerial::begin(long speed)
| void SoftwareSerial::begin(long speed, int data_bits, int parity, int
  stop_bits)
| void SoftwareSerial::begin(long speed, int data_bits, int parity, int
  stop_bits, int flowctrl, int rtsPin, int ctsPin)

| **Parameters**
| speed: the baud rate
| data_bits: number of data bits, 8 bits(default) or 7 bits
| stop_bits: number of stop bits, 1 bit(default), 1.5 bits or 2 bits
| flowctrl: flow control pin
| rtsPin: request to send pin
| ctsPin: clear to send pin

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: SoftwareSerialExample
| The example demonstrates a software serial test, it receives from
  serial RX and sends it to serial TX. Details of the code can be found
  in the previous section of SoftwareSerial_Basic:: SoftwareSerial.

| **Notes and Warnings**
| NA
|  

**SoftwareSerial::listen**

| **Description**
| Enables the selected software serial port to listen

| **Syntax**
| bool SoftwareSerial::listen(void)

| **Parameters**
| The function requires no input parameter.

| **Returns**
| Returns true if it replaces another

| **Example Code**
| NA

| **Notes and Warnings**
| NA
|  

**SoftwareSerial::end**

| **Description**
| Same as stopListening

| **Syntax**
| void SoftwareSerial::end(void)

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| NA
|  

**SoftwareSerial::isListening**

| **Description**
| Tests to see if requested software serial port is actively listening

| **Syntax**
| bool SoftwareSerial::isListening(void)

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns “True” if the port is listening.

| **Example Code**
| NA

| **Notes and Warnings**
| NA
|  

**SoftwareSerial::stopListening**

| **Description**
| Stop listening on the port

| **Syntax**
| bool SoftwareSerial::stopListening(void)

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns “True” if listening on the port is stopped.

| **Example Code**
| NA

| **Notes and Warnings**
| NA
|  

**SoftwareSerial::peek**

| **Description**
| Return a character that was received on the RX pin of the software
  serial port

| **Syntax**
| int SoftwareSerial::peek(void)

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns the character read, or returns “-1” if none is
  available.

| **Example Code**
| NA

| **Notes and Warnings**
| NA
|  

**SoftwareSerial::write**

| **Description**
| Prints data to the transmit pin of the software serial port as raw
  bytes

| **Syntax**
| size_t SoftwareSerial::write(uint8_t b)

| **Parameters**
| b: byte to be written

| **Returns**
| The function returns the number of bytes written.

| **Example Code**
| Example: SoftwareSerialExample
| The example demonstrates a software serial test, it receives from
  serial RX and sends it to serial TX. Details of the code can be found
  in the previous section of SoftwareSerial:: SoftwareSerial.

| **Notes and Warnings**
| NA
|  

**SoftwareSerial::read**

| **Description**
| Return a character that was received on the RX pin of the software
  serial port

| **Syntax**
| int SoftwareSerial::read(void)

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns the character read, or -1 if none is available.

| **Example Code**
| Example: SoftwareSerialExample
| The example demonstrates a software serial test, it receives from
  serial RX and sends it to serial TX. Details of the code can be found
  in the previous section of SoftwareSerial:: SoftwareSerial.

| **Notes and Warnings**
| NA
|  

**SoftwareSerial::available**

| **Description**
| Get the number of bytes available for reading from a software serial
  port

| **Syntax**
| int SoftwareSerial::available(void)

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns the number of bytes available to read.

| **Example Code**
| Example: SoftwareSerialExample
| The example demonstrates a software serial test, it receives from
  serial RX and sends it to serial TX. Details of the code can be found
  in the previous section of SoftwareSerial:: SoftwareSerial.

| **Notes and Warnings**
| NA
|  

**SoftwareSerial::flush**

| **Description**
| Flush the received buffer

| **Syntax**
| void SoftwareSerial::flush(void)

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| NA
|  

**SoftwareSerial::setBufferSize**

| **Description**
| Set buffer size

| **Syntax**
| void SoftwareSerial::setBufferSize(uint32_t buffer_size)

| **Parameters**
| buffer_size: the size of the serial buffer

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| NA
|  

**SoftwareSerial::setAvailableCallback**

| **Description**
| Set available callback

| **Syntax**
| void SoftwareSerial::setAvailableCallback(void (*callback)(char c))

| **Parameters**
| \*callback: user-defined serial callback function

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: SoftwareSerialIrqCallback
| This example demonstrates the software serial testing using IRQ
  callback and semaphore. Set callback function “mySerialCalback” to
  software serial. Whenever there is data comes in, “mySerialCallback”
  is invoked. In this sketch, it does nothing until the end of the line.
  And then it sends a semaphore. The loop() uses a non-busy loop to wait
  for the semaphore. To test this sketch, you need to type something on
  software serial and then press Enter.

/\*

The circuit: (BOARD RTL8195A)

RX is digital pin 0 (connect to TX of other devices)

TX is digital pin 1 (connect to RX of other devices)

\*/

**#include <SoftwareSerial.h>**

**#if defined(BOARD_RTL8195A)**

SoftwareSerial mySerial(0, 1); // RX, TX

**#elif defined(BOARD_RTL8710)**

SoftwareSerial mySerial(17, 5); // RX, TX

**#else**

SoftwareSerial mySerial(0, 1); // RX, TX

**#endif**

**uint32_t** semaID;

// The callback is hooking at UART IRQ handler and please don't do heavy
task here.

**void** mySerialCallback(**char** c)

{

/\* The parameter c is only for peeking. The actual data is

\* still in the buffer of SoftwareSerial.

\*/

**if** (c == '\r' \|\| c == '\n') {

os_semaphore_release(semaID);

}

}

**void** setup() {

// use 1 count for binary semaphore

semaID = os_semaphore_create(1);

// There is a token in the semaphore, clear it.

os_semaphore_wait(semaID, *0xFFFFFFFF*);

// set the data rate for the SoftwareSerial port

mySerial.begin(38400);

mySerial.setAvailableCallback(mySerialCallback);

}

**void** loop() { // run over and over

// wait semaphore for 5s timeout

**if** (os_semaphore_wait(semaID, 5 \* 1000)) {

// we got data before timeout

**while**\ (mySerial.available()) {

mySerial.print((**char**)mySerial.read());

}

mySerial.println();

} **else** {

mySerial.println("No data comes in.");

}

}

| **Notes and Warnings**
| NA
|  

**SoftwareSerial::handle_interrupt**

| **Description**
| A private method handles the interrupt

| **Syntax**
| void handle_interrupt(uint32_t id, uint32_t event)

| **Parameters**
| id: the interupt id
| event: interrupt event

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| NA
