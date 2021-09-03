#!/bin/bash 

set -e
export PATH=$PATH:/usr/locla/bin

for f in "$@"; do 
    grep -lZRPi '^kind:\s+secret' "$f" | xargs -r0 grep -L 'ENC.AES256'
done