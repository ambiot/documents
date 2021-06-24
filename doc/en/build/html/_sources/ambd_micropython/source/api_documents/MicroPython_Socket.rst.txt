Socket
=======



**Constructors**

**socket.SOCK(**\ *domain*\ [optional], *type*\ [optional]\ **)**

Create a SOCK object and configure it with the given parameters. SOCK
class is under socket class and is the main class we use for all socket
level communications.

-  **domain**: domain address family type. Default is AF_INET

   -  **AF_INET**: IPv4, classic IP address with dot-notation that is
      slowly being replaced by IPv6 due to shortage.

   -  **AF_INET6**: IPv6, IP address with colon-notation

-  **type:** socket type, default is SOCK_STREAM

   -  **SOCK_STREAM:** TCP type

   -  **SOCK_DGRAM:** UDP type

**Methods**

**socket.SOCK.connect(**\ *host*\ [required], *port*\ [required]\ **)**

This method connects to a remote server as client.

-  **host:** a website address in string

-  **port:** port number in integer

**socket.SOCK.bind(**\ *port*\ [required]\ **)**

This method creates a server socket and binds it to the given port
number.

-  **port:** port number in integer

**socket.SOCK.listen()**

This method set the server to listening state, waiting for client
connection at the given port.

**socket.SOCK.accept()**

This method accepts a client connection and return a new socket object
for subsequent communication and client’s address.

**socket.SOCK.recv(**\ *length*\ [required]\ **)**

This method receive data with given length

-  **length:** the length of data expected to receive

**socket.SOCK.send(**\ *buffer*\ [required]\ **)**

This method sends data stored in the buffer

-  **buffer:** a data buffer in format of array/bytearray/string

**socket.SOCK.settimeout(**\ *seconds*\ [required]\ **)**

This method set socket’s timeout to the given value

-  **seconds:** new timeout in seconds

**socket.SOCK.close()**

This method close the socket.

.. |image1| image:: ../media/api_documents/imageSocket.png
   :width: 3.44028in
   :height: 3.90486in
