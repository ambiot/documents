####################
Class MDNS
####################

**Description**

A class used for registering and removing MDNS service records.

**Syntax**

.. code:: cpp

  class MDNSClass

**Members**

+-----------------------------------------------------------------+---+
| **Public Constructors**                                         |   |
+=================================================================+===+
| The public constructor should not be used as this class is      |   |
| intended to be a singleton class. Access member functions using |   |
| the object instance named MDNS.                                 |   |
+-----------------------------------------------------------------+---+

============================ =====================
**Public Methods**            
============================ =====================
MDNSClass::begin             Start MDNS operations
MDNSClass::end               Stop MDNS operations
MDNSClass::registerService   Add a service record
MDNSClass::deregisterService Remove service record
MDNSClass::updateService     Update service record
============================ =====================

------------------------

.. method:: MDNSClass::begin


**Description**

Start MDNS operations to begin responding to MDNS queries.

**Syntax**

.. code:: cpp

  void begin(void);

**Parameters**

The function requires no input parameter.

**Returns**

The function returns nothing.

**Example Code**

Example: mDNS_On_Arduino_IDE

This example shows how to register Ameba as a service that can be

recognized by Arduino IDE. If both of the PC runs Arduino IDE and the
Ameba board are connecting to the same local network. Then you can
find Ameba in “Tools” -> “Port” -> “Arduino at 192.168.1.238 (Ameba
RTL8195A), which means the Arduino IDE find Ameba via mDNS.

.. code-block:: cpp
  :caption: mDNS_On_Arduino_IDE
  :linenos:

  #include "WiFi.h"   
  #include "AmebaMDNS.h"   

  char ssid[] = "yourNetwork";     //  your network SSID (name)  
  char pass[] = "secretPassword";  // your network password  

  MDNSService service("MyAmeba", "_arduino._tcp", "local", 5000);  

  void setup() {  
    printf("Try to connect to %s\r\n", ssid);  
    while (WiFi.begin(ssid, pass) != WL_CONNECTED) {  
      printf("Failed. Wait 1s and retry...\r\n");  
      delay(1000);  
    }  
    printf("Connected to %s\r\n", ssid);  

    service.addTxtRecord("board", strlen("ameba_rtl8195a"), "ameba_rtl8195a");  
    service.addTxtRecord("auth_upload", strlen("no"), "no");  
    service.addTxtRecord("tcp_check", strlen("no"), "no");  
    service.addTxtRecord("ssh_upload", strlen("no"), "no");  

    printf("Start mDNS service\r\n");  
    MDNS.begin();  

    printf("register mDNS service\r\n");  
    MDNS.registerService(service);  
  }  

  void loop() {  
    // put your main code here, to run repeatedly:  
    delay(1000);  
  }  

----------------------------------------------------------

.. method:: MDNSClass::end 


**Description**

Stop MDNS operations and stop responding to MDNS queries.

**Syntax**

.. code:: cpp

  void end(void);

**Parameters**

The function requires no input parameter.

**Returns**

The function returns nothing.

**Example Code**

NA

**Notes and Warnings**

Include “AmebaMDNS.h” to use the class function. 

------------------------------------------------------------

.. method:: MDNSClass::registerService


**Description**

Add a service record to be included in MDNS responses.

**Syntax**

.. code:: cpp

  void register service(MDNSService service);

**Parameters**

``service`` : MDNSService class object with required MDNS service data

**Returns**

The function returns nothing.

**Example Code**

Example: mDNS_On_Arduino_IDE

Details of the code can be found in the previous section of ``MDNSClass:: begin``.

**Notes and Warnings**

Include “AmebaMDNS.h” to use the class function. 

--------------------------------------------------------------------------------

.. method:: MDNSClass::deregisterService

**Description**

Remove a service record from MDNS responses.

**Syntax**

.. code:: cpp

  void deregisterService(MDNSService service);

**Parameters**

``service`` : MDNSService class object to be removed

**Returns**

The function returns nothing.

**Example Code**

Example: mDNS_On_Arduino_IDE

Details of the code can be found in the previous section of ``MDNSClass:: begin``.

**Notes and Warnings**

Include “AmebaMDNS.h” to use the class function. 

-------------------------------------------------------------


..  method:: MDNSClass::updateService


**Description**

Update a service record.

**Syntax**

.. code:: cpp

  void updateService(MDNSService service, unsigned int ttl);

**Parameters**

``service``: MDNSService class object to be updated

``ttl`` : time-to-live(TTL) for service

**Returns**

The function returns nothing.

**Example Code**

NA

**Notes and Warnings**

Include “AmebaMDNS.h” to use the class function.
