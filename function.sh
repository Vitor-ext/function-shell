#!/bin/bash 
#
# Script para remover Pasta - Automatização de Processos
#
# Vitor de Jesus
# CVS $Header$

# Cria uma function para remover uma Pasta 
remove_pasta() {
    
    # Declarar as Variaveis
    local pasta="$1"

    # Verifica se o argumento (nome da pasta) foi fornecido
    if [ -z "$pasta" ]; then
        echo "Erro: você deve fornecer o nome da pasta a ser apagada"
        return 1
    fi

    if [ -d "$pasta" ]; then
        rm -r "$pasta"
        echo "A pasta '$pasta' foi removida com sucesso"
    else 
        echo "A pasta '$pasta' não existe no diretório atual."
        echo " Lembre-se que o Linux é Case Sensitive !"
    fi 
}

# Chama a Function remove_pasta
#echo "Informe a Pasta que deseja Excluir: "
read -p "Informe a Pasta que deseja Excluir: " rmPasta

remove_pasta "$rmPasta"