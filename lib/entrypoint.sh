#!/bin/sh

set -e

if [ -z "$1" ]; then
  glob="."
else
  glob="$@"
fi

ruby /action/lib/index.rb "$glob"
