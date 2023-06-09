#!/bin/bash

mkdir output
for FILE in ../content/*.html; do
    cat base_head.html ${FILE} base_tail.html > output/${FILE##*/}
done
