#! /bin/bash
# only execute if user is setup
# otherwise, prompts root to create it
if [[ -e /home/sven ]]
then
    # graphics
    sudo pacman -S nvidia xorg

    # basic packages
    sudo pacman -S i3-gaps rofi vscode feh dunst picom dolphin xfce4-power-manager alacritty flameshot pulseaudio

    # install yay
    pacman -S --needed git base-devel
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si

    # install yay packages
    yay -S polybar ly
    # enable display manager
    systemctl enable ly

    # systemctl
    sudo systemctl enable ly

    # copy files over
    cp -r alacritty i3 i3status polybar dunst  ~/.config
    # if .fonts exists, copies fonts
    # else creates .fonts and copies fonts
    if [[ -e /home/sven/.fonts ]]
    then
        cp -r fonts/* ~/.fonts
    else
        mkdir /home/sven/.fonts
        cp -r fonts/* ~/.fonts
    fi
    cp -r Wallpapers ~/Pictures

    # set up zsh
    sudo pacman -S zsh zsh-syntax-highlighting zsh-theme-powerlevel10k
    cp zsh/.zshrc ~/

    # set up Vim
    pacman -S --needed git base-devel
    # awesome Vim
    git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
    sh ~/.vim_runtime/install_awesome_vimrc.sh

    # vim
    cd vim
    chmod +x vimConfig.sh
    bash vimConfig.sh
else
    echo ""
    echo "Please create user"
    echo ""
fi
