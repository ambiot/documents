###############
Basic Examples
###############

.. role:: raw-html(raw)
   :format: html

:raw-html:`<h1 style="color:#000000; font-size:20px">`
AMB23 (RTL8722DM_MINI) Supported ARDUINO built-in example table
:raw-html:`</h1>`

:raw-html:`<p style="color:#E67E22; font-size:18px">`
There are many built-in examples in Arduino. In the table below, we list
all examples that are compatible with Ameba.
:raw-html:`</p>`

| Please refer to the following link to set up Ameba for Arduino IDE.
| `<https://www.amebaiot.com/en/amebad-mini-arduino-getting-started/>`_
| Please refer to the following link for Arduino built-in example details.
| `<https://www.arduino.cc/en/Tutorial/BuiltInExamples/ />`_



+---------------+----------------+----------------------+------------------+    
| **Category**  | **Name**       | **Comment**          | **Remarks**      |        
+===============+================+======================+==================+    
| 01.           | AnalogRead     | Connect              | ADC pin options  |    
| Basics        | Serial         | potentiometer to     | A0, A1, A2, A3,  |    
|               |                | 3.3V.                | A4, A5 and A6.   |   
|               |                |                      | ADC pin reading  |    
|               |                |                      | voltage range 0  |    
|               |                |                      | to 3.3V.         |    
+---------------+----------------+----------------------+------------------+    
|               | Bare           |                      |                  |   
|               | Minimum        |                      |                  |   
+---------------+----------------+----------------------+------------------+    
|               | Blink          | Pin LED_BUILTIN sets | Onboard LEDs     |    
|               |                | to LED_B             | options LED_B    |   
|               |                |                      | and LED_G. (blue |  
|               |                |                      | and green)       |    
+---------------+----------------+----------------------+------------------+    
|               | DigitalRead    |                      | Onboard button   |   
|               | Serial         |                      | PUSH_BTN.        |    
+---------------+----------------+----------------------+------------------+    
|               | Fade           | Replace "led = 9;"   |                  |    
|               |                | by a PWM pin (D4,    |                  |    
|               |                | D5, D7, D12, D13,    |                  |    
|               |                | D14, D17, D20, or    |                  |  
|               |                | D21). e.g. "led =    |                  |   
|               |                | 4;"                  |                  |    
+---------------+----------------+----------------------+------------------+    
|               | ReadAnalog     |                      | ADC pin options  |  
|               | Voltage        |                      | A0, A1, A2, A3,  |    
|               |                |                      | A4, A5 and A6.   |    
|               |                |                      | ADC pin reading  |    
|               |                |                      | voltage range 0  |   
|               |                |                      | to 3.3V.         |    
+---------------+----------------+----------------------+------------------+    
|  02.          | BlinkWitout    | The onboard blue LED | Onboard LEDs     |    
|  Digital      | Delay          | (LED_B) has been     | options LED_G.   |    
|               |                | used.                |                  |  
+---------------+----------------+----------------------+------------------+    
|               | Button         |                      | Onboard LEDs     |   
|               |                |                      | options LED_B    |    
|               |                |                      | and LED_G.       |    
|               |                |                      | Onboard button   |    
|               |                |                      | PUSH_BTN.        |    
+---------------+----------------+----------------------+------------------+   
|               | Debounce       |                      | Onboard LEDs     |    
|               |                |                      | options LED_B    |    
|               |                |                      | and LED_G.       |   
|               |                |                      | Onboard button   |    
|               |                |                      | PUSH_BTN.        |    
+---------------+----------------+----------------------+------------------+    
|               | DigitalInput   |                      | Onboard LEDs     |    
|               | Pullup         |                      | options LED_B    |    
|               |                |                      | and LED_G.       |    
+---------------+----------------+----------------------+------------------+    
|               | StateChange    |                      | Onboard LEDs     |    
|               | Detection      |                      | options LED_B    |    
|               |                |                      | and LED_G.       |    
|               |                |                      | Onboard button   |    
|               |                |                      | PUSH_BTN.        |    
+---------------+----------------+----------------------+------------------+    
|               | toneKeyboard   | Replace "tone(8,     |                  |    
|               |                | notes[thisSensor],   |                  |    
|               |                | 20);" by a PWM pin   |                  |    
|               |                | (D4, D5, D7, D12,    |                  |    
|               |                | D13, D14, D17, D20,  |                  |    
|               |                | or D21). e.g.        |                  |    
|               |                | "tone(21,            |                  |    
|               |                | notes[thisSensor],   |                  |    
|               |                | 20);"                |                  |    
+---------------+----------------+----------------------+------------------+    
|               | toneMelody     |                      |                  |    
|               |                |                      |                  |    
+---------------+----------------+----------------------+------------------+    
|               | tone           |                      |                  |    
|               | Multiple       |                      |                  |    
+---------------+----------------+----------------------+------------------+    
|               | tonePitch      |                      |                  |    
|               | Follower       |                      |                  |    
+---------------+----------------+----------------------+------------------+    
|  03.          | AnalogIn       | Replace              | ADC pin options  |    
|  Analog       | OutSerial      | "analogOutPin = 9;"  | A0, A1, A2, A3,  |    
|               |                | by a PWM pin (D4,    | A4, A5 and A6.   |   
|               |                | D5, D7, D12, D13,    | ADC pin reading  |    
|               |                | D14, D17, D20, or    | voltage range 0  |    
|               |                | D21). e.g.           | to 3.3V.         |    
|               |                | "analogOutPin = 4;"  |                  |    
+---------------+----------------+----------------------+------------------+    
|               | AnalogInput    |                      | Onboard LEDs     |    
|               |                |                      | options LED_B    |    
|               |                |                      | and LED_G. ADC   |    
|               |                |                      | pin reading      |    
|               |                |                      | voltage range 0  |    
|               |                |                      | to 3.3V.         |    
+---------------+----------------+----------------------+------------------+    
|               | Analog         | Use PWM pins D4, D5, |                  |    
|               | Write          | D7, D12, D13, D14,   |                  |    
|               | Mega           | D17, D20, or D21.    |                  |    
+---------------+----------------+----------------------+------------------+    
|               | Calibration    |                      | Onboard LEDs     |    
|               |                |                      | options LED_B    |    
|               |                |                      | and LED_G.       |    
|               |                |                      | Onboard button   |    
|               |                |                      | PUSH_BTN. ADC    |    
|               |                |                      | pin options A0,  |    
|               |                |                      | A1, A2, A3, A4,  |    
|               |                |                      | A5 and A6. ADC   |    
|               |                |                      | pin reading      |    
|               |                |                      | voltage range 0  |    
|               |                |                      | to 3.3V.         |    
+---------------+----------------+----------------------+------------------+    
|               | Fading         | Replace "ledPin =    |                  |    
|               |                | 9;" by a PWM pin     |                  |    
|               |                | (D4, D5, D7, D12,    |                  |    
|               |                | D13, D14, D17, D20,  |                  |    
|               |                | or D21). e.g.        |                  |    
|               |                | "ledPin = 4;"        |                  |   
+---------------+----------------+----------------------+------------------+    
|               | Smoothing      |                      | ADC pin options  |    
|               |                |                      | A0, A1, A2, A3,  |    
|               |                |                      | A4, A5 and A6.   |    
|               |                |                      | ADC pin reading  |    
|               |                |                      | voltage range 0  |    
|               |                |                      | to 3.3V.         |    
+---------------+----------------+----------------------+------------------+    
|  04.          | ASCIITable     |                      |                  |    
|  Communication|                |                      |                  |    
|               |                |                      |                  |    
|               |                |                      |                  |    
+---------------+----------------+----------------------+------------------+    
|               | Dimmer         |                      | Onboard LEDs     |    
|               |                |                      | options LED_B    |    
|               |                |                      | and LED_G.       |    
+---------------+----------------+----------------------+------------------+    
|               | Graph          | Connect              | ADC pin options  |   
|               |                | potentiometer to     | A0, A1, A2, A3,  |    
|               |                | 3.3V.                | A4, A5 and A6.   |    
|               |                |                      | ADC pin reading  |    
|               |                |                      | voltage range 0  |    
|               |                |                      | to 3.3V.         |   
+---------------+----------------+----------------------+------------------+   
|               | Midi           | Use Serial1 and pin  |                  |  
|               |                | D18, or use Serial2  |                  |    
|               |                | and pin D1.          |                  |    
+---------------+----------------+----------------------+------------------+   
|               | MultiSerial    |                      |                  |    
|               |                |                      |                  |    
+---------------+----------------+----------------------+------------------+    
|               | Physical       |                      | Onboard LEDs     |   
|               | Pixel          |                      | options LED_B    |    
|               |                |                      | and LED_G.       |    
+---------------+----------------+----------------------+------------------+   
|               | ReadASCII      | Use PWM pin for LED  |                  |    
|               | String         | (D4, D5, D7, D12,    |                  |    
|               |                | D13, D14, D17, D20,  |                  |    
|               |                | or D21).             |                  |    
+---------------+----------------+----------------------+------------------+    
|               | SerialCall     |                      | ADC pin options  |    
|               | Response       |                      | A0, A1, A2, A3,  |    
|               |                |                      | A4, A5 and A6.   |    
|               |                |                      | ADC pin reading  |    
|               |                |                      | voltage range 0  |    
|               |                |                      | to 3.3V.         |    
+---------------+----------------+----------------------+------------------+    
|               | Serial         |                      | ADC pin options  |   
|               | CallResponse   |                      | A0, A1, A2, A3,  |    
|               | ASCII          |                      | A4, A5 and A6.   |    
|               |                |                      | ADC pin reading  |    
|               |                |                      | voltage range 0  |    
|               |                |                      | to 3.3V.         |   
+---------------+----------------+----------------------+------------------+    
|               | SerialEvent    |                      |                  |    
|               |                |                      |                  |    
+---------------+----------------+----------------------+------------------+    
|               | SerialPa       |                      | Serial options,  |    
|               | ssthrough      |                      | Serial1 or       |    
|               |                |                      | Serial2.         |   
+---------------+----------------+----------------------+------------------+    
|               | VirtualColor   |                      | ADC pin options  |    
|               | Mixer          |                      | A0, A1, A2, A3,  |    
|               |                |                      | A4, A5 and A6.   |    
|               |                |                      | ADC pin reading  |    
|               |                |                      | voltage range 0  |    
|               |                |                      | to 3.3V.         |    
+---------------+----------------+----------------------+------------------+   
|  05.          | Arrays         | Use pins D1, D2, D3, |                  |    
|  Control      |                | D4, D5, D6.          |                  |   
|               |                |                      |                  |    
+---------------+----------------+----------------------+------------------+    
|               | ForLoop        | Use pins D1, D2, D3, |                  |   
|               | Iteration      | D4, D5, D6.          |                  |    
+---------------+----------------+----------------------+------------------+   
|               | IfStatement    |                      | ADC pin options  |    
|               | Conditional    |                      | A0, A1, A2, A3,  |    
|               |                |                      | A4, A5 and A6.   |    
|               |                |                      | ADC pin reading  |    
|               |                |                      | voltage range 0  |    
|               |                |                      | to 3.3V. Onboard |    
|               |                |                      | LEDs options     |    
|               |                |                      | LED_B and LED_G. |    
+---------------+----------------+----------------------+------------------+    
|               | switchCase     |                      | ADC pin options  |    
|               |                |                      | A0, A1, A2, A3,  |    
|               |                |                      | A4, A5 and A6.   |    
|               |                |                      | ADC pin reading  |    
|               |                |                      | voltage range 0  |    
|               |                |                      | to 3.3V.         |    
+---------------+----------------+----------------------+------------------+    
|               | switchCase2    | Use pins D1, D2, D3, |                  |    
|               |                | D4, D5, D6.          |                  |    
+---------------+----------------+----------------------+------------------+    
|               | WhileStatement | Replace "ledPin =    | ADC pin options  |    
|               | Conditional    | 9;" by a PWM pin     | A0, A1, A2, A3,  |    
|               |                | (D4, D5, D7, D12,    | A4, A5 and A6.   |    
|               |                | D13, D14, D17, D20,  | ADC pin reading  |   
|               |                | or D21). e.g.        | voltage range 0  |    
|               |                | "ledPin = 4;"        | to 3.3V.         |    
+---------------+----------------+----------------------+------------------+    
|  06.          | barGraph       |                      | ADC pin options  |   
|  Display      |                |                      | A0, A1, A2, A3,  |    
|               |                |                      | A4, A5 and A6.   |    
|               |                |                      | ADC pin reading  |    
|               |                |                      | voltage range 0  |    
|               |                |                      | to 3.3V.         |   
+---------------+----------------+----------------------+------------------+    
|               | RowColumn      |                      | ADC pin options  |    
|               | Scanning       |                      | A0, A1, A2, A3,  |   
|               |                |                      | A4, A5 and A6.   |   
|               |                |                      | ADC pin reading  |    
|               |                |                      | voltage range 0  |    
|               |                |                      | to 3.3V.         |    
+---------------+----------------+----------------------+------------------+    
|  07.          | Character      |                      |                  |    
|  Strings      | Analysis       |                      |                  |    
|               |                |                      |                  |    
+---------------+----------------+----------------------+------------------+   
|               | String         |                      |                  |    
|               | Addition       |                      |                  |    
|               | Operator       |                      |                  |    
+---------------+----------------+----------------------+------------------+    
|               | String         |                      |                  |    
|               | Append         |                      |                  |    
|               | Operator       |                      |                  |    
+---------------+----------------+----------------------+------------------+    
|               | StringCase     |                      |                  |    
|               | Changes        |                      |                  |    
+---------------+----------------+----------------------+------------------+    
|               | String         |                      |                  |    
|               | Characters     |                      |                  |    
+---------------+----------------+----------------------+------------------+    
|               | String         |                      | ADC pin options  |   
|               | Comparison     |                      | A0, A1, A2, A3,  |    
|               | Operators      |                      | A4, A5 and A6.   |    
|               |                |                      | ADC pin reading  |    
|               |                |                      | voltage range 0  |    
|               |                |                      | to 3.3V.         |    
+---------------+----------------+----------------------+------------------+    
|               | String         |                      |                  |    
|               | IndexOf        |                      |                  |    
+---------------+----------------+----------------------+------------------+   
|               | String         |                      |                  |    
|               | Length         |                      |                  |    
+---------------+----------------+----------------------+------------------+    
|               | StringLength   |                      |                  |   
|               | Trim           |                      |                  |    
+---------------+----------------+----------------------+------------------+    
|               | String         |                      |                  |    
|               | Replace        |                      |                  |   
+---------------+----------------+----------------------+------------------+    
|               | String         |                      |                  |    
|               | StartsWith     |                      |                  |   
|               | EndsWith       |                      |                  |    
+---------------+----------------+----------------------+------------------+    
|               | String         |                      |                  |    
|               | Substring      |                      |                  |    
+---------------+----------------+----------------------+------------------+   
|               | String         |                      |                  |   
|               | ToInt          |                      |                  |   
+---------------+----------------+----------------------+------------------+    


