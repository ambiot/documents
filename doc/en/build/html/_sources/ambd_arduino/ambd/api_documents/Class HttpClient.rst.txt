Class HttpClient
===================
**HttpClient Class**

| **Description**
| Defines a class of using HttpClient

| **Syntax**
| class HttpClient

**Members**

+---------------------------------+-----------------------------------+
| **Public Constructors**         |                                   |
+=================================+===================================+
| HttpClient::HttpClient          | Constructs a HttpClient object    |
+---------------------------------+-----------------------------------+
| **Public Methods**              |                                   |
+---------------------------------+-----------------------------------+
| HttpClient::beginRequest        | Start a more complex request      |
+---------------------------------+-----------------------------------+
| HttpClient::endRequest          | End a more complex request        |
+---------------------------------+-----------------------------------+
| HttpClient::get                 | Connect to the server and start   |
|                                 | to send a GET request             |
+---------------------------------+-----------------------------------+
| HttpClient::post                | Connect to the server and start   |
|                                 | to send a POST request            |
+---------------------------------+-----------------------------------+
| HttpClient::put                 | Connect to the server and start   |
|                                 | to send a PUT request             |
+---------------------------------+-----------------------------------+
| HttpClient::startRequest        | Connect to the server and start   |
|                                 | to send the request               |
+---------------------------------+-----------------------------------+
| HttpClient::sendHeader          | Send an additional header line    |
+---------------------------------+-----------------------------------+
| HttpClient::sendBasicAuth       | Send a basic authentication       |
|                                 | header                            |
+---------------------------------+-----------------------------------+
| HttpClient::finishRequest       | Finish sending the HTTP request   |
+---------------------------------+-----------------------------------+
| HttpClient::responseStatusCode  | Get the HTTP status code          |
|                                 | contained in the response         |
+---------------------------------+-----------------------------------+
| HttpClient::readHeader          | Read the next character of the    |
|                                 | response headers                  |
+---------------------------------+-----------------------------------+
| HttpClient::skipResponseHeaders | Skip any response headers to get  |
|                                 | to the body                       |
+---------------------------------+-----------------------------------+
| HttpClient::endOfHeadersReached | Test whether all of the response  |
|                                 | headers have been consumed        |
+---------------------------------+-----------------------------------+
| HttpClient::endOfBodyReached    | Test whether the end of the body  |
|                                 | has been reached                  |
+---------------------------------+-----------------------------------+
| HttpClient::contentLength       | Return the length of the body     |
+---------------------------------+-----------------------------------+

**HttpClient::HttpClient**

| **Description**
| Constructs a HttpClient object. If Marco “PROXY_ENABLED” is defined,
  currently disabled as introduces a dependency on DNS.h in Ethernet.

| **Syntax**
| HttpClient::HttpClient(Client& aClient, const char\* aProxy = NULL,
  uint16_t aProxyPort = 0);
| HttpClient::HttpClient(Client& aClient);

| **Parameters**
| aClient: The object of class WiFiClient.
| aProxy: The proxy name. The default proxy name is “NULL”.
| aProxyPort: The proxy port. The default value for the proxy port is 0.

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: SimpleHttpExample
| The example demonstrate how to download the content from URL indicated
  in kHostname[].

**#include <HttpClient.h>**

**#include <WiFi.h>**

**#include <WiFiClient.h>**

**char** ssid[] = "YourNetwork"; // your network SSID (name)

**char** pass[] = "password"; // your network password (use for WPA, or
use as key for WEP)

**int** keyIndex = 0; // your network key Index number (needed only for
WEP)

// Name of the server we want to connect to

const **char** kHostname[] = "www.google.com";

const **char** kPath[] = "/";

// Number of milliseconds to wait without receiving any data before we
give up

const **int** kNetworkTimeout = 30*1000;

// Number of milliseconds to wait if no data is available before trying
again

const **int** kNetworkDelay = 1000;

**int** status = WL_IDLE_STATUS;

