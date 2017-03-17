#!/usr/bin/env bash

# Instala a gem bundler
gem install bundler

# Instala nossas Gems
bundle install

# Roda nosso servidor
puma -C config/puma.rb
