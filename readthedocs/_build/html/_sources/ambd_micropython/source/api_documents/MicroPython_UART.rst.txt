UART
=====



**Constructors**

**UART(**\ *unit*\ [optional]\ *, baudrate*\ [optional]\ *,
databits*\ [optional]\ *, stopbit*\ [optional]\ *,
paritybit*\ [optional]\ *, timeout*\ [optional]\ *,
tx_pin*\ [required]\ *, rx_pin*\ [required]\ **)**

Create a UART object associated with the given tx and rx pins and
configure it using other parameters. This allows you to then read/write
uart signal on the pins.

-  **unit**: The unit ID, either 0 or 3

-  **baudrate**: 115200 is the recommended baudrate on ameba

-  **databits**: the number of bits for data bits, usually 7 or 8 bits

-  **stopbits**: the number of stop bits, usually 1 or 1.5 or 2 bits

-  **paritybit**: for parity check, usually none, odd or even

-  **timeout**: how long uart wait before its timeout (in milliseconds)

-  **tx_pin**: the transmitter pin, connect the rx pin of the receiver

-  **rx_pin**: the receiver pin, connect to tx pin of the transmitter

Note: Not all parameters are required, thus MicroPython will assume its
default value once left blank, here are the default values for each
optional parameter,

========= =============
Parameter Default Value
========= =============
Unit      0
Baudrate  115200
Databits  8
Stopbits  1
Paritybit 0
Timeout   10 (ms)
========= =============

**Methods**

**UART.init()**

This method initializes and configures the UART.

**UART.read(**\ *length*\ [optional]\ **)**

This method reads the data received in UART buffer.

-  **length:** the length of the data to receive

**UART.readline()**

This method is similar to read(), but read a line ending with a newline
character.

**UART.write(**\ *buffer*\ [require]\ **)**

This method sends the buffer of bytes to the bus and returns the number
of bytes written.

-  **buffer**: data buffer that can be a string, an integer or other
   data types

**UART.irq_enable(**\ *bool*\ [optional]\ **)**

This method works in 2 way:

-  Check the status of uart irq when NOT passing any argument, and it
   will return True if irq is enabled, False if disabled

-  Enable/disable uart irq handler by passing True or False as bool

**UART.irq_handler(**\ *function*\ [required]\ **)**

Passing the python handler to uart irq so that it will be triggered when
an UART event occurs.

-  **function:** a function defined in python or a lambda function

.. |A picture containing treemap chart Description automatically generated| image:: ../media/api_documents/imageUART.jpg
   :width: 5.44444in
   :height: 4.9375in
