####
ADC
####

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#0070C0; font-size:26px">`
**API Documents**
:raw-html:`</p>`

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Constructors**
:raw-html:`</p>`

| **ADC(**\ *unit*\  [required]\ **)**
| Create an ADC object associated with the given unit ID. This allows you to then read analog values on the pin assigned to the unit ID.

- ``unit``: unit number is tied to a specific pin. Refer to table below for more information,

.. table:: 
   :align: center
   
   ==== ====
   Unit Pin
   ==== ====
   0    PB_4
   1    PB_5
   2    PB_6
   3    PB_7
   4    PB_1
   5    PB_2
   6    PB_3
   ==== ====


:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Methods**
:raw-html:`</p>`

| **ADC.read()**
| Read the value on the analog pin and return it.