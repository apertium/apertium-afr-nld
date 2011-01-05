#!/bin/bash

C=2
GREP='.'
if [ $# -eq 1 ]
then
    C=$1
    GREP='WORKS'
fi

bash wiki-tests.sh Pending nl af update | grep -C $C "$GREP"

bash wiki-tests.sh Pending af nl update | grep -C $C "$GREP"

