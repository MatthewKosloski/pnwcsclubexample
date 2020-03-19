#!/usr/bin/env bash

# Update the local APT package index and then upgrade any 
# upgradeable packages.
apt-get update -y && apt-get upgrade -y

# Install build-essential (gcc, g++, and make) and ruby.
apt-get install build-essential ruby ruby-dev -y

# Install Jekyll and bundler gems
gem install jekyll bundler