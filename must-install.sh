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
sudo nala install qbittorrent # flatpak install org.qbittorrent.qBittorrent
bash jackett_install.sh
# stremio (streaming app) # https://www.reddit.com/r/StremioAddons/ # https://stremio-addons.com/
flatpak install com.stremio.Stremio
# bitwarden (password manager)
flatpak install com.bitwarden.desktop
# bottles (install windows apps on linux)
flatpak install com.usebottles.bottles
# wine
sudo nala install wine
# lutris (game manager)
sudo nala install lutris #flatpak install net.lutris.Lutris
# ZapZap
flatpak install com.rtosta.zapzap
# vscode
flatpak install com.visualstudio.code #sudo nala install code
# git
sudo nala install git
# vlc
sudo nala install vlc]
# ffmpeg 
sudo nala install ffmpeg
# tor browser
flatpak install org.torproject.torbrowser-launcher
# edge browser
flatpak install com.microsoft.Edge
# foliate
flatpak install com.github.johnfactotum.Foliate