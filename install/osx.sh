#!/bin/sh

# Install Homebrew & brew-cask

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap caskroom/cask
brew install brew-cask
brew tap homebrew/versions
brew tap caskroom/versions

# Install brew & brew-cask packages

. "$DOTFILES_DIR/install/brew.sh"
. "$DOTFILES_DIR/install/brew-cask.sh"

# Install bash (with Homebrew)

. "$DOTFILES_DIR/install/bash.sh"

# Install vundle for vim

. "$DOTFILES_DIR/install/vundle.sh"

# Set up for colors (solarized) (do after vim!)

. "$DOTFILES_DIR/install/colors.sh"

# Set up for colors (solarized)

. "$DOTFILES_DIR/install/ruby.sh"

# Install Ruby gems (SASS, Compass)

# sudo gem install compass
# sudo gem install lunchy
# sudo gem install pygmentize
# sudo gem install sass
# sudo gem install sass-globbing

# http://www.sublimetext.com/docs/3/osx_command_line.html
[ -f ~/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl ] && ln -sfv ~/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl "$DOTFILES_DIR/bin/subl"

# OSX settings

. "$DOTFILES_DIR/osx/defaults.sh"
. "$DOTFILES_DIR/osx/dock.sh"
. "$DOTFILES_DIR/osx/defaults-chrome.sh"

