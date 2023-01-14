#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 key_file"
    exit 1
fi

key_file=$1
new_key="new-key"
format_key="format-key"

puttygen $key_file -O private-sshcom -o $new_key
ssh-keygen -i -f $new_key > $format_key
rm $new_key
