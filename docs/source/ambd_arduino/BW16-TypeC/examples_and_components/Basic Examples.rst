###############
Basic Examples
###############

.. role:: raw-html(raw)
   :format: html

:raw-html:`<h1 style="color:#000000; font-size:20px">`
BW16 (RTL8720DN) Supported ARDUINO built-in example table
:raw-html:`</h1>`

:raw-html:`<p style="color:#E67E22; font-size:18px">`
There are many built-in examples in Arduino. In the table below, we list
all examples that are compatible with Ameba.
:raw-html:`</p>`

| Please refer to the following link to set up Ameba for Arduino IDE.
| `<https://www.amebaiot.com/en/amebad-bw16-arduino-getting-started/>`_
| Please refer to the following link for Arduino built-in example details.
| `<https://www.arduino.cc/en/Tutorial/BuiltInExamples/ />`_

+---------------+----------------+------------------------+--------------------+
| **Category**  | **Name**       | **Comment**            | **Remarks**        |
+===============+================+========================+====================+
| 01.           | Analog         | Connect potentiometer  | ADC pin reading    |
| Basics        | ReadSerial     | to 3.3V. Use ADC pin   | voltage range 0 to |
|               |                | A2(PB3).               | 3.3V.              |
+---------------+----------------+------------------------+--------------------+
|               | BareMinimum    |                        |                    |
+---------------+----------------+------------------------+--------------------+
|               | Blink          | Pin LED_BUILTIN sets   | Onboard LEDs       |
|               |                | to LED_G               | options LED_R,     |
|               |                |                        | LED_B, and LED_G.  |
|               |                |                        | (red, blue, and    |
|               |                |                        | green)             |
+---------------+----------------+------------------------+--------------------+
|               | Digital        |                        |                    |
|               | ReadSerial     |                        |                    |
+---------------+----------------+------------------------+--------------------+
|               | Fade           | Use PWM pins D7(PA25), |                    |
|               |                | D8(PA26), D11(PA13),   |                    |
|               |                | D12(PA12)              |                    |
+---------------+----------------+------------------------+--------------------+
|               | Read           | Use ADC pin A2(PB3).   | ADC pin reading    |
|               | Analog         |                        | voltage range 0 to |
|               | Voltage        |                        | 3.3V.              |
+---------------+----------------+------------------------+--------------------+
| 02.           | BlinkWithout   | Pin LED_BUILTIN sets   | Onboard LEDs       |
| Digital       | Delay          | to LED_G               | options LED_R,     |
|               |                |                        | LED_B, and LED_G.  |
+---------------+----------------+------------------------+--------------------+
|               | Button         | Replace "ledPin = 13;" | Onboard LEDs       |
|               |                | by available digital   | options LED_R,     |
|               |                | pins. e.g. "ledPin =   | LED_B, and LED_G.  |
|               |                | LED_BUILTIN;"          |                    |
+---------------+----------------+------------------------+--------------------+
|               | Debounce       | Replace "ledPin = 13;" | Onboard LEDs       |
|               |                | by available digital   | options LED_R,     |
|               |                | pins. e.g. "ledPin =   | LED_B, and LED_G.  |
|               |                | LED_BUILTIN;"          |                    |
+---------------+----------------+------------------------+--------------------+
|               | Digital        | Replace "ledPin = 13;" | Onboard LEDs       |
|               | InputPullup    | by available digital   | options LED_R,     |
|               |                | pins. e.g. "ledPin =   | LED_B, and LED_G.  |
|               |                | LED_BUILTIN;"          |                    |
+---------------+----------------+------------------------+--------------------+
|               | StateChange    | Replace "ledPin = 13;" | Onboard LEDs       |
|               | Detection      | by available digital   | options LED_R,     |
|               |                | pins. e.g. "ledPin =   | LED_B, and LED_G.  |
|               |                | LED_BUILTIN;"          |                    |
+---------------+----------------+------------------------+--------------------+
|               | toneMelody     |                        |                    |
+---------------+----------------+------------------------+--------------------+
|               | tone           |                        |                    |
|               | Multiple       |                        |                    |
+---------------+----------------+------------------------+--------------------+
|               | tonePitch      |                        |                    |
|               | Follower       |                        |                    |
+---------------+----------------+------------------------+--------------------+
| 03.           | Analog         | Replace "analogOutPin  | ADC pin reading    |
| Analog        | InOutSerial    | = 9;" by a PWM pin     | voltage range 0 to |
|               |                | (D7(PA25), D8(PA26),   | 3.3V.              |
|               |                | D11(PA13) or           |                    |
|               |                | D12(PA12))). e.g.      |                    |
|               |                | "analogOutPin = 7;".   |                    |
|               |                | Use ADC pin A2(PB3).   |                    |
+---------------+----------------+------------------------+--------------------+
|               | AnalogInput    | Replace "ledPin = 13;" | Onboard LEDs       |
|               |                | by available digital   | options LED_R,     |
|               |                | pins. e.g. "ledPin =   | LED_B, and LED_G.  |
|               |                | LED_BUILTIN;". Use ADC | ADC pin reading    |
|               |                | pin A2(PB3).           | voltage range 0 to |
|               |                |                        | 3.3V.              |
+---------------+----------------+------------------------+--------------------+
|               | Analog         | Use PWM pins D7(PA25), | Onboard LEDs with  |
|               | Write Mega     | D8(PA26), D11(PA13),   | PWM. LED_B(D11),   |
|               |                | D12(PA12)              | and LED_G(D12).    |
+---------------+----------------+------------------------+--------------------+
|               | Calibration    | Connect another LED to | ADC pin reading    |
|               |                | pin D13. Use ADC pin   | voltage range 0 to |
|               |                | A2(PB3).               | 3.3V.              |
+---------------+----------------+------------------------+--------------------+
|               | Fading         | Use PWM pins D7(PA25), | Onboard LEDs with  |
|               |                | D8(PA26), D11(PA13),   | PWM. LED_B(D11),   |
|               |                | D12(PA12).             | and LED_G(D12).    |
+---------------+----------------+------------------------+--------------------+
|               | Smoothing      | Use ADC pin A2(PB3).   | ADC pin reading    |
|               |                |                        | voltage range 0 to |
|               |                |                        | 3.3V.              |
+---------------+----------------+------------------------+--------------------+
| 04.           | ASCIITable     |                        |                    |
| Communication |                |                        |                    |
|               |                |                        |                    |
|               |                |                        |                    |
+---------------+----------------+------------------------+--------------------+
|               | Dimmer         |                        | Onboard LEDs       |
|               |                |                        | options LED_R,     |
|               |                |                        | LED_B, and LED_G.  |
+---------------+----------------+------------------------+--------------------+
|               | Graph          | Connect potentiometer  | ADC pin reading    |
|               |                | to 3.3V. Use ADC pin   | voltage range 0 to |
|               |                | A2(PB3).               | 3.3V.              |
+---------------+----------------+------------------------+--------------------+
|               | Midi           | Use Serial1 and pin    |                    |
|               |                | D4(PB1).               |                    |
+---------------+----------------+------------------------+--------------------+
|               | MultiSerial    | Required external      |                    |
|               |                | USB-to-UART module.    |                    |
+---------------+----------------+------------------------+--------------------+
|               | Physical       | Replace "ledPin = 13;" | Onboard LEDs       |
|               | Pixel          | by available digital   | options LED_R,     |
|               |                | pins. e.g. "ledPin =   | LED_B, and LED_G.  |
|               |                | LED_BUILTIN;".         |                    |
+---------------+----------------+------------------------+--------------------+
|               | Read           | Use PWM pins for LED,  | Onboard LEDs with  |
|               | ASCIIString    | D7(PA25), D8(PA26),    | PWM. LED_B(D11),   |
|               |                | D11(PA13), D12(PA12).  | and LED_G(D12).    |
+---------------+----------------+------------------------+--------------------+
|               | SerialEvent    |                        |                    |
+---------------+----------------+------------------------+--------------------+
|               | Serial         | Required external      |                    |
|               | Passthrough    | USB-to-UART module.    |                    |
+---------------+----------------+------------------------+--------------------+
| 05.           | Arrays         | Use pins D6, D7, D8,   |                    |
| Control       |                | D9, D10, D11. Modify   |                    |
|               |                | pin number in your     |                    |
|               |                | code accordingly       |                    |
+---------------+----------------+------------------------+--------------------+
|               | ForLoop        | Use pins D6, D7, D8,   |                    |
|               | Iteration      | D9, D10, D11. Modify   |                    |
|               |                | pin number in your     |                    |
|               |                | code accordingly       |                    |
+---------------+----------------+------------------------+--------------------+
|               | IfStatement    | Replace "ledPin = 13;" | Onboard LEDs       |
|               | Conditional    | by available digital   | options LED_R,     |
|               |                | pins. e.g. "ledPin =   | LED_B, and LED_G.  |
|               |                | LED_BUILTIN;". Use ADC | ADC pin reading    |
|               |                | pin A2(PB3).           | voltage range 0 to |
|               |                |                        | 3.3V.              |
+---------------+----------------+------------------------+--------------------+
|               | switchCase     | Use ADC pin A2(PB3).   | ADC pin reading    |
|               |                |                        | voltage range 0 to |
|               |                |                        | 3.3V.              |
+---------------+----------------+------------------------+--------------------+
|               | switchCase2    | Use pins D7, D8, D9,   |                    |
|               |                | D10, D11. Modify pin   |                    |
|               |                | number used in your    |                    |
|               |                | code accordingly.      |                    | 
+---------------+----------------+------------------------+--------------------+
|               | While          | Use ADC pin A2(PB3).   | ADC pin reading    |
|               | Statement      | Replace                | voltage range 0 to |
|               | Conditional    | "indicatorLedPin =     | 3.3V. Onboard LEDs |
|               |                | 13;" by available      | options LED_R,     |
|               |                | digital pins. e.g.     | LED_B, and LED_G.  |
|               |                | "indicatorLedPin =     | Onboard LEDs with  |
|               |                | LED_BUILTIN;". Replace | PWM. LED_B(D11),   |
|               |                | "ledPin = 9;" by a PWM | and LED_G(D12).    |
|               |                | pin D7(PA25),          |                    |
|               |                | D8(PA26), D11(PA13) or |                    |
|               |                | D12(PA12)). e.g.       |                    |
|               |                | "ledPin = 7;"          |                    |
+---------------+----------------+------------------------+--------------------+
| 06.           | barGraph       | Use ADC pin A2(PB3).   | ADC pin reading    |
| Display       |                |                        | voltage range 0 to |
|               |                |                        | 3.3V.              |
+---------------+----------------+------------------------+--------------------+
| 07.           | Character      |                        |                    |
| Strings       | Analysis       |                        |                    |
|               |                |                        |                    |
+---------------+----------------+------------------------+--------------------+
|               | StringAddition |                        |                    |
|               | Operator       |                        |                    |
+---------------+----------------+------------------------+--------------------+
|               | StringAppend   |                        |                    |
|               | Operator       |                        |                    |
+---------------+----------------+------------------------+--------------------+
|               | String         |                        |                    |
|               | CaseChanges    |                        |                    |
+---------------+----------------+------------------------+--------------------+
|               | String         |                        |                    |
|               | Characters     |                        |                    |
+---------------+----------------+------------------------+--------------------+
|               | String         | Use ADC pin A2(PB3).   | ADC pin reading    |
|               | Comparision    |                        | voltage range 0 to |
|               | Operators      |                        | 3.3V.              |
+---------------+----------------+------------------------+--------------------+
|               | StringIndexOf  |                        |                    |
|               |                |                        |                    |
+---------------+----------------+------------------------+--------------------+
|               | StringLength   |                        |                    |
|               |                |                        |                    |
+---------------+----------------+------------------------+--------------------+
|               | String         |                        |                    |
|               | LengthTrim     |                        |                    |
+---------------+----------------+------------------------+--------------------+
|               | String         |                        |                    |
|               | Replace        |                        |                    |
+---------------+----------------+------------------------+--------------------+
|               | String         |                        |                    |
|               | Starts         |                        |                    |
|               | WithEndsWith   |                        |                    |
+---------------+----------------+------------------------+--------------------+
|               | String         |                        |                    |
|               | Substring      |                        |                    |
+---------------+----------------+------------------------+--------------------+
|               | StringToInt    |                        |                    |
+---------------+----------------+------------------------+--------------------+