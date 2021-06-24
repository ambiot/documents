Class HttpClient
====================
**IRDevice Class**

| **Description**
| A class used for managing, sending, and receiving data using IR.

| **Syntax**
| class IRDevice

**Members**

+-----------------------------------------------------------------+---+
| **Public Constructors**                                         |   |
+=================================================================+===+
| A public constructor should not be used as this class is        |   |
| intended to be a singleton class. Access member functions using |   |
| the object instance named IR.                                   |   |
+-----------------------------------------------------------------+---+

+--------------------+------------------------------------------------+
| **Public Methods** |                                                |
+====================+================================================+
| IRDevice::getFreq  | Get the current IR modulation frequency        |
+--------------------+------------------------------------------------+
| IRDevice::begin    | Allocate resources and start the IR device     |
|                    | with a custom frequency                        |
+--------------------+------------------------------------------------+
| IRDevice::end      | Stop the IR device operations and free up      |
|                    | resources                                      |
+--------------------+------------------------------------------------+
| IRDevice::send     | Send IR raw data                               |
+--------------------+------------------------------------------------+
| IRDevice::beginNEC | Allocate resources and start the IR device     |
|                    | with a frequency suitable for the NEC protocol |
+--------------------+------------------------------------------------+
| IRDevice::sendNEC  | Send data using the NEC protocol               |
+--------------------+------------------------------------------------+
| IRDevice::recvNEC  | Receive data using the NEC protocol            |
+--------------------+------------------------------------------------+

**IRDevice::getFreq**

| **Description**
| Get the current IR modulation frequency.

