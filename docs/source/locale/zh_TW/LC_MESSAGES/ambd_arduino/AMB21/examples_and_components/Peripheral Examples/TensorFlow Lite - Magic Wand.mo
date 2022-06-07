��          �               l  !   m     �     �     �  Y   �  R   *  T   }     �  L   �  �   >  j   �  p   ?  <   �  ;   �  �   )  �     z   �  l   c  ^   �  P   /  �  �     
     
     2
  
   F
  Z   Q
  W   �
  W         \  K   }  G   �  p     p   �     �       �   2    �  �   �  Z   s  `   �  >   /   **AMB21 / AMB22** Wiring Diagram: **AMB23** Wiring Diagram: **BW16** Wiring Diagram: **Procedure** :raw-html:`<p style="color:#E67E22; font-size:24px">` **Code Reference** :raw-html:`</p>` :raw-html:`<p style="color:#E67E22; font-size:24px">` **Example** :raw-html:`</p>` :raw-html:`<p style="color:#E67E22; font-size:24px">` **Materials** :raw-html:`</p>` Adafruit LSM9DS1 accelerometer Connect the accelerometer and LEDs to the AMB21/AMB22 following the diagram. Download the Ameba customized version of TensorFlow Lite for Microcontrollers library at https://github.com/ambiot/tree/master/Arduino_zip_libraries. Ensure that the patch files found at https://github.com/ambiot/tree/master/Ameba_misc/ are also installed. Follow the instructions at https://docs.arduino.cc/software/ide-v1/tutorials/installing-libraries to install it. For AMB23, we will use the onboard LEDs on the board itself. For BW16, we will use the onboard LEDs on the board itself. Holding the accelerometer steady, with the positive x-axis pointing to the right and the positive z-axis pointing upwards, move it following the shapes as shown, moving it in a smooth motion over 1 to 2 seconds, avoiding any sharp movements. If the movement is recognised by the Tensorflow Lite model, you should see the same shape output to the Arduino serial monitor. Different LEDs will light up corresponding to different recognized gestures. More information on TensorFlow Lite for Microcontrollers can be found at: https://www.tensorflow.org/lite/microcontrollers Note that the wing shape is easy to achieve, while the slope and ring shapes tend to be harder to get right. Open the example, ``"Files" -> "Examples" -> “TensorFlowLite_Ameba” -> “magic_wand”``. Upload the code and press the reset button on Ameba once the upload is finished. Project-Id-Version: AmebaDocs EPUB3
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2022-06-06 10:48+0100
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: zh_TW
Language-Team: zh_TW <LL@li.org>
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.10.1
 **AMB21/AMB22** 接線圖: **AMB23** 接線圖: **BW16** 接線圖: **步驟** :raw-html:`<p style="color:#E67E22; font-size:24px">` **程式碼説明** :raw-html:`</p>` :raw-html:`<p style="color:#E67E22; font-size:24px">` **範例説明** :raw-html:`</p>` :raw-html:`<p style="color:#E67E22; font-size:24px">` **材料準備** :raw-html:`</p>` Adafruit LSM9DS1 加速感測器 如下圖，將加速感測器和LED連接到 AMB21 / AMB22 開發板上。 從以下網址下載TensorFlow Lite for Microcontrollers的Ameba版本 確保在以下位置找到patch文件並安裝https://github.com/ambiot/ambd_arduino/tree/master/Ameba_misc/。 請按照以下說明進行安裝操作https://docs.arduino.cc/software/ide-v1/tutorials/installing-libraries。 直接使用 AMB23 板上的LED 直接使用 BW16 板上的LED 保持加速感測器穩定，使x軸的正極指向右側，z軸的正極指向上方，按照所示形狀移動加速感測器，使其平穩運動1至2秒鐘，避免劇烈運動。 如果Tensorflow Lite模型可以識別移動，則應該看到相同形狀的輸出到Arduino串行監視器。對應於不同的識別手勢，不同的LED將亮起。請注意，機翼形狀易於實現，而坡度和環形形狀則更難於正確定位。 有關TensorFlow Lite for Microcontrollers的更多信息，請參考以下網址: https://www.tensorflow.org/lite/microcontrollers 請注意，機翼形狀易於實現，而坡度和環形形狀則更難於正確定位。 打開範例， “Files” -> “Examples” -> “TensorFlowLite_Ameba” -> “magic_wand”. 上傳代碼並在上傳完成後按Ameba上的重置按鈕。 