Class HttpClient
==================
**MDNSService Class**

| **Description**
| A class used for creating MDNS service records.

| **Syntax**
| class MDNSService

**Members**

========================= ===============================
**Public Constructors**    
========================= ===============================
MDNSService::MDNSService  Create a MDNS service record
**Public Methods**         
MDNSService::addTxtRecord Add text to MDNS service record
========================= ===============================

**MDNSService::MDNSService**

| **Description**
| Create a MDNS service record.

| **Syntax**
| MDNSService(char\* name, char\* service_type, char\* domain, unsigned
  short port, int bufsize);

| **Parameters**
| name: device name
| service_type: MDNS service type
| domain: host domain
| port: network port
| bufsize: size of buffer for MDNS text record

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: mDNS_On_Arduino_IDE

| **Notes and Warnings**
| Include “AmebaMDNS.h” to use the class function.
|  

**MDNSService::addTxtRecord**

| **Description**
| Add text to MDNS service record.

| **Syntax**
| int addTextRecord(char\* key, int value_len, char\* value);

| **Parameters**
| key: record type expressed as character string
| value_len: length of value string
| value: record value expressed as character string

| **Returns**
| 0 if add record successful

| **Example Code**
| Example: mDNS_On_Arduino_IDE

| **Notes and Warnings**
| Include “AmebaMDNS.h” to use the class function.
