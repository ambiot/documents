Class WDT
============
.. class:: WDT

 **Description**

 A class used for initializing, starting, stopping watchdog timer.

 **Syntax**

.. code:: cpp

  class WDT

**Members**

+-----------------------------------------------------------------+---+
| **Public Constructors**                                         |   |
+=================================================================+===+
| A public constructor should not be used as this class is        |   |
| intended to be a singleton class. Access member functions using |   |
| the object instance named WDT.                                  |   |
+-----------------------------------------------------------------+---+

+-----------------------+---------------------------------------------+
| **Public Methods**    |                                             |
+=======================+=============================================+
| WDT:: InitWatchdog    | Initializes the watchdog, include time      |
|                       | setting, and mode register                  |
+-----------------------+---------------------------------------------+
| WDT:: StartWatchdog   | Start the watchdog counting                 |
+-----------------------+---------------------------------------------+
| WDT:: StopWatchdog    | Stop the watchdog counting                  |
+-----------------------+---------------------------------------------+
| WDT:: RefreshWatchdog | Refresh the watchdog counting to prevent    |
|                       | WDT timeout                                 |
+-----------------------+---------------------------------------------+
| WDT:: InitWatchdogIRQ | Switch the watchdog timer to interrupt mode |
|                       | and register a watchdog timer timeout       |
|                       | interrupt handler                           |
+-----------------------+---------------------------------------------+

------------------------------------

.. method:: WDT:: InitWatchdog


**Description**

Initializes the watchdog, include time setting, and mode register.

**Syntax**

.. code:: cpp

  void InitWatchdog(uint32_t timeout_ms);

**Parameters**

``timeout_ms``: the watch-dog timer timeout value in millisecond (ms). The default action after watchdog timer timeout is to reset the whole system.

**Returns**

The function returns nothing.

**Example Code**

Example: WatchdogTimer

.. code-block:: cpp
    :caption: WatchdogTimer
    :linenos:

        /** 
     * This example describes how to use watchdog api. 
     * In this example, watchdog is setup to 5s timeout. 
     * Watchdog won't bark if we refresh it before timeout in smallTask. 
     * The timer is also reloaded after refresh. 
     * Otherwise, while running bigTask, watchdog will restart system in default or call callback function if registered. 
    */  
    #include "wdt.h"  

    #define RUN_CALLBACK_IF_WATCHDOG_BARKS (0)  
    WDT wdt;  

    void setup() {  
        Serial.begin(115200);  
        wdt.InitWatchdog(5000);  // setup 5s watchdog  

    #if RUN_CALLBACK_IF_WATCHDOG_BARKS  
        wdt.InitWatchdogIRQ(my_watchdog_irq_handler, 0);  
    #else  
        // system would restart in default when watchdog barks  
    #endif  

        wdt.StartWatchdog();  // enable watchdog timer  
        Small_Task();  
        Big_Task();  
        while(1);  
    }  

    void loop() {
        delay(1000); 
    }  

    void Small_Task (void) {  
        Serial.println("......doing small task......");  
        for (int i = 0; i < 50000000; i++) {  // dummy task  
            asm(" nop");
        }
        Serial.println("Small_Task finished refresh watchdog.");  
        wdt.RefreshWatchdog();  
    }  

    /* If Big_Task unable to reach #10, watchdog barks. */ 
    void Big_Task (void) {  
        Serial.println("......doing big task, up to 10......");  
        for (int i = 0; i < 10; i++) {  
            Serial.print("doing dummy task #");  
            Serial.println(i, DEC);  

            for (int j = 0; j < 50000000; j++)  // dummy task  
                asm(" nop");  
        }  
        Serial.println("Big_Task finished refresh watchdog.");  
        wdt.RefreshWatchdog();  
    }  

    void my_watchdog_irq_handler(uint32_t id) {  
        Serial.println("watchdog barks!!!");  
        wdt.StopWatchdog();
    }

**Notes and Warnings**
NA

--------------------------------------------

.. method:: WDT:: StartWatchdog


**Description**

Start the watchdog counting.

**Syntax**

.. code:: cpp

  void StartWatchdog(void);

**Parameters**

The function requires no input parameter.

**Returns**

The function returns nothing.

**Example Code**

Example: WatchdogTimer

You may refer to the code in previous section of ``WDT::InitWatchdog``.

**Notes and Warnings**

NA

---------------------------------

.. method:: WDT:: StopWatchdog


**Description**

Stop the watchdog counting.

**Syntax**

.. code:: cpp

  void StopWatchdog(void);

**Parameters**

The function requires no input parameter.

**Returns**

The function returns nothing.

**Example Code**

Example: WatchdogTimer

You may refer to the code in previous section of ``WDT::InitWatchdog``.

**Notes and Warnings**

NA

-----------------

.. method:: WDT:: RefreshWatchdog


**Description**

Refresh the watchdog counting to prevent WDT timeout.

**Syntax**

.. code:: cpp

  void RefreshWatchdog(void);

**Parameters**

The function requires no input parameter.

**Returns**

The function returns nothing.

**Example Code**

Example: WatchdogTimer

You may refer to the code in previous section of ``WDT::InitWatchdog``.

**Notes and Warnings**

NA

--------------------------

.. method:: WDT:: InitWatchdogIRQ


**Description**

Switch the watchdog timer to interrupt mode and register a watchdog timer timeout interrupt handler. The interrupt handler will be called when the watchdog timer is timeout.

**Syntax**

.. code:: cpp

  void WDT::InitWatchdogIRQ(wdt_irq_handler handler, uint32_t id)

**Parameters**

``handler`` : the callback function for WDT timeout interrupt.

``id`` : the parameter for the callback function

**Returns**

The function returns nothing.

**Example Code**

Example: WatchdogTimer

You may refer to the code in previous section of ``WDT::InitWatchdog``.

**Notes and Warnings**

NA
