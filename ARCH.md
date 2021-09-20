# Arch Linux Configuration

![Arch Linux Logo](https://archlinux.org/static/logos/archlinux-logo-dark-1200dpi.b42bd35d5916.png)

Unlike than the main `README.md`, here you'll find **every** package I need to setup a fresh Arch Linux installation.

## Configuration

The configuration files to my Arch Linux setup are the ones on the [home](https://github.com/marcosdly/dotfiles/tree/master/home) and [other-dirs](https://github.com/marcosdly/dotfiles/tree/master/other-dirs) directories in this repository.

## Packages

### Essential

Basic packages for the system.

```
sudo pacman -S zsh curl git base-devel vim
```

#### Description

1. `zsh`: Shell.
    * [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh/): zsh framework.
    * [nothing](https://github.com/eendroroy/nothing): zsh theme.
    * [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting): Fish shell like syntax highlighting for Zsh.
    * [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions): Fish-like autosuggestions for zsh.
2. `curl`: CLI tool do download stuff.
3. `git`: Git (version control).
4. `base-devel`: Basic stuff to compile software and basic cli tools like which and sudo.
5. `vim`: Text editor.
    * [Vim-plug](https://github.com/junegunn/vim-plug): Vim plugin manager.
      * [vim-polyglot](https://github.com/sheerun/vim-polyglot): Multi-language syntax highlighting.
      * [vim-system-copy](https://github.com/christoomey/vim-system-copy): Copy text to system's clipboard.
    * [monokai_pro](https://github.com/Erichain/vim-monokai-pro): Vim theme.
    * [vim-airline](https://github.com/vim-airline/vim-airline): Custom status line for Vim.

### AUR Helper (yay).

1. [`yay`](https://github.com/Jguer/yay): AUR Helper.

### Desktop

Basic stuff needed to build a graphic environment.

```
sudo pacman -S xorg alacritty bspwm sxhkd feh picom lxsession
```

```
yay -S tulizu tbsm polybar
```

#### Description

1. `xorg`: Display server.
2. `tulizu`: ascii art displayer that I use on the tty.
3. `tbsm`: CLI login manager.
4. `bspwm`: Window Manager.
5. `polybar`: Status bar.
6. `alacritty`: Terminal emulator (default).
7. `sxhkd`: Key bindings setter.
8. `feh`: Background setter and image viewer.
9. `picom`: Compositor.
10. `lxsession`: Policy kit.

### GTK, icons, and cursor

```
sudo pacman -S gtk2 gtk3 gtk4 breeze-gtk breeze-icons
```

```
yay -S mocu-xcursor
```

#### Description

1. `gtk2`: GTK2.
2. `gtk3`: GTK3.
3. `gtk4`: GTK4.
4. `breeze-gtk`: Breeze theme for GTK.
5. `breeze-icons`: Breeze icons theme.
6. `mocu-xcursor`: Mocu cursor, my favourite.

### Media

Applications that I use to manage, play and manipulate media

```
sudo pacman -S discord flameshot thunar pavucontrol vlc gimp eog blueman kdenlive obs-studio handbrake
```

```
yay -S megasync-bin thunar-megasync-bin spotify evince-no-gnome droidcam
```

#### Description

1. `gimp`: Image editor.
2. `obs-studio`: Screen recorder and streaming.
3. `kdenlive`: Video editor.
4. `handbrake`: Video transcoder.
5. `droidcam`: Converto phone into webcam/mic.
6. `eog`: Eye of gnome.
7. `evince-no-gnome`: GNOME's evince without GNOME stuff.
8. `vlc`: Media player.
9. `blueman`: Bluetooth manager.
10. `pavucontrol`: PulseAudio volume controller.
11. `flameshot`: Screenshot tool.
12. `thunar`: Graphical file manager.
13. `discord`: Social network.
14. `spotify`: Music streaming service.
15. `megasync-bin`: Cloud service.
    * `thunar-megasync-bin`: Mega Sync plugin for Thunar.

### Day-to-day

Programs that use day-to-day, but aren't in a specific category.

```
sudo pacman -S gnome-calculator gedit
```

```
yay -S vscodium-bin brave-bin
```

#### Description

1. `gnome-calculator`: Graphical calculator.
2. `vscodium-bin`: vscode without branding/telemetry/licensing.
3. `brave-bin`: Web browser.
4. `gedit`: GNOME's text editor.

### Others

Applications that I don't use so often, but inevitably use.

```
sudo pacman -S grub-customizer gucharmap htop steam retroarch
```

1. `grub-customizer`: Graphical settings manager for grub2.
2. `gucharmap`: Check every character available for a specific font.
3. `htop`: System monitor.
4. `steam`: PC gaming platform.
5. `retroarch`: Retro gaming.

### Dependencies

These are dependencies that are not installed automatically with their respective packages. Usually they are packages required by custom configurations.

```
sudo pacman -S acpi xsel ttf-nerd-fonts-symbols noto-fonts ttf-fira-code playerctl python-psutil
```

#### Description

1. `acpi`: Laptop's screen brightness control by Polybar's module.
2. `xsel`: X selection manipulation program that I use to copy text from Vim to system's clipboard.
3. `ttf-nerd-fonts-symbols`: Required to display icons on Polybar.
4. `noto-fonts`: Polybar's main font.
5. `ttf-fira-code`: VSCodium, and alternatively alacritty's font.
6. `playerctl`: Media player controller that I use with spotify.
7. `python-psutil`: python lib to monitor system resourcers.

### Everything

#### Official Repos

```
sudo pacman -S zsh curl git base-devel vim xorg alacritty bspwm sxhkd feh picom lxsession gtk2 gtk3 gtk4 breeze-gtk breeze-icons discord flameshot thunar pavucontrol vlc gimp eog blueman kdenlive obs-studio handbrake gnome-calculator gedit grub-customizer gucharmap htop steam retroarch acpi xsel ttf-nerd-fonts-symbols noto-fonts ttf-fira-code playerctl python-psutil
```

#### AUR

```
yay -S tulizu tbsm polybar mocu-xcursor megasync-bin thunar-megasync-bin spotify evince-no-gnome droidcam vscodium-bin brave-bin
```
