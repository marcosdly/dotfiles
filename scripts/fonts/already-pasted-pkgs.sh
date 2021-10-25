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
# on Arch's wiki.
# https://wiki.archlinux.org/title/fonts#Font_packages

# The AUR packages where pasted here in 07/25/2021 (July 25th)

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
	pcf-spectrum-berry efont-unicode-bdf gohufont artwiz-fonts ttf-profont-iix \
	proggyfonts bdf-tewi-git profont-otb xorg-fonts-misc-otb gohufont-otb \
	cozette-otb ttf-ms-win10 ttf-b612 font-bh-ttf ttf-ms-fonts ttf-vista-fonts \
	ttf-anonymous-pro ttf-courier-prime ttf-envy-code-r ttf-inconsolata \
	ttf-inconsolata-g ttf-iosevka jre ttf-meslo ttf-monaco ttf-mononoki \
	adobe-source-code-pro-fonts ttf-andika ttf-dmcasansserif otf-jost \
	ttf-google-fonts-git ttf-tahoma otf-bodoni ebgaramond-otf ttf-cheapskate \
	ttf-mph-2b-damase all-repository-fonts ttf-google-fonts-git ttf-ancient-fonts \
	ttf-amiri ttf-arabeyes-fonts ttf-qurancomplex-fonts ttf-sil-lateef \
	ttf-sil-scheherazade ttf-ubraille ttf-paratype otf-russkopis otf-gfs ttf-mgopen \
	opensiddur-hebrew-fonts culmus alefbet ttf-ms-fonts ttf-google-fonts-git ttf-abkai \
	persian-fonts borna-fonts iran-nastaliq-fonts iranian-fonts ir-standard-fonts \
	persian-hm-ftx-fonts persian-hm-xs2-fonts gandom-fonts gandom-fonts gandom-fonts \
	gandom-fonts gandom-fonts gandom-fonts gandom-fonts gandom-fonts ttf-yas ttf-x2 \
	fonts-tlwg ttf-lao ttf-lao-fonts ttf-myanmar-fonts ttf-twemoji otf-openmoji \
	ttf-twemoji-color ttf-symbola otf-stix \
	ttf-mathtype ttf-mac-fonts \
	ttf-freebanglafont ibus-avro-git openbangla-keyboard \
	noto-fonts-sc noto-fonts-tc ttf-tw ttf-twcns-fonts ttf-ms-win8-zh_cn \
	ttf-ms-win8-zh_tw ttf-ms-win10-zh_cn ttf-ms-win10-zh_tw ttf-i.bming \
	ttf-koruri ttf-koruri ttf-monapo ttf-mplus ttf-vlgothic \
	spoqa-han-sans ttf-d2coding ttf-nanum ttf-nanumgothic_coding ttf-kopub \
	ttf-kopub ttf-kopubworld ttf-kopubworld ttf-unfonts-core-ibx scim-hangul \
	ttf-freebanglafont lohit-fonts ttf-devanagarifonts ttf-gurmukhi-fonts_sikhnet \
	ttf-gurmukhi_punjabi ttf-gujrati-fonts ttf-kannada-font ttf-lklug ttf-tamil \
	ttf-urdufonts ttf-malayalam-fonts-meta ibus-avro-git openbangla-keyboard \
	libvarnam-ibus-git ttf-lklug
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
