# Etapas para rodar em produção

## Configuração das variáveis de ambiente
1. Criar o arquivo /config/application.yml 
1. Inserir as variáveis de ambiente no arquivo
  1. DATABASE_USERNAME: ''
  1. DATABASE_PASSWORD: ''
  1. PORT: 3000
  1. HOST_NGROCK: ''

## Comandos a serem executados antes de subir a aplicação

* RAILS_ENV=production bundle exec rake db:create db:migrate db:seed

## Subindo a aplicação
* RAILS_ENV=production rails s