===================================
故障排除
===================================

* `無法找到藍牙裝置RTL8722CSM/RTL8722DM <https://www.amebaiot.com/en/arduino-amebad-faq/>`__
  
    - 請確保天線連接正確。 檢查您的程式碼有確認正確的藍牙配置。

* `程式碼操作不如預期 <https://www.amebaiot.com/en/arduino-amebad-faq/>`__

    - 嘗試使用printf和Serial.print語法除錯。 如果問題仍然存在，您可以在 `論壇 <https://forum.amebaiot.com/>`__ 尋求幫助

* `連接到RTL8722CSM / RTL8722DM UART後，為什麼串行終端上沒有輸出？ <https://www.amebaiot.com/en/arduino-amebad-faq/>`__

    - RTL8722CSM / RTL8722DM 默認配置為115200波特率，請檢查串行終端是否配置為115200。

* `程序無法下載到RTL8722CSM / RTL8722DM中 <https://www.amebaiot.com/en/arduino-amebad-faq/>`__

     - 請按照以下步驟正確下載：
        1. 請進入下載模式。 進入下載模式時，開發版綠色LED指示燈將閃爍。
        2. 下載過程中，開發版紅色LED指示燈將閃爍。
        3. 下載成功後，Arduino IDE會出現通知。

* `WiFi有時信號較弱 <https://www.amebaiot.com/en/arduino-amebad-faq/>`__

    - RTL8722CSM / RTL8722DM 的預設天線使用I-Pex連接器。 請更換/連接I-Pex連接器天線。

* `為什麼開發版無法上電? <https://www.amebaiot.com/en/arduino-amebad-faq/>`__

    - 請確認已連接電阻R43旁的連接器J38。 該連接器用於將電源鏈接到IC。
