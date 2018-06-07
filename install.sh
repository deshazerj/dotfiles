#!/bin/bash

# Change shell to ZSH.
chsh -s $(which zsh)

# Create .ZSH directory.
if [ ! -d "~/.zsh" ]; then
  mkdir ~/.zsh
fi

# Deploy ZSH configs.
if [ ! -f "~/.zshrc.old" ]; then
  mv ~/.zshrc ~/.zshrc.old
  cp ./zshrc ~/.zshrc
  cp ./zsh/* ~/.zsh/
fi

# Deploy vim configs.
if [ ! -d "~/.vim/bundle" ]; then
  git clone git@github.com:powerline/fonts.git ~/powerline_fonts
  . ~/powerline_fonts/install.sh
  rm -rf ~/powerline_fonts
  git clone git@github.com:VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
if [ ! -f "~/.vimrc" ]; then
  cp ./vimrc ~/.vimrc
  vim +PluginInstall
fi

# Deploy other dotfiles
cp ./gitconfig ~/.gitconfig
