#!/bin/bash

# Define o fuso horário de Natal/RN
TIMEZONE="America/Fortaleza"

while true; do
    # Limpa a tela
    clear

    # Obtém a hora atual no fuso horário de Natal/RN
    CURRENT_TIME=$(TZ=$TIMEZONE date +"%H:%M:%S")
    
    # Desenha o relógio com uma borda de linhas
    echo "█████████████████████████████████████████████"
    echo "█                                           █"
    echo "█                ${CURRENT_TIME}                   █"
    echo "█                                           █"
    echo "█████████████████████████████████████████████"
    
    # Espera 1 segundo antes de atualizar
    sleep 1
done
