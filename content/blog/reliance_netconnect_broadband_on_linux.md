+++
title = "Reliance Netconnect Broadband+ on Linux"
tags = ['reliance,', 'linux,', 'broadband']
date = "2010-11-26"
+++

-   It works. Make sure while purchasing you inform them that you use
    Linux
-   It's fast and reliable in Pashan, Pune area
-   Below config worked for me on Ubuntu 9.10 AND 10.04
-   There are Linux drivers on the CD but I could not get it working on
    Ubuntu 9.10.
-   For activation, I had to use Windows :(

```bash
sudo apt-get install usb-modeswitch wvdial
```

vi /etc/wvdial

```conf
[Dialer Defaults] 
Phone = #777 
Password = 
Username = 
Baud = 460800
Stupid Mode = 1 
New PPPD = 1 
Tonline = 0 
Init1 = ATZ 
Init2 = ATQ0 V1E1 S0=0 &C1 &D2 +FCLASS=0 
Modem Type = Analog Modem 
Modem = /dev/ttyUSB0 
ISDN = 0
```
