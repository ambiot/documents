[RTL8722CSM] [RTL8722DM] PWM – Play Music
===========================================
Preparation

-  Ameba x 1

-  Buzzer x 1

Example

A sound is composed of volume, tone and timbre. Volume is determined by
the amplitude of the sound wave. Tone is determined by the frequency of
the sound wave. Timbre is determined by the waveform of the sound wave.

In this example, we use PWM to control the buzzer to emit sound with
desired tone. As PWM outputs square wave, if we wish to emit tone C4
(frequency=262Hz), we have to make PWM to output square wave with
wavelength 1/262 = 3.8ms:

.. image:: ../media/[RTL8722CSM]_[RTL8722DM]_PWM_Play_Music/image1.png
   :alt: 1
   :width: 6.5in
   :height: 1.6875in

| We use PWM to output sound wave with different frequency, so as to
  play music by the buzzer.
| Connect the buzzer to the PWM output pin shown in the following
  diagrams.
| RTL8722 wiring diagram:

.. image:: ../media/[RTL8722CSM]_[RTL8722DM]_PWM_Play_Music/image2.png
   :alt: 2
   :width: 6.24306in
   :height: 6.88194in

| Open the example code in “Examples” -> “AmebaAnalog” ->
  “TonePlayMelody”
| Compile and upload to Ameba, press the reset button. Then you can hear
  the buzzer playing music.

Code Reference

| Ameba implement the tone() and noTone() API of Arduino:
| https://www.arduino.cc/en/Reference/Tone
| https://www.arduino.cc/en/Reference/NoTone

In the sample code, we initiate a melody array, which stores the tones
to make. Another array, noteDurations, contains the length of each tone,
4 represents quarter note (equals to 3000ms/4 = 750ms, and plus an extra
30% time pause), 8 represents eighth note.
