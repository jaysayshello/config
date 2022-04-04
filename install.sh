#!/bin/bash

# Install Brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Development
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

# Yabai
brew install koekeishiya/formulae/yabai
sudo yabai --install-sa
sudo yabai --load-sa
brew install koekeishiya/formulae/skhd
brew services start skhd
brew services start yabai

# Misc
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
