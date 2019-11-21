#!/bin/bash

# Caminho dos logs
PATH="/var/log/audit"

# Copiando conteudos incremental
for server in 172.16.100.$(seq 101 104) ; do 
    rsync -rav $server:$PATH /opt/backup/$server ; 
done

# Compressao e empacotamento
tar -cvfz  servidores$( date -s "+%d-%m-%y-%H:%M" ).tar.gz $PATH
