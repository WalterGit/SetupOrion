#!/bin/bash

# Nome do arquivo de entrada e saída
arquivo="/root/dados_vps/dados_portainer"

# Fazer backup do arquivo original
cp "$arquivo" "${arquivo}.bak"

# Remover a parte "https://" da linha "Dominio do portainer" e salvar no mesmo arquivo
sed -i 's/Dominio do portainer: https:\/\//Dominio do portainer: /' "$arquivo"

sleep 3
echo "Arquivo modificado com sucesso: $arquivo"