#!/usr/bin/env bash

cat $1 | perl -pe 's/\n//g'
echo