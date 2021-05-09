#!/bin/bash

# Check that Homebrew is installed and install if not
if test ! $(which brew)
then
  echo "Installing Homebrew for you."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update any existing homebrew recipes
brew update

# Upgrade any already installed formulae
brew upgrade

echo "Installing brew apps..."
brew install git

mkdir -p ~/git

PACKAGES=(
    readline
    ack
    openssl
    readline
    python
    awscli
    bash
    bash-completion@2
    composer
    curl
    git
    gnu-sed
    gnupg
    jq
    kubernetes-cli
    lesspipe
    libpq
    node
    openssh
    perl
    php
    postgresql
    ruby-build
    rbenv
    rsync
    shellcheck
    tfenv
    tflint
    unzip
    vim
    wget
    whois
    yamllint
    cloudfoundry/tap/cf-cli
    heroku/brew/heroku
    pipenv
    ruby
    tig
    yamllint
    composer
)
echo "Installing packages..."
brew install ${PACKAGES[@]}


CASKS=(
    iterm2
    adobe-acrobat-reader
    slack
    spotify
    visual-studio-code
    firefox
    steam
    1password
    docker
    virtualbox
    signal
    teamviewer
    telegram-desktop
    sonic-pi
    intellij-idea
    tor-browser
    amazon-music
)
echo "Installing casks..."
brew install --cask ${CASKS[@]}

echo "Cleaning up..."
brew cleanup
