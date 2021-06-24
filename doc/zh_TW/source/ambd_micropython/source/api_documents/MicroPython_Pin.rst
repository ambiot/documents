Pin
===


**Constructors**

**Pin(**\ *"pin_name"*\ [required]\ *, direction*\ [required]\ *,
pull_mode*\ [optional]\ *, value*\ [optional]\ **)**

Create a Pin object associated with the given gpio pin name and
configure it using other parameters. This allows you to then read/write
digital values on the pin.

-  **"pin_name"**: The name of the pin, must be in string format, use
   help(Pin.board) to check all pin names

-  **direction**:

   -  Pin.IN – for input

   -  Pin.OUT - for output

-  **pull_mode**:

   -  Pin.PULL_NONE – no pull-up or down resistor

   -  Pin.PULL_UP – enable pull-up resistor

   -  Pin.PULL_DOWN – enable pull-down resistor

   -  default value – Pin.PULL_NONE

-  **value:** Initial value, only applicable to OUTPUT, for example
   value = 1. Default value 0.

**Methods**

**Pin.id()**

This method will return the associated GPIO pin name after declaring a
Pin object.

**Pin.init(**\ *"pin_name"*\ [required]\ *, direction*\ [required]\ *,
pull_mode*\ [optional]\ *, value*\ [optional]\ **)**

Identical function as the Constructor, it creates and initializes a Pin
object using parameter typed in.

**Pin.value(**\ *number*\ [optional]\ **)**

This method can be used in 2 ways,

1. Output *number* keyed in

*number* can only be either 0 or 1 , indicating logic 0 or logic 1

2. Check the status of the pin

When left blank, this method will check the status (logic 0 /1) of the
Pin, regardless of which direction this Pin is configured as.

**Pin.on()**

This method sends a logic 1 signal to the associated pin

**Pin.off()**

This method sends a logic 0 signal to the associated pin

**Pin.toggle()**

This method toggles the logic signal of the associated pin

.. |get-start-17| image:: ../media/api_documents/imagePin.png
   :width: 5.46696in
   :height: 5.10294in
