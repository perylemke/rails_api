# Usa essa imagem para gerar nosso container
FROM ruby:2.3-slim

# Instala nossas dependencias
RUN apt-get update && apt-get install -qq -y --no-install-recommends \
     build-essential nodejs libpq-dev

# Diretórios que serão instaladas as gems
ENV GEM_HOME=/usr/gems
ENV GEM_PATH=/usr/gems

# Seta nosso path
ENV INSTALL_PATH /rails_api

# Cria nosso diretório
RUN mkdir -p $INSTALL_PATH

# Seta o nosso path como o diretório principal
WORKDIR $INSTALL_PATH
