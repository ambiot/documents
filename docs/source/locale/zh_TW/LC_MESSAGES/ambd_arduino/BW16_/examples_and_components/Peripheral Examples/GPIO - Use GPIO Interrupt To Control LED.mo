��          �               <  !   =     _     y  �   �  �   y  Y   M  R   �  V   �  ,   Q  (   ~     �  K  �  w   �  '   n  w   �  ;        J  �  [  '   �     	     %	  �   D	  �   �	  Z   �
  W   �
  W   T  @   �  '   �       >    �   X     �  f   �  @   a  '   �   **AMB21 / AMB22** Wiring Diagram: **AMB23** Wiring Diagram: **BW16** Wiring Diagram: , this means that an interrupt occurs when the voltage of this pin changes from 3V3 to GND. In this case, the other side of the button is connected to GND.Next, we need to specify the funtion to be execute to handle the interrupt: , this means that an interrupt occurs when the voltage of this pin changes from GND to 3V3. Therefore, we connect the other side of the button to 3V3, so as to trigger interrupt event when the button is pressed. :raw-html:`<p style="color:#E67E22; font-size:24px">` **Code Reference** :raw-html:`</p>` :raw-html:`<p style="color:#E67E22; font-size:24px">` **Example** :raw-html:`</p>` :raw-html:`<p style="color:#E67E22; font-size:24px">` **Preparation** :raw-html:`</p>` Compile and upload the program, press reset. GPIO - Use GPIO Interrupt To Control LED In In this example, we use a button to trigger interrupt and control the LED. When we press and release the button, the LED dims, press and release the button again, and the LED lights.Note that in the Arduino example “Button and LED”, LED only lights when the button is pressed and hold, when we release the button, the LED dims. In this handler, every time we press and release the button, we trigger an interrupt, and change the status of the LED. On the other hand, we can set pin 12 to The LED lights at first. Press and release the button, then the LED should dim. Press again, then the LED should light. The second parameter is a function pointer, with prototype: we set Pin 12 to Project-Id-Version: AmebaDocs EPUB3
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2022-08-12 04:08+0100
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: zh_TW
Language-Team: zh_TW <LL@li.org>
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.10.1
 **AMB21 / AMB22** 接線的方式如下 **AMB23** 接線的方式如下 **BW16** 接線的方式如下 ，代表遇到pin的電壓遇到3V3變成GND會觸發Interrupt。這種情況裡，按鈕另一端通常會接在GND設定完pin mode之後，再設定要處理interrupt的function: ，代表當這根pin的電壓遇到GND變成3V3的情況會觸發Interrupt。所以我們將按鈕一端接在3V3，按下按鈕時3V3會連通而觸發interrupt。 :raw-html:`<p style="color:#E67E22; font-size:24px">` **程式碼説明** :raw-html:`</p>` :raw-html:`<p style="color:#E67E22; font-size:24px">` **範例説明** :raw-html:`</p>` :raw-html:`<p style="color:#E67E22; font-size:24px">` **材料準備** :raw-html:`</p>` 編譯程式並上傳到Ameba完成之後，按下Reset按鈕。 GPIO - 使用 GPIO Interrupt 控制 LED 在 這個範例裡，我們使用按鈕與LED。一開始LED是亮的，當我們按下按鈕並放開之後，LED變暗。再按下按鈕之後，LED變亮。相比較於Arduino的入門的範例 “按鈕與LED”，不一樣的地方是，Arduino的範例是按著按鈕，LED才亮著，放開按鈕，LED才熄滅。 所以我們在這個handler裡面處理interrupt，每按一次按鈕（並放開）會觸發一次中斷，我們就改變LED狀態。 我們也可以設定成 一開始LED是亮的，當我們按下Pin 12的按鈕並放開，LED變暗，再按一次，LED變亮 其中第二個參數是function pointer，它的prototype是： 裡面我們將Pin 12的按鈕設定成 