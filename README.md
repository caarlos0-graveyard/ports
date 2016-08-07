# ports

> Easily see what's happening on your computer's ports

You can either use it as a binary or as a shell plugin.

Usage:

```console
$ ports ls
COMMAND     PID   USER   FD   TYPE             DEVICE SIZE/OFF NODE NAME
ports ls
COMMAND     PID   USER   FD   TYPE             DEVICE SIZE/OFF NODE NAME
UserEvent   254 carlos    4u  IPv4 0x1835878847405b73      0t0  UDP *:*
sharingd    365 carlos   18u  IPv4 0x18358788474051d3      0t0  UDP *:*
sharingd    365 carlos   22u  IPv4 0x1835878847408b93      0t0  UDP *:*
WiFiAgent   912 carlos    8u  IPv4 0x183587885019e6a3      0t0  UDP *:*
ruby       1620 carlos    8u  IPv4 0x183587885e3c1c1b      0t0  TCP *:4000 (LISTEN)

$ ports show 4000
ruby    1620 carlos    8u  IPv4 0x183587885e3c1c1b      0t0  TCP *:terabase (LISTEN)

$ ports kill 4000

$ ports show 4000
```

Also try `ports --help`.