| **Syntax**
| uint32_t getFreq(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| Currently set IR modulation frequency in Hertz.

| **Example Code**
| NA

| **Notes and Warnings**
| NA
|  

**IRDevice::begin**

| **Description**
| Allocate resources and start the IR device with a custom frequency.

| **Syntax**
| void begin(uint8_t receivePin, uint8_t transmitPin, uint32_t irMode,
  uint32_t freq);

| **Parameters**
| receivePin: pin on which IR sensor is connected. Hardware IR receiver
  is available at pins 3, 8, 17.
| transmitPin: pin on which IR LED is connected. Hardware IR transmitter
  is available at pins 6, 9, 16.
| irMode: transmit or receive mode. Valid values: IR_MODE_TX, IR_MODE_RX
| freq: IR modulation frequency in Hertz

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| IR device can only operate in either transmit or receive mode.
|  

**IRDevice::end**

| **Description**
| Stop the IR device operations and free up resources.

| **Syntax**
| void end(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns nothing.

| **Example Code**
| NA

| **Notes and Warnings**
| NA
|  

**IRDevice::send**

| **Description**
| Send IR raw data.

| **Syntax**
| void send(const unsigned int buf[ ] , uint16_t len);

| **Parameters**
| buf[ ] : IR raw signals (in us) in an array form.
| len: total length of the IR raw signal array.

| **Returns**
| The function returns nothing.

**Example Code**

**#include "IRDevice.h"**

// User defined txPin, rxPin and carrier frequency

**#define IR_RX_PIN 8**

**#define IR_TX_PIN 9**

**#define CARRIER_FREQ 38000**

unsigned **int** irRawSignal[] = {

9000, 4500, // starting bit

560, 560, 560, 560, 560, 1690, 560, 560, 560, 560, 560, 560, 560, 560,
560, 560, // address 00100000 ： 4

560, 1690, 560, 1690, 560, 560, 560, 1690, 560, 1690, 560, 1690, 560,
1690, 560, 1690, // ~ address 11011111

560, 560, 560, 560, 560, 560, 560, 1690, 560, 560, 560, 560, 560, 560,
560, 560, // data 00010000 ： 8

560, 1690, 560, 1690, 560, 1690, 560, 560, 560, 1690, 560, 1690, 560,
1690, 560, 1690, //~ data 11101111

560 // stoping bit

};

**int** DataLen = sizeof(irRawSignal) / sizeof(irRawSignal[0]); // 284/
4 = 71

**void** setup()

{

Serial.begin(115200);

IR.begin(IR_RX_PIN, IR_TX_PIN, IR_MODE_TX, CARRIER_FREQ);

}

**void** loop()

{

IR.send(irRawSignal, DataLen);

Serial.println("Finished Sending NEC Raw Data....");

delay(3000);

}

| **Notes and Warnings**
| IR Raw Data array contains information in the form of consecutive
  microseconds (us). For more details, please refer to:
  http://www.righto.com/2009/08/multi-protocol-infrared-remote-library.html.
|  

**IRDevice::beginNEC**

| **Description**
| Allocate resources and start the IR device with a frequency suitable
  for the NEC protocol.

| **Syntax**
| void beginNEC(uint8_t receivePin, uint8_t transmitPin, uint32_t
  irMode);

| **Parameters**
| receivePin: pin on which IR sensor is connected. Hardware IR receiver
  is available at pins 3, 8, 17.
| transmitPin: pin on which IR LED is connected. Hardware IR transmitter
  is available at pins 6, 9, 16.
| irMode: transmit or receive mode. Valid values: IR_MODE_TX, IR_MODE_RX

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: IRRecvNEC

**#include "IRDevice.h"**

**uint8_t** adr = 0;

**uint8_t** cmd = 0;

**void** setup() {

//Initialize serial and wait for port to open:

Serial.begin(115200);

**while** (!Serial) {

; // wait for serial port to connect. Needed for native USB port only

}

IR.beginNEC(8, 9, IR_MODE_RX); // configure for NEC IR protocol

}

**void** loop() {

**if** (IR.recvNEC(adr, cmd, 1000)) {

Serial.print("Received ");

Serial.print(adr);

Serial.print(cmd);

Serial.println();

} **else** {

Serial.println("Received nothing, timed out");

}

//IR.end();

}

| **Notes and Warnings**
| IR device can only operate in either transmit or receive mode. Refer
  to https://techdocs.altium.com/display/FPGA/NEC+Infrared+Transmission+Protocol for
  the NEC protocol.
|  

**IRDevice::sendNEC**

| **Description**
| Send data using the NEC protocol.

| **Syntax**
| void sendNEC(uint8_t adr, uint8_t cmd);

| **Parameters**
| adr: 8-bit address to transmit
| cmd: 8-bit command to transmit

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: IRSendNEC

**#include "IRDevice.h"**

**uint8_t** adr = 0;

**uint8_t** cmd = 0;

**void** setup() {

//Initialize serial and wait for port to open:

Serial.begin(115200);

**while** (!Serial) {

; // wait for serial port to connect. Needed for native USB port only

}

IR.beginNEC(8, 9, IR_MODE_TX); // configure for NEC IR protocol

}

**void** loop() {

**if** (cmd++ >=255) {

adr++;

}

IR.sendNEC(adr, cmd);

Serial.print("Sent ");

Serial.print(adr);

Serial.print(cmd);

Serial.println();

//IR.end(); // Call this method to stop IR device and free up the pins
for other uses

}

| **Notes and Warnings**
| IR device can only operate in either transmit or receive mode. Refer
  to https://techdocs.altium.com/display/FPGA/NEC+Infrared+Transmission+Protocol for
  the NEC protocol.
|  

**IRDevice::recvNEC**

| **Description**
| Receive data using the NEC protocol.

| **Syntax**
| void recvNEC(uint8_t& adr, uint8_t& cmd uint32_t timeout);

| **Parameters**
| adr: variable to store received NEC address
| cmd: variable to store received NEC command
| timeout: time duration to wait for an incoming transmission

| **Returns**
| The function returns “1” if data has been received, returns “0” if no
  data has been received.

| **Example Code**
| Example: IRRecvNEC
| Details of the code can be found in the previous section of
  IRDevice::beginNEC.

| **Notes and Warnings**
| IR device can only operate in either transmit or receive mode. Refer
  to https://techdocs.altium.com/display/FPGA/NEC+Infrared+Transmission+Protocol for
  the NEC protocol.
