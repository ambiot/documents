.. amebaDocs documentation master file, created by
   sphinx-quickstart on Fri Dec 18 01:57:15 2020.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

===========================================================
[RTL8722CSM] [RTL8722DM] Socket - Echo Server and Client
===========================================================

**Materials**

* Ameba x 2

**Steps**

After WiFi is set up, the best way to access the internet is to use socket. Socket is like an imaginary ethernet socket by which you use to connect your PC to some server on the internet like Google or Github.

Application layer protocol like HTTP are also built on top of socket. Once you are given an IP address and a port number, you can start to connect to the remote device and talk to it.

|image1|\

Here is an example of letting a server socket and a client socket to echo each other’s message, to use this example, you need 2 ameba RTL8722 running MicroPython, copy and paste the following code to 2 ameba respectively under REPL paste mode.

This is the server code,

.. code-block:: html
   :linenos:
   
   import socket
   from wireless import WLAN
   wifi = WLAN(mode = WLAN.STA)
   wifi.connect(ssid = "YourWiFiSSID", pswd = "YourWiFiPassword") # change the ssid and pswd to yours
   s = socket.SOCK()
   port = 5000
   s.bind(port) 
   s.listen()
   conn, addr = s.accept()
   while True:
     data = conn.recv(1024)
     conn.send(data+"from server")

This is the client code,

.. code-block:: html
   :linenos:

   import socket
   from wireless import WLAN
   wifi = WLAN(mode = WLAN.STA)
   wifi.connect(ssid = "YourWiFiSSID", pswd = "YourWiFiPassword") # change the ssid and pswd to yours
   c = socket.SOCK()
   # make sure to check the server IP address and update in the next line of code
   c.connect("your server IP address", 5000) 
   c.send("hello world")
   data = c.recv(1024)
   print(data)


.. |image1| image:: ../media/examples/imageSocket.png
   :width: 6.16667in
   :height: 4.34167in