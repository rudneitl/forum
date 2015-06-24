# Fórum

## Descrição:
Protótipo simplificado de fórum de discussão web.

## Resumo:
Sistema de fórum, que permite criação de tópicos e debate em cima de cada item, permitindo ao administrador, gerenciar algumas "palavras" em uma "black list" totalmente gerenciavel.

## gem utilizadas:
  - pg
  - rspec
  - factory_girl

### Inicializando:
```sh
$ git clone [git-repo-url] forum
$ cd forum
$ bundle install
$ bundle exec rake db:migrate
$ bundle exec rake db:seed
$ bundle exec rails s
```

## Débitos técnicos:
  - Aplicar uma gem de gestão de autenticação, por exemplo: devise
  - Aplicar uma gem de gestão de autorização, por exemplo: cancan...
  - Implementar o Model Topic como polymorphic
  - Utilizar decorators
  - Implementar um arquivo para inicialização do projeto
  - Implementar specs
