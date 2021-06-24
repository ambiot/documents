PWM
===


**Constructors**

**PWM(**\ *unit*\ [optional]\ *, “pin_name”*\ [required]\ **)**

Create a PWM object associated with the given pin name. This allows you
to then write PWM signal on the pin.

-  **unit**: unit ID of the hardware PWM, will use default unit 0 if
   leave blank

-  **"pin_name"**: The name of the pin, must be in string format. See
   below for PWM supported pins.

**Note:**

PWM is currently only supported on the following pins,

PA_23, PA_24, PA_25, PA_26

**Methods**

**PWM.write(**\ *dutycycle_float*\ [required]\ **)**

This method will output a PWM signal with given duty cycle on the
associated GPIO pin.

-  **dutycycle_float**: a floating point duty cycle value, can be from
   0.0 (0%) to 1.0 (100%)

.. |A circuit board Description automatically generated| image:: ../media/api_documents/imagePWM.jpg
   :width: 5.67857in
   :height: 3.44028in
