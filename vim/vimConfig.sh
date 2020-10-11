!#/bin/bash

# install vim config
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

# install vundle
sudo pacman -S vundle

# overwrite .vimrc
cp .vimrc $HOME/

# clang-format
sudo pacman -S python-pip
pip install clang-format
# if this doesn't work, add ~/.local/bin to $PATH

# install dependencies for youcompleteme... to the best of my knowledge
sudo pacman -S npm jdk11-openjdk python3

# now run :PluinInstall from inside vim
echo "Now run :PluginInstall from inside Vim... \nyou may have to close and open everything a few times for it to find YouCompleteMe"
