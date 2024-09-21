# a cross-platform interactive process viewer
sudo apt-get install htop
bash miniconda_install.sh
bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
#- Run these two commands in your terminal to add Homebrew to your PATH:
(echo; echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"') >> /home/jade/.bashrc
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
#- Install Homebrew's dependencies if you have sudo access:
sudo apt-get install build-essential
source ~/.bashrc
brew update
sudo apt install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev wget
sudo apt install python3-tk tk-dev tk8.6-dev libsqlite3-dev
brew install pyenv
curl --proto '=https' --tlsv1.2 -LsSf https://setup.atuin.sh | sh
sudo apt install neofetch
sudo apt install micro # a better text editor than nano
sudo apt install nala # a better way of doing 'apt'
