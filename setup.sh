#! /bin/sh

echo Starting

brew install stow
cd ~/.dotfiles
stow *

echo "--------CASK---------"
brew install caskroom/cask/brew-cask
brew tap homebrew/cask-fonts

CASH_APPS=(
          vlc
          iterm2
          google-chrome
          vox
          iina
          sublime-text
          hammerspoon
          # alacritty
          # spectacle
        )

mkdir /Applications/apps
for app in ${CASH_APPS[@]}
do
	echo "==>> Installing $app <<==="
	# brew cask install --appdir=/Applications/apps $app
done

echo "--------SHELL---------"
APPS=(
    wget
    mysql
    fswatch
    node
    git
    ag
    python
    python3
    tree
    tmux
    reattach-to-user-namespace
    tig
    vim
    neovim
    peco
    ranger
    bat
    fzf
  )

for app in ${APPS[@]}
do
	echo "==>> Installing $app <<==="
	# brew install $app
done

echo "=========== Done ============"

echo "\n\n=============ZSH===============\n\n"
brew install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# chsh -s /bin/zsh

echo "\n\n=============VIM===============\n\n"

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo 'source "$HOME/.vim/plugged/gruvbox/gruvbox_256palette.sh"' >> ~/.zshrc
echo 'export LC_ALL=en_US.UTF-8' >> ~/.zshrc

source ~/.zshrc
vim +silent +PlugInstall +qall


echo "\n\n============DOCKER============\n\n"

brew install docker docker-machine
brew install virtualbox

docker-machine create --driver virtualbox default

eval $(docker-machine env default)
