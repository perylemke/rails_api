![Docker](img/docker-image.png)

**Docker e Docker-Compose com Rails**

### Motivo
Este é um diretório de um projeto de uma API padrão criado especialmente para o 13º Encontro do [Floripa On Rails](https://www.meetup.com/pt-BR/Floripa-on-Rails/) no dia 14/03 em Florianópolis/SC

### Stack utilizada
- Ruby 2.3.1
- Rails 5.0.2
- Docker 17.03
- Docker-Compose 1.10.0

### Links úteis
[Como instalar o Docker](https://docs.docker.com/engine/installation/linux/ubuntu/)
[Como instalar o Docker-Compose](https://docs.docker.com/compose/install/)

### Como rodar o projeto
Clone o repositório:
```bash
git clone https://github.com/perylemke/rails_api.git
cd rails_api
```
Rode o build no projeto:
```bash
docker-compose build
```
Suba o projeto em background:
```bash
docker-compose up -d
```
Crie o banco de dados e rode as migrations
```bash
docker-compose run web rake db:create
docker-compose run website rake db:migrate
```

Pronto terá uma aplicação Rails pronta para começar a utilizar =)

Nesse ponto pra frente você pode gerar as classes do projeto, mas sempre rodando o seguinte comando:
```bash
docker-compose run web ...
```

### Comandos úteis

# Acessar o shell do container_name

- Redis
```bash
docker exec -ti re01 bash
```

- Web
```bash
docker exec -ti rs01 bash
```

- Database
```bash
docker exec -ti pg01 bash
```

# Acessar os logs de cada container

- Redis
```bash
docker-compose logs -f redis
```

- Web
```bash
docker-compose logs -f web
```

- Database
```bash
docker-compose logs -f postgres
```
### Próximos passos

- Implementar o cache de Gems

# Obrigado!
