#!/bin/bash

# `commit Message here` instead of `git commit -m "Message here"`
commit() {
  [[ $# -eq 0 ]] && set -- A default commit message here.
  command git commit -m "$*"
}

redirects() {
  wget $1 2>&1 | grep Location:
}
