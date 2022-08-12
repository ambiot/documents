##########################################################################
GPIO - Use GPIO Interrupt To Control LED
##########################################################################

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Preparation**
:raw-html:`</p>`

  - AmebaD [AMB21 / AMB22 / AMB23 / BW16] x 1
  - LED x 1
  - Button x 1

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Example**
:raw-html:`</p>`

In this example, we use a button to trigger interrupt and control the
LED. When we press and release the button, the LED dims, press and
release the button again, and the LED lights.Note that in the Arduino
example “Button and LED”, LED only lights when the button is pressed and
hold, when we release the button, the LED dims.

Open the example, ``“Files” → “Examples” → “AmebaGPIO” →
“LED_InterruptCtrl”``

**AMB21 / AMB22** Wiring Diagram: 

.. image:: /media/ambd_arduino/GPIO_Use_GPIO_Interrupt_To_Control_LED/image1.png
   :align: center
   :width: 1335
   :height: 934
   :scale: 74 %

**AMB23** Wiring Diagram:
  
.. image:: /media/ambd_arduino/GPIO_Use_GPIO_Interrupt_To_Control_LED/image2.png
   :align: center
   :width: 831
   :height: 797
   :scale: 87 %

**BW16** Wiring Diagram:
  
.. image:: /media/ambd_arduino/GPIO_Use_GPIO_Interrupt_To_Control_LED/image2-2.png
   :align: center
   :width: 763
   :height: 777
   :scale: 90 %

**BW16-TypeC** Wiring Diagram:

.. image:: /media/ambd_arduino/GPIO_Use_GPIO_Interrupt_To_Control_LED/image2-3.png
   :align: center
   :width: 668
   :height: 665

| Compile and upload the program, press reset.
| The LED lights at first. Press and release the button, then the LED
  should dim. Press again, then the LED should light.

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Code Reference**
:raw-html:`</p>`

In

.. code-block:: c

  setup()

we set Pin 12 to

.. code-block:: c

  INPUT_IRQ_RISE

, this means that an interrupt occurs when the voltage of this pin
changes from GND to 3V3. Therefore, we connect the other side of the
button to 3V3, so as to trigger interrupt event when the button is
pressed.

.. code-block:: c

  pinMode(button, INPUT_IRQ_RISE);

On the other hand, we can set pin 12 to

.. code-block:: c

  INPUT_IRQ_FALL

, this means that an interrupt occurs when the voltage of this pin
changes from 3V3 to GND. In this case, the other side of the button is
connected to GND.Next, we need to specify the funtion to be execute to
handle the interrupt:

.. code-block:: c

  digitalSetIrqHandler(button, button_handler);

The second parameter is a function pointer, with prototype:

.. code-block:: c

  void button_handler(uint32_t id, uint32_t event)

In this handler, every time we press and release the button, we trigger
an interrupt, and change the status of the LED.

