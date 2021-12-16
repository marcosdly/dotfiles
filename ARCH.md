# Arch Linux Configuration

![Arch Linux Logo](https://archlinux.org/static/logos/archlinux-logo-dark-1200dpi.b42bd35d5916.png)

Unlike than the main `README.md`, here you'll find **every** package I need to setup a fresh Arch Linux installation.

## Configuration

The configuration files to my Arch Linux setup are the ones on the [home](https://github.com/marcosdly/dotfiles/tree/master/home) and [other-dirs](https://github.com/marcosdly/dotfiles/tree/master/other-dirs) directories in this repository.

## Packages

### Essential

Basic packages for the system.

#### Official Repositories

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
6. `pipewire`: Low-latency audio/video router and processor.
    * `pipewire-docs`: Documentation.
    * `pipewire-alsa`: ALSA configuration.
    * `pipewire-jack`: JACK support.
    * `pipewire-pulse`: PulseAudio replacement.
    * `pipewire-v4l2`: V4L2 interceptor
    * `pipewire-zeroconf`: Zeroconf support
    * `gst-plugin-pipewire`: GStreamer plugin.
    * `wireplumber`: Session manager.
    * `wireplumber-docs`: Session manager documentation.
7. `grub-btrfs`: Snapshot selection on grub.
8. `links`: CLI web browser with almost no dependencies.

#### AUR

1. [`yay`](https://github.com/Jguer/yay): AUR Helper.
2. `timeshift`: System snapshots.
    * `timeshift-autosnap`: Automatic snapshots.

### Tiling Window Manager

Basic stuff needed to build a graphic environment with a tiling window manager.

#### Official Repositories

1. `xorg`: Display server.
2. `bspwm`: Window Manager.
3. `qtile`: Window Manager.
4. `kitty`: Terminal emulator (default).
5. `sxhkd`: Key bindings setter.
6. `feh`: Background setter and image viewer.
7. `picom`: Compositor.
8. `lxsession`: Policy kit.
9. `rofi`: Application launcher.
10. `network-manager-applet`: Applet for managing NetworkManager.

#### AUR

1. `tulizu`: ascii art displayer that I use on the tty.
2. `tbsm`: CLI login manager.
3. `polybar`: Status bar.
4. `cmst`: Qt based GUI for connman with applet.

### Appearance

#### Official Repositories

1. `gtk2`: GTK2.
2. `gtk3`: GTK3.
4. `breeze-gtk`: Breeze theme for GTK.
5. `breeze-icons`: Breeze icons theme.
6. `arc-solid-gtk-theme`: Arc theme for GTK (no transparency).
7. `papirus-icon-theme`: Breeze icons theme.
8. `kvantum-qt5`: QT5 theme engine.
9. `qt5ct`: QT5 configuration utility.

#### AUR

1. `mocu-xcursor`: Mocu cursor, my favourite.
2. `beautyline`: BeautyLine icons theme.

### Media

Applications that I use to manage, play and manipulate media

#### Official Repositories

1. `gimp`: Image editor.
2. `obs-studio`: Screen recorder and streaming.
3. `kdenlive`: Video editor.
4. `handbrake`: Video transcoder.
5. `vlc`: Media player.
6. `blueman`: Bluetooth manager.
7. `pavucontrol`: PulseAudio volume controller.
8. `flameshot`: Screenshot tool.
9. `pcmanfm-qt`: Graphical file manager.
10. `discord`: Social network.
11. `transmission-qt`: Torrent client.
12. `featherpad`: Simple text editor.

#### AUR

1. `evince-no-gnome`: GNOME's evince without GNOME stuff.
2. `droidcam`: Converto phone into webcam/mic.
3. `spotify`: Music streaming service.
4. `megasync-bin`: Cloud service.
5. `photoqt`: Image viewer.
6. `peazip-qt-bin`: Archiver.
7. `font-manager`: Font view and management.

### Day-to-day

Programs that I use all the time.

#### Official Repositories

1. `qalculator-gtk`: Graphical calculator.

#### AUR

1. `vscodium-bin`: vscode without branding/telemetry/licensing.
2. `librewolf-bin`: Web browser.

### Others

Applications that I don't use so often, but inevitably use.

#### Official Repositories

1. `grub-customizer`: Graphical settings manager for grub2.
2. `htop`: System monitor.

### Dependencies

These are dependencies that are not installed automatically with their respective packages. Usually they are packages required by custom configurations.

#### Official Repositories

1. `acpi`: Laptop's screen brightness control by Polybar's module.
2. `xsel`: X selection manipulation program that I use to copy text from Vim to system's clipboard.
3. `ttf-nerd-fonts-symbols`: Required to display icons on Polybar.
4. `noto-fonts`: Polybar's main font.
5. `ttf-fira-code`: VSCodium's font.
6. `playerctl`: Media player controller that I use with spotify.
7. `python-psutil`: python lib to monitor system resourcers (qtile).

