#!/bin/bash

function g {
  local dir="$(ghq list -p | peco)"
  if [ ! -z "$dir" ]; then
    cd "$dir"
  fi
}

function h {
  local site="$(ghq list | peco | cut -d "/" -f 2,3)"
  if [ ! -z "$site" ]; then
    hub browse "$site"
  fi
}

function c {
  if [ ! -d $1 ]; then
    echo "$1: Not a directory"
    return
  fi
  local dir="$(find $1 -maxdepth 1 -type d | sort | peco)"
  if [ ! -z "$dir" ]; then
    cd "$dir"
  fi
}

function peco-history {
  local l=$(HISTTIMEFORMAT= history | sort -k1,1nr | sed 's/^ *[0-9]* *//' | peco --query "$READLINE_LINE")
  READLINE_LINE="$l"
  READLINE_POINT=${#l}
}

bind -x '"\C-r": peco-history'

function sblist {
  scrapbox list $@
}

function sbread {
  local page=$(scrapbox list $@ | peco)
  if [ "$page" != "" ]; then
    scrapbox read $1 "$page"
  fi
}

function sbopen {
  local page=$(scrapbox list $@ | peco)
  if [ "$page" != "" ]; then
    local url=$(scrapbox open $1 "$page")
    open "$url"
  fi
}

function sblink {
  local page=$(scrapbox list $@ | peco)
  if [ "$page" != "" ]; then
    local links=$(scrapbox link $1 "$page")
    for url in $links; do
      open "$url"
    done
  fi
}
