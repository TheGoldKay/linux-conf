#!/bin/bash
# run first: sudo apt install curl && sudo apt install nala # nala is a better way of doing 'apt'
sudo nala update && sudo nala upgrade # Update and upgrade before installing packages
curl --proto '=https' --tlsv1.2 -LsSf https://setup.atuin.sh | sh # Sync, search and backup shell history with Atuin
sudo nala install neofetch # good ol' neofetch
sudo nala install micro # a better text editor than nano
sudo nala install htop # a cross-platform interactive process viewer
sudo nala install gparted # a partition manager
# some python & dev dependencies
sudo nala install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev wget
sudo nala install python3-tk tk-dev tk8.6-dev libsqlite3-dev
# steam
sudo add-apt-repository multiverse
sudo nala update
sudo nala install steam
# zoxide -> a better cd experience
curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh
sudo nala install fzf # add on for zoxide
