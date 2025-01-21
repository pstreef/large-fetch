#!/bin/bash

for i in {1..1000}; do
  head -c 500000 /dev/urandom | base64 > file_$i.txt  # Creates ~500 KB files
  git add file_$i.txt
  git commit -m "Add large file $i"
done