**void** setup() {

Serial.begin(9600);

**while** ( status != WL_CONNECTED) {

Serial.print("Attempting to connect to SSID: ");

Serial.println(ssid);

status = WiFi.begin(ssid, pass);

// wait 10 seconds for connection:

delay(10000);

}

Serial.println("Connected to wifi");

printWifiStatus();

}

**void** loop() {

**int** err =0;

WiFiClient c;

HttpClient http(c);

err = http.get(kHostname, kPath);

**if** (err == 0)

{

Serial.println("startedRequest ok");

err = http.responseStatusCode();

**if** (err >= 0)

{

Serial.print("Got status code: ");

Serial.println(err);

// Usually you'd check that the response code is 200 or a

// similar "success" code (200-299) before carrying on,

// but we'll print out whatever response we get

err = http.skipResponseHeaders();

**if** (err >= 0)

{

**int** bodyLen = http.contentLength();

Serial.print("Content length is: ");

Serial.println(bodyLen);

Serial.println();

Serial.println("Body returned follows:");

// Now we've got to the body, so we can print it out

unsigned **long** timeoutStart = millis();

**char** c;

// Whilst we haven't timed out & haven't reached the end of the body

**while** ( (http.connected() \|\| http.available()) &&

((millis() - timeoutStart) < kNetworkTimeout) )

{

**if** (http.available())

{

c = http.read();

// Print out this character

Serial.print(c);

bodyLen--;

// We read something, reset the timeout counter

timeoutStart = millis();

}

**else**

{

// We haven't got any data, so let's pause to allow some to arrive

delay(kNetworkDelay);

}

}

}

**else**

{

Serial.print("Failed to skip response headers: ");

Serial.println(err);

}

}

**else**

{

Serial.print("Getting response failed: ");

Serial.println(err);

}

}

**else**

{

Serial.print("Connect failed: ");

Serial.println(err);

}

http.stop();

// And just stop, now that we've tried a download

**while**\ (1);

}

**void** printWifiStatus() {

// print the SSID of the network you're attached to:

Serial.print("SSID: ");

Serial.println(WiFi.SSID());

// print your WiFi shield's IP address:

IPAddress ip = WiFi.localIP();

Serial.print("IP Address: ");

Serial.println(ip);

// print the received signal strength:

**long** rssi = WiFi.RSSI();

Serial.print("signal strength (RSSI):");

Serial.print(rssi);

Serial.println(" dBm");

}

| **Notes and Warnings**
| Include “HttpClient.h” to use the class function. 

**HttpClient::beginRequest**

| **Description**
| Start a more complex request. Use this when you need to send
  additional headers in the request, but you will also need to call
  endRequest() when you are finished.

