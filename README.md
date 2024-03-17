# README
## Создание учётки докера для ghcr.io
скрипт create_docker_cred.sh
берёт текущий конфиг учёток докера:
  1. Необходимо чтобы в $homepath/.docker/config.json был файл с кредами ghcr.io

скрипт set_cred_docker.sh
  1. Передавая переменную в stdinn формата "server username password email" создаст секрет для докера


Принцип работы секретов(уже добавлено): 
Секреты получают имя regcred которое испольуется подом(добавлена в деплоймент.yml)
