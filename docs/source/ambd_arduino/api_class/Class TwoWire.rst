###############
Class TwoWire
###############


**Description**

Defines a class of I2C API

**Syntax**

.. code:: cpp

  class TwoWire

**Members**

+----------------------------+----------------------------------------+
| **Public Constructors**    |                                        |
+============================+========================================+
| TwoWire::TwoWire           | Constructs a TwoWire object            |
+----------------------------+----------------------------------------+


+----------------------------+----------------------------------------+
| **Public Methods**         |                                        |
+============================+========================================+
| TwoWire::begin             | Initialize I2C master/slave            |
+----------------------------+----------------------------------------+
| TwoWire::setClock          | Set I2C frequency                      |
+----------------------------+----------------------------------------+
| TwoWire::beginTransmission | Begin I2C transmission                 |
+----------------------------+----------------------------------------+
| TwoWire::endTransmission   | End I2C transmission                   |
+----------------------------+----------------------------------------+
| TwoWire::requestFrom       | Set I2C requestFrom                    |
+----------------------------+----------------------------------------+
| TwoWire::write             | Write data to I2C                      |
+----------------------------+----------------------------------------+
| TwoWire::available         | Check if I2C is available              |
+----------------------------+----------------------------------------+
| TwoWire::read              | Read data from I2C                     |
+----------------------------+----------------------------------------+
| TwoWire::peek              | Read peek from I2C                     |
+----------------------------+----------------------------------------+
| TwoWire::flush             | Do nothing, use, and transmission(..)  |
|                            | to force data transfer                 |
+----------------------------+----------------------------------------+
| TwoWire::onReceive         | Callback function when I2C on receive  |
+----------------------------+----------------------------------------+
| TwoWire::onRequest         | Callback function when I2C on request  |
+----------------------------+----------------------------------------+

-----

.. method:: TwoWire::TwoWire


**Description**

Constructs a TwoWire object.

**Syntax**

.. code:: cpp

  TwoWire::TwoWire (uint32_t dwSDAPin, uint32_t dwSCLPin);

**Parameters**

``dwSDAPin`` : The Arduino PIN to be set as an SDA pin.

``dwSCLPin`` : The Arduino PIN to be set as an SCL pin.

**Returns**

The function returns nothing.

**Example Code**

Example: MasterWriter

This example demonstrates the use of the wire library writes to an
I2C/TWI slave device.

.. code:: cpp

  #include “Wire.h”    
  
  void setup() {  
    Wire.begin(); // join i2c bus (address optional for master)  
  }  

  byte x = 0;  

  void loop() {  
    Wire.beginTransmission(8); // transmit to device #8  
    Wire.write("x is ");        // sends five bytes  
    Wire.write(x);              // sends one byte  
    Wire.endTransmission();    // stop transmitting  

    x++;  
    delay(500);  
  } 

Example: MasterReader

.. code:: cpp

  #include “Wire.h”  
  
  void setup() {  
    Wire.begin();        // join i2c bus (address optional for master)  
    Serial.begin(9600);  // start serial for output  
  }  

  void loop() {  
    Wire.requestFrom(8, 6);    // request 6 bytes from slave device #8  

    while (Wire.available()) { // slave may send less than requested  
      char c = Wire.read(); // receive a byte as character  
      Serial.print(c);         // print the character  
    }  

    delay(500);  
  } 

This example demonstrates the use of the wire library reads data from an
I2C/TWI slave device.

**Notes and Warnings**
Include “Wire.h” to use the class function.

-----

.. method:: TwoWire::begin


**Description**

Initialize I2C master/slave.

**Syntax**

.. code:: cpp

  void TwoWire::begin (void);

.. code:: cpp

  void TwoWire::begin (uint8_t address = 0);

.. code:: cpp

  void TwoWire::begin (int address);

**Parameters**

``void`` : Set the I2C master mode.

``address``: Set the I2C master mode with slave address value.

**Returns**

The function returns nothing.

**Example Code**

Example: MasterReader; MasterWriter

The details of the code can be found in the previous section of
TwoWire:: TwoWire.

**Notes and Warnings**

Include “Wire.h” to use the class function.

-----

.. method:: TwoWire::setClock


**Description**

Set I2C frequency.

**Syntax**

.. code:: cpp

  void TwoWire::setClock(uint32_t frequency);

**Parameters**

``frequency`` : The frequency values.

**Returns**

The function returns nothing.

**Example Code**

Example: MasterReader; MasterWriter

The details of the code can be found in the previous section of
TwoWire:: TwoWire.

**Notes and Warnings**

Include “Wire.h” to use the class function.

-----

.. method:: TwoWire::beginTransmission


**Description**

Begin I2C transmission.

**Syntax**

.. code:: cpp

  void TwoWire::beginTransmission (uint8_t address);

.. code:: cpp

  void TwoWire::beginTransmission (int address);

**Parameters**

``address`` : The transmission address.

**Returns**

The function returns nothing.

**Example Code**

Example: MasterReader; MasterWriter

The details of the code can be found in the previous section of
TwoWire:: TwoWire.

**Notes and Warnings**

Include “Wire.h” to use the class function.

-----

.. method:: TwoWire::endTransmission

