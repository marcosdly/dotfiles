# other-dirs

This folder is for the files that belong to places other than the home directory.

All the paths here work for sure in Arch Linux. I didn't had much experience with other distros, so I can't guarantee it will be the same thing for Ubuntu, Fedora, etc.

## Paths

1. `bspwm.desktop` - /usr/share/xsessions/
	* bspwm's session with dbus to fix flameshot.
2. `index.theme` - /usr/share/icons/default
	* Set the cursor. Fix custom cursor not being shown over polybar.
3. `40-libinput.conf` - /usr/share/X11/xorg.conf.d/
	* Touchpad's configuration.
4. `tulizu.service` - /etc/systemd/system/
	* Systemd service to run tulizu in case it's not automatically generated.
5. `nothing.zsh-theme` - ~/.oh-my-zsh/custom/themes/
	* ZSH Shell theme (oh-my-zsh).
