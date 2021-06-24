[RTL8722CSM] [RTL8722DM] GPIO - Use GPIO Interrupt To Control LED
==================================================================
Preparation

-  Ameba x 1

-  LED x 1

-  Button x 1

Example

In this example, we use a button to trigger interrupt and control the
LED. When we press and release the button, the LED dims, press and
release the button again, and the LED lights.Note that in the Arduino
example “Button and LED”, LED only lights when the button is pressed and
hold, when we release the button, the LED dims.

Open the example, “Files” -> “Examples” -> “AmebaGPIO” ->
“LED_InterruptCtrl”

RTL8722 wiring diagram:

.. image:: ../media/[RTL8722CSM]_[RTL8722DM]_GPIO_Use_GPIO_Interrupt_To_Control_LED/image1.png
   :alt: 1
   :width: 6.5in
   :height: 5.18819in

| Compile and upload the program, press reset.
| The LED lights at first. Press and release the button, then the LED
  should dim. Press again, then the LED should light.

Code Reference

In

setup()

we set Pin 12 to

INPUT_IRQ_RISE

, this means that an interrupt occurs when the voltage of this pin
changes from GND to 3V3. Therefore, we connect the other side of the
button to 3V3, so as to trigger interrupt event when the button is
pressed.

pinMode(button, INPUT_IRQ_RISE);

On the other hand, we can set pin 12 to

INPUT_IRQ_FALL

, this means that an interrupt occurs when the voltage of this pin
changes from 3V3 to GND. In this case, the other side of the button is
connected to GND.Next, we need to specify the funtion to be execute to
handle the interrupt:

digitalSetIrqHandler(button, button_handler);

The second parameter is a function pointer, with prototype:

void button_handler(uint32_t id, uint32_t event)

In this handler, every time we press and release the button, we trigger
an interrupt, and change the status of the LED.
