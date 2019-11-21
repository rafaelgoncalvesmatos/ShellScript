#!/bin/bash

# Caminho dos logs
PATH="/var/log/servidores"

# Compressao e empacotamento
tar -cvfz  servidores$( date -s "+%d-%m-%y-%H:%M" ).tar.gz $PATH