| **Syntax**
| void HttpClient::beginRequest(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: SimpleHttpExample
| The example demonstrates how to download the content from the URL
  indicated in kHostname[]. Details of the code can be found in the
  previous section of HttpClient:: HttpClient.

| **Notes and Warnings**
| Include “HttpClient.h” to use the class function. 

**HttpClient::endRequest**

| **Description**
| End a more complex request. Use this when you need to have sent
  additional headers in the request, but you will also need to call
  beginRequest() at the start.

| **Syntax**
| void HttpClient::endRequest(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: SimpleHttpExample
| The example demonstrates how to download the content from the URL
  indicated in kHostname[]. Details of the code can be found in the
  previous section of HttpClient:: HttpClient.

| **Notes and Warnings**
| Include “HttpClient.h” to use the class function. 

**HttpClient::get**

| **Description**
| Connect to the server and start to send a “GET” request. If the input
  parameter contains “aServerAddress”, the connection will not perform a
  DNS lookup and just purely connect to the given IP address.

| **Syntax**
| int HttpClient::get(const char\* aServerName, uint16_t aServerPort,
  const char\* aURLPath, const char\* aUserAgent = NULL);
| int HttpClient::get(const char\* aServerName, const char\* aURLPath,
  const char\* aUserAgent = NULL);
| int HttpClient::get(const IPAddress& aServerAddress, const char\*
  aServerName, uint16_t aServerPort, const char\* aURLPath, const char\*
  aUserAgent = NULL);
| int HttpClient::get(const IPAddress& aServerAddress, const char\*
  aServerName, const char\* aURLPath, const char\* aUserAgent = NULL);

| **Parameters**
| aServerName: The name of the server being connected to. If aServerName
  is “NULL”, the “Host” header line will not be sent.
| aServerPort: The port on which server connected.
| aURLPath: The URL to request.
| aUserAgent: User-Agent string to be sent. If aUserAgent indicated as
  “NULL”, the default user-agent kUserAgent will be sent.
| aServerAddress: IP address of the server to connect to.

| **Returns**
| Return 0 if successful, otherwise indicates an error occurs.

| **Example Code**
| Example: SimpleHttpExample
| The example demonstrates how to download the content from the URL
  indicated in kHostname[]. Details of the code can be found in the
  previous section of HttpClient:: HttpClient.

| **Notes and Warnings**
| Include “HttpClient.h” to use the class function. 

**HttpClient::post**

| **Description**
| Connect to the server and start to send a “POST” request. If the input
  parameter has “aServerAddress”, connects doesn’t perform a DNS lookup
  and just connects to the given IP address.

| **Syntax**
| int HttpClient::post(const char\* aServerName, uint16_t aServerPort,
  const char\* aURLPath, const char\* aUserAgent = NULL);
| int HttpClient::post(const char\* aServerName, const char\* aURLPath,
  const char\* aUserAgent = NULL);
| int HttpClient::post(const IPAddress& aServerAddress, const char\*
  aServerName, uint16_t aServerPort, const char\* aURLPath, const char\*
  aUserAgent = NULL);
| int HttpClient::post(const IPAddress& aServerAddress, const char\*
  aServerName, const char\* aURLPath, const char\* aUserAgent = NULL);

| **Parameters**
| aServerName: Name of the server being connected to. If NULL, the
  “Host” header line won’t be sent.
| aServerPort: Port to connect to on the server.
| aURLPath: Url to request.
| aUserAgent: User-Agent string to be sent. If aUserAgent indicated as
  “NULL”, the default user-agent kUserAgent will be sent.
| aServerAddress: IP address of the server to connect to.

| **Returns**
| Return 0 if successful, otherwise indicates an error occurs.

| **Example Code**
| Example: SimpleHttpExample
| The example demonstrates how to download the content from the URL
  indicated in kHostname[]. Details of the code can be found in the
  previous section of HttpClient:: HttpClient.

| **Notes and Warnings**
| Include “HttpClient.h” to use the class function. 

**HttpClient::put**

| **Description**
| Connect to the server and start to send a PUT request. If the input
  parameter has “aServerAddress”, connects doesn’t perform a DNS lookup
  and just connects to the given IP address.

| **Syntax**
| int HttpClient::put(const char\* aServerName, uint16_t aServerPort,
  const char\* aURLPath, const char\* aUserAgent = NULL);
| int HttpClient::put(const char\* aServerName, const char\* aURLPath,
  const char\* aUserAgent = NULL);
| int HttpClient::put(const IPAddress& aServerAddress, const char\*
  aServerName, uint16_t aServerPort, const char\* aURLPath, const char\*
  aUserAgent = NULL);
| int HttpClient::put(const IPAddress& aServerAddress, const char\*
  aServerName, const char\* aURLPath, const char\* aUserAgent = NULL);

| **Parameters**
| aServerName: Name of the server being connected to. If NULL, the
  “Host” header line won’t be sent.
| aServerPort: Port to connect to on the server.
| aURLPath: Url to request.
| aUserAgent: User-Agent string to be sent. If aUserAgent indicated as
  “NULL”, the default user-agent kUserAgent will be sent.
| aServerAddress: IP address of the server to connect to.

| **Returns**
| Return 0 if successful, otherwise indicates an error occurs.

| **Example Code**
| Example: SimpleHttpExample
| The example demonstrates how to download the content from the URL
  indicated in kHostname[]. Details of the code can be found in the
  previous section of HttpClient:: HttpClient.

| **Notes and Warnings**
| Include “HttpClient.h” to use the class function. 

**HttpClient::startRequest**

| **Description**
| Connect to the server and start to send the request.

| **Syntax**
| int HttpClient::startRequest(const char\* aServerName, uint16_t
  aServerPort, const char\* aURLPath, const char\* aHttpMethod, const
  char\* aUserAgent);
| int HttpClient::startRequest(const IPAddress& aServerAddress, const
  char\* aServerName, uint16_t aServerPort, const char\* aURLPath, const
  char\* aHttpMethod, const char\* aUserAgent);

| **Parameters**
| aServerAddress: IP address of the server to connect to.
| aServerName: Name of the server being connected to. If NULL, the
  “Host” header line won’t be sent.
| aServerPort: Port to connect to on the server.
| aURLPath: Url to request.
| aHttpMethod: Type of HTTP request to make, e.g. “GET”, “POST”, etc.
| aUserAgent: User-Agent string to send. If NULL the default user-agent
  kUserAgent will be sent.

| **Returns**
| Return 0 if successful, else error.

| **Example Code**
| Example: SimpleHttpExample
| The example demonstrates how to download the content from the URL
  indicated in kHostname[]. Details of the code can be found in the
  previous section of HttpClient:: HttpClient.

| **Notes and Warnings**
| Include “HttpClient.h” to use the class function. 

**HttpClient::sendHeader**

| **Description**
| The function sends an additional header line.
| The function void HttpClient:: sendHeader(const char\* aHeader);can
  only be called in between the calls to startRequest and finishRequest.
| The other 2 functions void HttpClient::sendHeader(const char\*
  aHeaderName, const char\* aHeaderValue); and void
  HttpClient::sendHeader(const char\* aHeaderName, const int
  aHeaderValue); are alternate form the previous one, which takes the
  header name and content as separately (as strings or integer). For
  example, to send an XXXXXX header, user might call sendHeader(“XXXXX”,
  “Something”) or sendHeader(“XXXXX”, 123).And the call will add the “:
  ” in the log to separate different header in the case of multiple
  headers.

| **Syntax**
| void HttpClient::sendHeader(const char\* aHeader);
| void HttpClient::sendHeader(const char\* aHeaderName, const char\*
  aHeaderValue);
| void HttpClient::sendHeader(const char\* aHeaderName, const int
  aHeaderValue);

| **Parameters**
| aHeader: Header line to send, in its entirety (but without the
  trailing CRLF. E.g. “Authorization: Basic YQDDCAIGES”.
| aHeaderName: Type of header being sent.
| aHeaderValue: Value for that header.

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: SimpleHttpExample
| The example demonstrates how to download the content from the URL
  indicated in kHostname[]. Details of the code can be found in the
  previous section of HttpClient:: HttpClient.

| **Notes and Warnings**
| Include “HttpClient.h” to use the class function. 

**HttpClient::sendBasicAuth**

| **Description**
| The function sends a basic authentication header which will encode the
  given username and password, and send them in a suitable header line
  for doing Basic Authentication.

| **Syntax**
| void HttpClient::sendBasicAuth(const char\* aUser, const char\*
  aPassword);

| **Parameters**
| aUser: Username for the authorization.
| aPassword: Password for the user aUser.

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: SimpleHttpExample
| The example demonstrates how to download the content from the URL
  indicated in kHostname[]. Details of the code can be found in the
  previous section of HttpClient:: HttpClient.

| **Notes and Warnings**
| Include “HttpClient.h” to use the class function. 

**HttpClient::finishRequest**

| **Description**
| Finish sending the HTTP request. The function sends a blank line to
  signify the end of the request.

| **Syntax**
| void HttpClient::finishRequest(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| The function returns nothing.

| **Example Code**
| Example: SimpleHttpExample
| The example demonstrates how to download the content from the URL
  indicated in kHostname[]. Details of the code can be found in the
  previous section of HttpClient:: HttpClient.

| **Notes and Warnings**
| Include “HttpClient.h” to use the class function. 

**HttpClient::responseStatusCode**

| **Description**
| Get the HTTP status code contained in the response. For example, “200”
  for successful requests, “404” for file not found, etc.

| **Syntax**
| int HttpClient::responseStatusCode(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| Return 0 if successful, else error.

| **Example Code**
| Example: SimpleHttpExample
| The example demonstrates how to download the content from the URL
  indicated in kHostname[]. Details of the code can be found in the
  previous section of HttpClient:: HttpClient.

| **Notes and Warnings**
| Include “HttpClient.h” to use the class function. 

**HttpClient::readHeader**

| **Description**
| The function reads the next character of the response headers. This
  functions the same as read() but to be used when reading through the
  headers which are slightly less efficient. The user might check
  whether the end of the headers has been reached by calling
  endOfHeadersReached(), although after that point this will still
  return data as read() would.

| **Syntax**
| int HttpClient::readHeader(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| Return the next character of the response headers.

| **Example Code**
| Example: SimpleHttpExample
| The example demonstrates how to download the content from the URL
  indicated in kHostname[]. Details of the code can be found in the
  previous section of HttpClient:: HttpClient.

| **Notes and Warnings**
| Include “HttpClient.h” to use the class function. 

**HttpClient::skipResponseHeaders**

| **Description**
| Skip any response headers to get to the body. Use this if you don’t
  want to do any special processing of the headers returned in the
  response. You can also use it after you’ve found all of the headers
  you’re interested in, and just want to get on with processing the
  body.

| **Syntax**
| int HttpClient::skipResponseHeaders(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| Return 0 if successful, else error.

| **Example Code**
| Example: SimpleHttpExample
| The example demonstrates how to download the content from the URL
  indicated in kHostname[]. Details of the code can be found in the
  previous section of HttpClient:: HttpClient.

| **Notes and Warnings**
| Include “HttpClient.h” to use the class function. 

**HttpClient::endOfHeadersReached**

| **Description**
| Test whether all of the response headers have been consumed.

| **Syntax**
| bool HttpClient::endOfHeadersReached(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| Return true if we are now processing the response body, else false.

| **Example Code**
| Example: SimpleHttpExample
| The example demonstrates how to download the content from the URL
  indicated in kHostname[]. Details of the code can be found in the
  previous section of HttpClient:: HttpClient.

| **Notes and Warnings**
| Include “HttpClient.h” to use the class function. 

**HttpClient::endOfBodyReached**

| **Description**
| Test whether the end of the body has been reached. It only works if
  the Content-Length header was returned by the server.

| **Syntax**
| bool HttpClient::endOfBodyReached(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| Return true if we are now at the end of the body, else false.

| **Example Code**
| Example: SimpleHttpExample
| The example demonstrates how to download the content from the URL
  indicated in kHostname[]. Details of the code can be found in the
  previous section of HttpClient:: HttpClient.

| **Notes and Warnings**
| Include “HttpClient.h” to use the class function. 

**HttpClient::contentLength**

| **Description**
| The function returns the length of the body.

| **Syntax**
| int HttpClient::contentLength(void);

| **Parameters**
| The function requires no input parameter.

| **Returns**
| Return Length of the body, in bytes, or kNoContentLengthHeader if no
  Content-Length header was returned by the server.

| **Example Code**
| Example: SimpleHttpExample
| The example demonstrates how to download the content from the URL
  indicated in kHostname[]. Details of the code can be found in the
  previous section of HttpClient:: HttpClient.

| **Notes and Warnings**
| Include “HttpClient.h” to use the class function. 
