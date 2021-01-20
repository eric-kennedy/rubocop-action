#!/bin/sh

set -e

# Setup Rubocop if needed
if [ ! `which rubocop` ]; then
  echo "\n# Installing rubocop..."
  gem install rubocop
fi

if [ -z "$1" ]; then
  glob="."
else
  glob="$@"
fi

ruby /action/lib/index.rb "$glob"
