#!/usr/bin/env sh

# Install homebrew (includes Xcode Command Line Tools)
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install bash
brew install tmux
brew install tree
brew install fzf
brew install fd
brew install ripgrep
brew install zoxide
brew install eza
brew install bat
brew install zsh-autosuggestions
brew install starship
brew install lazygit
brew install neovim


brew install --cask alacritty
brew install --cask typora
brew install --cask font-hack-nerd-font
brew install --cask dropbox


curl -LsSf https://astral.sh/uv/install.sh | sh


if [ -d ~/repos/fzf-git.sh ]; then
   echo "Skipping clone of fzf-git.sh"
else
   git clone https://github.com/junegunn/fzf-git.sh.git ~/repos/fzf-git.sh
fi
