# a cross-platform interactive process viewer
sudo apt-get install htop
bash miniconda_install.sh
bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew update
sudo apt install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev wget
sudo apt install python3-tk tk-dev tk8.6-dev libsqlite3-dev
brew install pyenv
curl --proto '=https' --tlsv1.2 -LsSf https://setup.atuin.sh | sh