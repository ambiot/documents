##########################################################################
PWM - Play Music by Buzzer
##########################################################################

.. role:: raw-html(raw)
   :format: html

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Preparation**
:raw-html:`</p>`

   - AmebaD [AMB21 / AMB22 / AMB23 / BW16] x 1
   -  Buzzer x 1

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Example**
:raw-html:`</p>`

A sound is composed of volume, tone and timbre. Volume is determined by
the amplitude of the sound wave. Tone is determined by the frequency of
the sound wave. Timbre is determined by the waveform of the sound wave.

In this example, we use PWM to control the buzzer to emit sound with
desired tone. As PWM outputs square wave, if we wish to emit tone C4
(frequency=262Hz), we have to make PWM to output square wave with
wavelength 1/262 = 3.8ms:

.. image:: /media/ambd_arduino/PWM_Play_Music_By_Buzzer/image1.png
   :align: center
   :width: 710
   :height: 184
  
We use PWM to output sound wave with different frequency, so as to
play music by the buzzer.

Connect the buzzer to the PWM output pin shown in the following
diagrams.

**AMB21 / AMB22** Wiring Diagram:

.. image:: /media/ambd_arduino/PWM_Play_Music_By_Buzzer/image2.png
   :align: center
   :width: 1080
   :height: 926
   :scale: 75 %

**AMB23** Wiring Diagram:

.. image:: /media/ambd_arduino/PWM_Play_Music_By_Buzzer/image3.png
   :align: center
   :width: 806
   :height: 686

**BW16** Wiring Diagram:

.. image:: /media/ambd_arduino/PWM_Play_Music_By_Buzzer/image3-1.png
   :align: center
   :width: 905
   :height: 678

**BW16-TypeC** Wiring Diagram:

.. image:: /media/ambd_arduino/PWM_Play_Music_By_Buzzer/image3-2.png
   :align: center
   :width: 858
   :height: 712

Open the example code in ``“Examples” → “AmebaAnalog” → “TonePlayMelody”``
Compile and upload to Ameba, press the reset button. Then you can hear
the buzzer playing music.

:raw-html:`<p style="color:#E67E22; font-size:24px">`
**Code Reference**
:raw-html:`</p>`

Ameba implement the tone() and noTone() API of Arduino:
https://www.arduino.cc/en/Reference/Tone
https://www.arduino.cc/en/Reference/NoTone

In the sample code, we initiate a melody array, which stores the tones
to make. Another array, noteDurations, contains the length of each tone,
4 represents quarter note (equals to 3000ms/4 = 750ms, and plus an extra
30% time pause), 8 represents eighth note.

