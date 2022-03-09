###################################
OpenMV Bluetooth TripWire
###################################

.. role:: raw-html(raw)
   :format: html

**CONTRIBUTED BY: SIMON XI** (`<https://github.com/xidameng>`__ )

| Hi if you haven’t watched the demo video, feel free to play
  this short clip below to see what it’s capable of.

:raw-html:`<p style="color:#E67E22; font-size:24px">`
:raw-html:`</p>`

    .. raw:: html 

        <style="position: relative; padding-bottom: 56.25%; height: 0; overflow: hidden; max-width: auto; height: auto;">
            <iframe width="640" height="360" src="https://www.youtube.com/embed/gCpC2uOva90" title="OpenMV Bluetooth TripWire" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe> 

********************
Introduction
********************

This project took the inspiration from the another open-source
project **daytripper** (`link \ 1 <https://github.com/dekuNukem/daytripper>`__)
which uses 2 seperate devices to detect movement and control your PC to
switch Apps. However, I think if we go with the Computer Vision solution
instead, we might reduce the number of hardware to just 1, and we can
even push it a little further by adding some more cool features like
face recognition, speed detection and even more.

That’s how I came up with this idea – using **OpenMV**, which is littler
and easier to deploy, and a **IoT Microcontroller**, in this case Ameba
RTL8722DM_MINI, together we can achieve the same function
as **daytripper** and more.

********************
Components
********************

    1. AMB23 (RTL8722DM MINI) dev board x1
    2. OpenMV( any model) dev board x1
    
    Connection is simple, just connect P0 pin on OpenMV to pin 9 on Ameba Board.

********************
Function Flow
********************

This is how it works,

|1|

********************
Code
********************

OpenMV
====================

.. code-block:: python

    # Advanced Frame Differencing Example
    #
    # This example demonstrates using frame differencing with your OpenMV Cam. This
    # example is advanced because it preforms a background update to deal with the
    # backgound image changing overtime.

    import sensor, image, pyb, os, time
    from pyb import Pin

    p_out = Pin('P0', Pin.OUT_PP)
    p_out.low()

    TRIGGER_THRESHOLD = 5

    BG_UPDATE_FRAMES = 50 # How many frames before blending.
    BG_UPDATE_BLEND = 128 # How much to blend by... ([0-256]==[0.0-1.0]).

    sensor.reset() # Initialize the camera sensor.
    sensor.set_pixformat(sensor.RGB565) # or sensor.RGB565
    sensor.set_framesize(sensor.QVGA) # or sensor.QQVGA (or others)
    sensor.skip_frames(time = 2000) # Let new settings take affect.
    sensor.set_auto_whitebal(False) # Turn off white balance.
    clock = time.clock() # Tracks FPS.

    # Take from the main frame buffer's RAM to allocate a second frame buffer.
    # There's a lot more RAM in the frame buffer than in the MicroPython heap.
    # However, after doing this you have a lot less RAM for some algorithms...
    # So, be aware that it's a lot easier to get out of RAM issues now. However,
    # frame differencing doesn't use a lot of the extra space in the frame buffer.
    # But, things like AprilTags do and won't work if you do this...
    extra_fb = sensor.alloc_extra_fb(sensor.width(), sensor.height(), sensor.RGB565)

    print("About to save background image...")
    sensor.skip_frames(time = 2000) # Give the user time to get ready.
    extra_fb.replace(sensor.snapshot())
    print("Saved background image - Now frame differencing!")

    triggered = False

    frame_count = 0
    while(True):
        clock.tick() # Track elapsed milliseconds between snapshots().
        img = sensor.snapshot() # Take a picture and return the image.

        frame_count += 1
        if (frame_count > BG_UPDATE_FRAMES):
            frame_count = 0
            # Blend in new frame. We're doing 256-alpha here because we want to
            # blend the new frame into the backgound. Not the background into the
            # new frame which would be just alpha. Blend replaces each pixel by
            # ((NEW*(alpha))+(OLD*(256-alpha)))/256. So, a low alpha results in
            # low blending of the new image while a high alpha results in high
            # blending of the new image. We need to reverse that for this update.
            img.blend(extra_fb, alpha=(256-BG_UPDATE_BLEND))
            extra_fb.replace(img)

    # Replace the image with the "abs(NEW-OLD)" frame difference.
    img.difference(extra_fb)

    hist = img.get_histogram()
    # This code below works by comparing the 99th percentile value (e.g. the
    # non-outlier max value against the 90th percentile value (e.g. a non-max
    # value. The difference between the two values will grow as the difference
    # image seems more pixels change.
    diff = hist.get_percentile(0.99).l_value() - hist.get_percentile(0.98).l_value()
    triggered = diff > TRIGGER_THRESHOLD

    if triggered == True:
        p_out.high()
    else:
        p_out.low()


    print(clock.fps(), triggered) # Note: Your OpenMV Cam runs about half as fast while
    # connected to your computer. The FPS should increase once disconnected.


AMB23
====================

.. code-block:: cpp

    #include "BLEHIDDevice.h"
    #include "BLEHIDKeyboard.h"
    #include "BLEDevice.h"

    BLEHIDKeyboard keyboardDev;
    BLEAdvertData advdata;

    #define ENABLE_PIN 9

    void setup() {
    Serial.begin(115200);
    advdata.addFlags();
    advdata.addCompleteName("AMEBA_BLE_HID");
    advdata.addAppearance(GAP_GATT_APPEARANCE_HUMAN_INTERFACE_DEVICE);
    advdata.addCompleteServices(BLEUUID(HID_SERVICE_UUID));

    BLEHIDDev.init();

    BLE.init();
    BLE.configAdvert()->setAdvData(advdata);
    BLE.setDeviceName("AMEBA_BLE_HID");
    BLE.setDeviceAppearance(GAP_GATT_APPEARANCE_HUMAN_INTERFACE_DEVICE);
    BLE.configSecurity()->setPairable(true);
    BLE.configSecurity()->setAuthFlags(GAP_AUTHEN_BIT_BONDING_FLAG);
    BLE.configServer(3);
    BLE.addService(BLEHIDDev.hidService());
    BLE.addService(BLEHIDDev.battService());
    BLE.addService(BLEHIDDev.devInfoService());

    pinMode(ENABLE_PIN, INPUT);

    BLE.beginPeripheral();
    }

    int flag = 0;

    void loop() {
    if (BLE.connected() && digitalRead(ENABLE_PIN) && flag == 0) {
        Serial.println("Sending keystrokes");
        keyboardDev.keyReleaseAll();
        delay(100);
        keyboardDev.keyPress(HID_KEY_ALT_LEFT);
        delay(100);
        keyboardDev.keyPress(HID_KEY_TAB);
        keyboardDev.keyReleaseAll();
        delay(100);
        flag = 1;
    } else {
        flag = 0;
        delay(100);
    }
    }


********************
Conclusion
********************

This project is not perfect as it’s done in a rush, so if anyone wants
to perfect it you may go ahead and change my code however you like, or
leave a comment below if you have a question or want to discuss
something with me~

Until next time, happy coding.

.. |1| image:: /media/ambd_arduino/OpenMV_Bluetooth_TripWire/image1.png
   :alt: image
   :width: 3.96875in
   :height: 3.9375in