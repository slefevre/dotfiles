#!/bin/bash

redirects() {
  wget $1 2>&1 | grep Location:
}
