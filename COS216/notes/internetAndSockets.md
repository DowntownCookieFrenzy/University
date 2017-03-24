<!--
@Author: Thomas Scholtz <thomas>
@Date:   2017-03-07T23:09:50+02:00
@Email:  thomas@quantum-sicarius.za.net
@Last modified by:   thomas
@Last modified time: 2017-03-07T23:23:31+02:00
@License: Attribution-NonCommercial-ShareAlike 4.0 International
-->


# Internet
## Open Systems Interconnection model (OSI)
![OSI](http://www.tech-faq.com/wp-content/uploads/2009/01/osimodel.png)

## Layer 4
#### Transmission Control Protocol (TCP)
- Synchronous
- Connection-oriented
- Connections are viewed as streams

#### User Datagram Protocol (UDP)
- Asynchronous
- Packet-oriented
- No lasting connections are formed

## Sockets
Sockets are considered as part of layer 5 of the OSI model.

#### Required libraries
```c
// defines data types used in system calls by the following two header files
#include <sys/types.h>
// definitions and structures for sockets
#include <sys/socket.h>
// defines constants and structures for internet domain addresses
#include <netinet/in.h>

```

#### Steps in creating a server using ```C``` sockets.

1. Create a socket using socket()

2. Bind the socket to an address (port number and host) with bind()

3. Use listen() for a connection

4. Accept a connection with accept() which blocks until the client connects to the server.

5. Send and receive data
