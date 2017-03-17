#!/usr/bin/env bash

# Instala nossas Gems
bundle install

# Roda nosso servidor
puma -C config/puma.rb
