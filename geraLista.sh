#!/bin/bash

# lista todos os arquivos, exclui diretórios e .mp3
LIST_ARQ=$(ls --hide=*.mp3 | grep -v ^d);
# define o arquivo de saída do script
saida=./exercicios.txt

# inicializa o arquivo de saída como vazio, para apagar qualquer coisa pré-existente
echo "" > $saida

for arquivo in $LIST_ARQ
do
    # ignora o arquivo de saída
    if [ $arquivo != $saida ]; then
        # define um cabeçalho para o exercício, utilizando o nome do arquivo com o exercício
        echo "Ex.: $arquivo" >> $saida;
        # envia para o arquivo de saída o conteúdo do exercício
        cat $arquivo >> $saida;
        # grava no arquivo de saída um padrão para facilitar a leitura, dividindo as soluções
        echo "\n\n=======\n\n" >> $saida;
    fi
done
