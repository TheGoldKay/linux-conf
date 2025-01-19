#!/bin/bash

sudo apt install curl && sudo apt install nala # a better way of doing 'apt'
sudo nala update && sudo nala upgrade # Update and upgrade before installing packages
curl --proto '=https' --tlsv1.2 -LsSf https://setup.atuin.sh | sh # Sync, search and backup shell history with Atuin
sudo nala install neofetch # good ol' neofetch
sudo nala install micro # a better text editor than nano
sudo nala install htop # a cross-platform interactive process viewer
sudo nala install gparted # a partition manager
# some python & dev dependencies
sudo nala install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev wget
sudo nala install python3-tk tk-dev tk8.6-dev libsqlite3-dev
# install miniconda (conda -> python environment manager)
bash miniconda_install.sh
# steam
sudo add-apt-repository multiverse
sudo nala update
sudo nala install steam
# zoxide -> a better cd experience
curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh
sudo nala install fzf # add on for zoxide
# homebew 
bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
(echo; echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"') >> /home/goldkay/.bashrc
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
# python stuff
brew update
sudo nala install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev wget
sudo nala install python3-tk tk-dev tk8.6-dev libsqlite3-dev
brew install pyenv
# xplr (terminal file manager written in Rust) + Also additional dependencies
brew install ffmpeg sevenzip jq poppler fd ripgrep fzf zoxide imagemagick
brew install xplr
# qbittorrent -----> DOT NOT FORGET TO INSTALL :SEARCH PLUGINS: => JACKETT
sudo nala install qbittorrent
bash jackett_install.sh
