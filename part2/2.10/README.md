

Command (self build image due to Apple M1 issue):
````docker run -it --network host nmap 127.0.0.1```` 


Starting Nmap 7.93 ( https://nmap.org ) at 2023-04-23 19:35 UTC
Nmap scan report for localhost (127.0.0.1)
Host is up (0.0000050s latency).
Not shown: 998 closed tcp ports (reset)
PORT    STATE    SERVICE
80/tcp  filtered http
111/tcp open     rpcbind

Nmap done: 1 IP address (1 host up) scanned in 1.28 seconds
