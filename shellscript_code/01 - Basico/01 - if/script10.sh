#!/bin/bash

# Variaveis
BLOCO="/dev/disk0"
ARQ="/etc/hosts"
DIR="/etc/"
ZERO="/tmp/zero"

echo  -e "Condição if: 

Visualizar o comando test para saber mais sobre as condiçoes que o if utiliza.

$ man test                          - Para ajuda"


echo -e "\n\n----------------------------------------------------\nValidacao - arquivo bloco.\n"

# Condicao de arquivo de bloco exite
if [ -b $BLOCO ]; then
    echo "Verdadeiro - arquivo de bloco existe.";
else
    echo "Falso - arquivo de bloco nao existe.";
fi

echo -e "\n\n----------------------------------------------------\nValidacao - arquivo comum.\n"

# Consicao se um arquivo comum existe
if [ -f $ARQ ]; then 
    echo "Verdadeiro - arquivo hosts existe."
else
    echo "Falso - arquivo comum nao existe."
fi

echo -e "\n\n----------------------------------------------------\nValidacao - Diretorio.\n"

# Consicao se um diretorio
if [ -d $DIR ]; then 
    echo "Verdadeiro - diretorio existe."
else
    echo "Falso - diretorio nao existe."
fi

echo -e "\n\n----------------------------------------------------\nValidacao - arquivo tem conteudo.\n"

touch $ZERO ; echo teste > $ZERO

# Consicao verdadeiro arquivo nao vazio
if [ -s $ZERO ]; then 
    echo "Verdadeiro - arquivo tem conteudo."
else
    echo "Falso - arquivo está vazio."
fi

echo -e "\n\n----------------------------------------------------\nValidacao - arquivo permissao leitura para dono.\n"

# Consicao verdadeiro arquivo nao vazio
if [ -r $ZERO ]; then 
    echo "Verdadeiro - arquivo tem permissao de leitura."
else
    echo "Falso - arquivo não tem permissao de leitura."
fi

echo -e "\n\n----------------------------------------------------\nValidacao - arquivo permissao escrita para dono.\n"

# Consicao verdadeiro arquivo nao vazio
if [ -w $ZERO ]; then 
    echo "Verdadeiro - arquivo tem permissao de escrita."
else
    echo "Falso - arquivo não tem permissao de escrita."
fi

echo -e "\n\n----------------------------------------------------\nValidacao - arquivo permissao execucao para dono.\n"

# Consicao verdadeiro arquivo nao vazio
if [ -x $ZERO ]; then 
    echo "Verdadeiro - arquivo tem permissao de execucao."
else
    echo "Falso - arquivo não tem permissao de execucao."
fi