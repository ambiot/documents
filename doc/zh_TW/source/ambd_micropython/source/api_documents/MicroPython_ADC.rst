===
ADC
===


**Constructors**

**ADC(**\ *unit*\ [required]\ **)**

Create an ADC object associated with the given unit ID. This allows you
to then read analog values on the pin assigned to the unit ID.

-  **unit:** unit number is tied to a specific pin. Refer to table below
   for more information,

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

**Methods**

**ADC.read()**

Read the value on the analog pin and return it.

.. |image1| image:: ../media/api_documents/imageADC.jpg
   :width: 6.16667in
   :height: 4.34167in
