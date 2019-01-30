# Simple docker image of bind based on Alpine #
*** 
- [docs](https://bind.isc.org/doc/arm/9.11/Bv9ARM.html) 

to start just type something like that: 
``` docker exec -it -d -v $pwd:/data \
    -p "80:80" -p 443:443 axizdkr/tengine ``` 

when you first run the container bind create default config file
in your mount point
