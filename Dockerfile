# Usa essa imagem para gerar nosso container
FROM ruby:2.3-slim

# Instala nossas dependencias
RUN apt-get update && apt-get install -qq -y --no-install-recommends \
     build-essential nodejs libpq-dev

# Seta nosso path
ENV INSTALL_PATH /usr/src/rails_api

# Cria nosso diretório
RUN mkdir -p $INSTALL_PATH

# Diretórios que serão instaladas as gems
ENV GEM_HOME=$INSTALL_PATH/.gems
ENV GEM_PATH=$INSTALL_PATH/.gems

# Seta o nosso path como o diretório principal
WORKDIR $INSTALL_PATH
