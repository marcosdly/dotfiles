#! /usr/bin/env bash

#                                        _ _       
#  _ __ ___   __ _ _ __ ___ ___  ___  __| | |_   _ 
# | '_ ` _ \ / _` | '__/ __/ _ \/ __|/ _` | | | | |
# | | | | | | (_| | | | (_| (_) \__ \ (_| | | |_| |
# |_| |_| |_|\__,_|_|  \___\___/|___/\__,_|_|\__, |
#                                            |___/ 
# This script was created by marcosdly.
# Check the offcial repository: https://github.com/marcosdly/dotfiles/tree/master/scripts/fonts

#############################
# Font configuration script #
#############################

# This script downloads all the fonts cited on the "fonts" page
# on Arch's wiki. Unlike the already-pasted-pkgs.sh script, you
# have to get and paste the pkgs yourself.
# https://wiki.archlinux.org/title/fonts#Font_packages

# The AUR packages where pasted here in 07/24/2021 (July 24th)

# Emoji browser bug fix
echo " 
=> Refreshing repos through yay
 "
yay -Sy
echo " 
=> Installing Noto Fonts and configuring emojis
 "
yay -S noto-color-emoji-fontconfig

# Install AUR fonts
if [ -x "$(command -v yay)" ]; then
	echo " 
	=> Installing AUR fonts
	 "
	yay -S \
	all-repository-fonts \
	ttf-office-2007-fonts ttf-win7-fonts ttf-ms-win8 ttf-ms-win10 \
	# Paste getAURPackageNames.js output here
else
	echo " 
	=> yay is missing, please install it and rerun the script
	 "
	exit 1
fi

# Regenerate fontconfig cache
echo " 
=> Refreshing fontconfig cache
 "
fc-cache -vf

exit 1
