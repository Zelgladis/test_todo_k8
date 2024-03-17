# README
## Создание учётки докера для ghcr.io
скрипт create_docker_cred.sh
берёт текущий конфи подключения:
  1. Необходимо что в $homepath/.docker/config.json был файл с кредами ghcr.io

set_cred_docker.sh
  1. Передавая переменную в stdinn формата server username password email создаст секрет для докера

после секреты получают имя regcred который должны быть использованы подом
