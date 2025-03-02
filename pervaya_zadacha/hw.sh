#!/bin/bash/
#Proeverka i dobavlenie repozitoriya Backports
BACKPORTS_REPO="deb http://archive.ubuntu.com/ubuntu $(lsb_release -cs)-backports main restricted universe multiverse"
if ! grep -q "^$BACKPORTS_REPO" /etc/apt/sources.list; then
  echo "Добавляем репозиторий Backports..."
  echo "$BACKPORTS_REPO" | sudo tee -a /etc/apt/sources.list > /dev/null
fi

#Obnavlenie paketnogo menedjera
echo "Обнавление пакетов..."
sudo apt-get update -y

#Ustanovka i zapusk Apache2
echo "Установка Apache2..."
sudo apt-get install apache2 -y
echo "Запуск Apache2"
sudo systemctl start apache2
sudo systemctl enable apache2

#Ustanovka Python
echo "Установка Python..."
sudo apt-get install python3 -y

#Ustanovka i podnyatie SSH-server
echo "Установка SSH-server"
sudo apt install ssh -y
sudo systemctl start sshd
sudo system enable sshd

#Ustanovka GIT
echo "Усановка GIT"
sudo apt-get install git -y

#ustanovka XRDP
sudo apt-get install xrdp -y
sudo systemctl start xrdp
echo xfce4-session > ~/.xsession

#Ustanovka textovogo redaktora Vim
echo "Установка Vim..."
sudo apt-get install vim -y

#Ustanovka  Net-tools
echo "Установка NET-TOOLS"
sudo apt install net-tools -y

#Ustanovka utiliti dlya monitoringa HTOP
echo "Установка htop"
sudo apt-get install htop
