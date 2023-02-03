OTW Narnia solutions!

Note the difference in behavior between python2 and python3

    $ python -c ‘print ("\x37\x8a\x04\x08");’ | hexdump -C
    00000000 37 8a 04 08 0a |7…|

    $ python3 -c ‘print ("\x37\x8a\x04\x08");’ | hexdump -C
    00000000 37 c2 8a 04 08 0a |7…|

Just `python` no longer works on any of the machines, everything is `python3` now. To solve this problem, use :

    import sys
    sys.stdout.buffer.write(b"\x37\x8a\x04\x08")

In python3, strings are Unicode strings by default, in order to print strings as byte-strings, we have to use sys.stdout.buffer.write

Source: https://discuss.python.org/t/unusal-behavior-of-python3-print-hex-values/15418