**Description**
End I2C transmission. Originally, ‘endTransmission’ was an f(void)
function. It has been modified to take one parameter indicating
whether or not a STOP should be performed on the bus. Calling
endTransmission(false) allows a sketch to perform a repeated start.

.. warning::

   Nothing in the library keeps track of whether the bus tenure
   has been properly ended with a STOP. It is very possible to leave the
   bus in a hung state if no call to endTransmission(true) is made. Some
   I2C devices will behave oddly if they do not see a STOP.

If the input parameter is void, this provides backward compatibility
with the original definition, and expected behavior, of endTransmission.


**Syntax**

.. code:: cpp

  uint8_t TwoWire::endTransmission (uint8_t sendStop);

.. code:: cpp

  uint8_t TwoWire::endTransmission (void);

**Parameters**

``sendStop`` : True to end the transmission

**Returns**

Return 0 if successful, else error.

**Example Code**

Example: MasterReader; MasterWriter

The details of the code can be found in the previous section of
TwoWire:: TwoWire.

**Notes and Warnings**

Include “Wire.h” to use the class function.

-----

.. method:: TwoWire::requestFrom


**Description**

Set I2C requestFrom.

**Syntax**

.. code:: cpp

  uint8_t TwoWire::requestFrom (uint8_t address, uint8_t quantity, uint8_t sendStop);

.. code:: cpp

  uint8_t TwoWire::requestFrom (uint8_t address, uint8_t quantity);

.. code:: cpp

  uint8_t TwoWire::requestFrom(int address, int quantity);

.. code:: cpp

  uint8_t TwoWire::requestFrom (int address, int quantity, int sendStop);

**Parameters**

``address`` : I2C read address.

``quantity`` : I2C read quantity.

``sendStop`` : True to end the transmission.

**Returns**

Return 0 if successful, else error.

**Example Code**

Example: MasterReader; MasterWriter

The details of the code can be found in the previous section of
TwoWire:: TwoWire.

**Notes and Warnings**

Include “Wire.h” to use the class function.

-----

.. method:: TwoWire::write


**Description**

Write data to I2C.

**Syntax**

.. code:: cpp

  size_t TwoWire::write (uint8_t data);

.. code:: cpp

  size_t TwoWire::write (const uint8_t *data, size_t quantity);

**Parameters**

``data``: The data to be transmitted.

``quantity`` : The quantity of data.

**Returns**

Return 0 if successful, else error.

**Example Code**

Example: MasterReader; MasterWriter

The details of the code can be found in the previous section of
TwoWire:: TwoWire.

**Notes and Warnings**

Include “Wire.h” to use the class function.

-----

.. method:: TwoWire::available


**Description**

Check if I2C is available.

**Syntax**

.. code:: cpp

  int TwoWire::available (void);

**Parameters**

The function requires no input parameter.

**Returns**

Return 0 if successful, else error.

**Example Code**

Example: MasterReader; MasterWriter

The details of the code can be found in the previous section of
TwoWire:: TwoWire.

**Notes and Warnings**

Include “Wire.h” to use the class function.

-----

.. method:: TwoWire::read


**Description**

Read data from I2C

**Syntax**

.. code:: cpp

  int TwoWire::read (void);

**Parameters**

The function requires no input parameter.

**Returns**

The read data from the receive buffer.

**Example Code**

Example: MasterReader; MasterWriter

The details of the code can be found in the previous section of
TwoWire:: TwoWire.

**Notes and Warnings**

Include “Wire.h” to use the class function.

-----

.. method:: TwoWire::peek


**Description**

Read peek from I2C.

**Syntax**

.. code:: cpp

  int TwoWire::peek (void);

**Parameters**

The function requires no input parameter.

**Returns**

The peek data read from the receive buffer.

**Example Code**

Example: MasterReader; MasterWriter

The details of the code can be found in the previous section of
TwoWire:: TwoWire.

**Notes and Warnings**

Include “Wire.h” to use the class function.

-----

.. method:: TwoWire::flush


**Description**

Do nothing, use endTransmission(..) to force data transfer.

**Syntax**

.. code:: cpp

  void TwoWire::flush (void);

**Parameters**

The function requires no input parameter.

**Returns**

The function returns nothing.

**Example Code**

Example: MasterReader; MasterWriter

**Notes and Warnings**

Include “Wire.h” in order to use the class function.

-----

.. method:: TwoWire::onReceive


**Description**

Callback function when I2C on receive.

**Syntax**

.. code:: cpp

  void TwoWire::onReceive (void(*function)(int));

**Parameters**

``function``: The callback function.

**Returns**

The function returns nothing.

**Example Code**

Example: MasterReader; MasterWriter

The details of the code can be found in the previous section of
TwoWire:: TwoWire.

**Notes and Warnings**

Include “Wire.h” to use the class function.

-----

.. method:: TwoWire::onRequest


**Description**

Callback function when I2C on request.

**Syntax**

.. code:: cpp

  void TwoWire::onRequest (void(*function)(void));

**Parameters**

``function``: The callback function

**Returns**

The function returns nothing.

**Example Code**

Example: MasterReader; MasterWriter

The details of the code can be found in the previous section of
TwoWire:: TwoWire.

**Notes and Warnings**

Include “Wire.h” to use the class function.
