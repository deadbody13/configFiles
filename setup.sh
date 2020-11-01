if [[ -e /home/sven ]]
then
    # basic packages
    sudo pacman -S i3-gaps rofi vscode

    # yay
    pacman -S --needed git base-devel
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si

    # install yay
    yay -S polybar ly

    # systemctl
    sudo systemctl enable ly

    # copy files over
    cp -r alacritty i3 i3status polybar ~/.config
    if [[ -e /home/sven/.fonts ]]
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

    # yay
    sudo systemctl enable 
    cd yay
    makepkg -si
    cd vim
    chmod +x vimConfig.sh
    bash vimConfig.sh
else
    echo "\nPlease create user\n"
fi