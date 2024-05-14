#!/bin/bash

### Install apt stuff
sudo add-apt-repository universe 
sudo apt-get update

sudo apt install -y zsh\
    ripgrep\
    gocryptfs\
    wget\
    tmux\
    git\
    curl\
    fzf\
    dnsutils\
    glogg\
    gzip\
    libfuse2\
    fd-find\
    xsel\
    build-essential

### Install snap

sudo snap install --classic codium
sudo snap install --classic intellij-idea-ultimate
sudo snap install --classic notable
sudo snap install --classic nvim

sudo snap install\
    bitwarden\
    firefox\
    signal-desktop\
    slack\
    spotify\
    vlc\
    zoom-client\
    postman

## install brave
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg\
    https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"\
    |sudo tee /etc/apt/sources.list.d/brave-browser-release.list

sudo apt update
sudo apt install brave-browser
### Create folder structure

mkdir -p ~/_dev/spucman/
mkdir -p ~/_dev/external/
mkdir -p ~/_priv/pCloud/
mkdir -p ~/.ssh/

### Manual Installations

chsh -s $(which zsh)

curl -sS https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | bash

#### OMZ

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#### Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

#### Go
curl https://go.dev/dl/go1.22.0.linux-amd64.tar.gz | tar -C /usr/local -xzf go1.22.0.linux-amd64.tar.gz

#### Manual tools
# Manual download: https://www.pcloud.com/download-free-online-cloud-file-storage.html

#grype
#ngrok
#container-juggler
#visualvm
#java ??
# hosts
# 150x50 term
