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
# fastfetch (neofetch alternative)
sudo add-apt-repository ppa:zhangsongcui3371/fastfetch
sudo nala update
sudo nala install fastfetch
                                                        # other must have flatpak apps
#  Flatseal is a graphical utility to review and modify permissions from your Flatpak applications.
flatpak install flathub com.github.tchx84.Flatseal
# Apps and fixes for Proton games
# Protontricks is a simple wrapper that does winetricks things for Proton enabled games, requires Proton 5.0 or newer.
flatpak install flathub com.github.Matoking.protontricks
# Warehouse provides a simple UI to control complex Flatpak options, all without resorting to the command line.
flatpak install flathub io.github.flattool.Warehouse
# PortProton is a project designed to make it easy and convenient to run Windows games on Linux for both beginners and advanced users. 
flatpak install flathub ru.linux_gaming.PortProton
# This app allows you to send files and messages over the local LAN network.
flatpak install flathub org.localsend.localsend_app
# Keep an eye on system resources
flatpak install flathub net.nokyan.Resources
# Monitor your CPU, Memory, Disk, Network and GPU usage
flatpak install flathub io.missioncenter.MissionCenter
# Modern compatibility tools manager
flatpak install flathub com.vysp3r.ProtonPlus
# Virtualization made simple
flatpak install flathub org.gnome.Boxes
# rust 
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
. $HOME/.cargo/env #same as: source $HOME/.cargo/env # set up path