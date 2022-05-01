#!/bin/bash

cd $HOME

# Install Brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# Development
brew install git
brew install --cask webcatalog
brew install --cask hyper
brew install --cask visual-studio-code
brew install --cask goland
brew install --cask google-cloud-sdk
brew install --cask burp-suite
brew install --cask postman
brew install --cask studio-3t
brew install docker
brew tap homebrew/cask-fonts
brew install --cask font-fira-code
brew install --cask zoom
brew install --cask gpg-suite
brew install --cask devutils

# Mac OS
defaults write com.apple.dock autohide-delay -float 0
killall Dock


# Yabai
brew install koekeishiya/formulae/yabai
sudo yabai --install-sa
sudo yabai --load-sa
brew install koekeishiya/formulae/skhd
brew services start skhd
brew services start yabai

# Misc
brew install --cask google-chrome
brew install --cask discord
brew install --cask spotify
brew install --cask firefox
brew install --cask signal
brew install --cask notion
brew install --cask beardedspice
brew install --cask grammarly
brew install --cask slack
brew install --cask setapp
brew install --cask adguard

# zshrc
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
brew install zsh
git clone https://github.com/jaysayshello/config
cp ~/config/.skhdrc ~/
cp ~/config/.yabairc ~/
cp ~/config/.zshrc ~/
source ~/.zshrc
wm
