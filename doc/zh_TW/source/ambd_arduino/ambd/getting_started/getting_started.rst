========================
RTL8722DM 快速入門
========================

環境配置
========

AmebaD RTL8722CSM/RTL8722DM目前支持Windows XP/7/8/10 32位元/64位元，Linux以及Mac作業系統。
在本文檔中，請使用1.8.12或更高版本的Arduino IDE。

AmebaD RTL8722CSM/RTL8722DM 簡介
================================

Ameba是一個易於編程的微控制器平台，可用於開發各種物聯網應用程序。

AmebaD有各種外圍接口，包括WiFi, GPIO INT, I2C, UART, SPI, PWM, ADC。通過這些接口，
AmebaD可以連接LED、開關、壓力計、濕度計、PM2.5粉塵傳感器等電子元件。

Ameba所收集的數據可以通過WiFi無線上傳，並被智能設備上的應用程序使用，實現物聯網的應用。

|get-start-1|

AmebaD和Arduino Uno的尺寸類似，如上圖所示，並且AmebaD上的引腳與Arduino Uno兼容。

AmebaD使用Micro USB來供電，這在許多智能設備中很常見。
AmebaD的引腳圖和功能請參考下圖和表格。

|get-start-2|


=====  ========  ========  ==== ===== ============== ========= ========
INDEX  PIN name  GPIO INT  ADC  PWM   UART           SPI       I2C
=====  ========  ========  ==== ===== ============== ========= ========
D00    GPIOB_2   ✓         ADC5       UART3_RX(b)                      
D01    GPIOB_1   ✓         ADC4       UART3_TX(b)                      
D02    GPIOB_3   ✓         ADC6                                        
D03    GPIOB_31  ✓                                                     
D04    GPIOB_30  ✓                                                     
D05    GPIOB_28  ✓                                                     
D06    GPIOB_29  ✓                                                     
D07    NC                                                              
D08    GPIOB_22  ✓              PWM14                                  
D09    GPIOB_23  ✓              PWM15                                  
D10    GPIOB_21  ✓              PWM13 UART0_RTS(b)   SPI0_CS           
D11    GPIOB_18  ✓              PWM10 UART0_RX(b)    SPI0_MOSI         
D12    GPIOB_19  ✓              PWM11 UART0_TX(b)    SPI0_MISO         
D13    GPIOB_20  ✓              PWM12 UART0_CTS(b)   SPI0_CLK          
D14    GPIOA_7   ✓                    UART2_TX(log)                    
D15    GPIOA_8   ✓                    UART2_RX(log)                    
D16    GPIOA_25  ✓              PWM4  UART3_RX(a)              I2C0_SCL
D17    GPIOA_26  ✓              PWM5  UART3_TX(a)              I2C0_SDA
D18    GPIOB_7   ✓         ADC3 PWM17                SPI1_CS           
D19    GPIOB_6   ✓         ADC2                      SPI1_CLK          
D20    GPIOB_5   ✓         ADC1 PWM9                 SPI1_MISO         
D21    GPIOB_4   ✓         ADC0 PWM8                 SPI1_MOSI         
D22    GPIOA_28  ✓                                                     
D23    GPIOA_24  ✓              PWM3  UART0_CTS(a)             I2C1_SDA
D24    GPIOA_23  ✓              PWM2  UART0_RTS(a)             I2C1_SCL
D25    GPIOA_22  ✓                    UART0_RX(a)                      
D26    GPIOA_21  ✓                    UART0_TX(a)                      
D27    GPIOA_20  ✓                                                     
D28    GPIOA_19  ✓                                                     
=====  ========  ========  ==== ===== ============== ========= ========

|get-start-3|

設置開發環境
============

步驟1. 安裝驅動程序
---------------------

下文為未翻譯部分： 
========================

**(End)**

-------------------------------------------------------------------------------------------------------------------------------------

If you face any issue, please refer to the FAQ and troubleshooting page.

.. |get-start-1| image:: ../media/getting_started/imageGS1.png
   :width: 3.40833in
   :height: 3.00833in
.. |get-start-2| image:: ../media/getting_started/imageGS2.png
   :width: 3.9in
   :height: 4.1in
.. |get-start-3| image:: ../media/getting_started/imageGS3.png
   :width: 6.26796in
   :height: 3.12872in
