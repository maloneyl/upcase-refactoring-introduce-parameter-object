#!/usr/bin/env sh

# Run this script immediately after cloning the codebase.
# https://github.com/thoughtbot/guides/tree/master/protocol

# Exit if any subcommand fails
set -e

# Set up Ruby dependencies via Bundler
bundle install

# Print instructions
echo
echo
cat README.md
