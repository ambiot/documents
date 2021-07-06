.. amebaDocs documentation master file, created by
   sphinx-quickstart on Fri Dec 18 01:57:15 2020.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

=====================================================================
[RTL8722CSM] [RTL8722DM] Socket - Get information from HTTP website
=====================================================================

**Materials**

* Ameba x 1

**Steps**

With socket created, we can visit an HTTP website and get information from it. Copy and paste the following code into REPL under paste mode.

.. code-block:: html
   :linenos:
   
   import socket
   from wireless import WLAN
   wifi = WLAN(mode = WLAN.STA)
   wifi.connect(ssid = "YourWiFiSSID", pswd = "YourPassword") # change the ssid and pswd to yours
   def http_get(url):
    	_, _, host, path = url.split('/', 3)
    	c = socket.SOCK()
    	# We are visiting MicroPython official website's test page
    	c.connect(host, 80) 
    	c.send(bytes('GET /%s HTTP/1.0\r\nHost: %s\r\n\r\n' % (path, host), 'utf8'))
    	while True:
        	data = c.recv(100)
        	if data:
            	print(str(data,'utf8'), end='')
        	else:
            	break
   http_get('http://micropython.org/ks/test.html')


