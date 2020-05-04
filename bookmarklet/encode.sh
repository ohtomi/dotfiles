#!/usr/bin/env zsh

node -e 'console.log(`javascript:${encodeURIComponent(process.argv[1])}`)' "$(cat $1)"
echo