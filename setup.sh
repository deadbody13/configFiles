if [[ -e /home/sven ]]
then
    # copy files over
    cp -r alacritty i3 i3status polybar ~/.config
    cp -r fonts/* ~/.fonts
    cp -r Wallpapers ~/Pictures

    # set up zsh
    sudo pacman -S zsh zsh-syntax-highlighting zsh-theme-powerlevel10k
    cp zsh/.zshrc ~/

    # set up Vim
    cd vim
    chmod +x vimConfig.sh
    bash vimConfig.sh
else
    echo "\nPlease create user\n"
fi