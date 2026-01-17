#!/usr/bin/env zsh

docker run --rm -e NODE_INPUT="$(cat $1)" node:latest node -e 'console.log(`javascript:${encodeURIComponent(process.env.NODE_INPUT)}`)'
