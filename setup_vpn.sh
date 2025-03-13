#!/bin/bash

# Обновление системы
sudo apt update && sudo apt upgrade -y

# Установка WireGuard
sudo apt install wireguard -y

# Генерация ключей
umask 077
wg genkey | tee privatekey | wg pubkey > publickey

echo "WireGuard установлен и ключи сгенерированы."
