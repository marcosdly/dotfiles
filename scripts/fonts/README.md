# Fonts download script

This script downloads every font from the AUR cited on the [fonts](https://wiki.archlinux.org/title/fonts#Font_packages) page on Arch's wiki for all users and configure emoji fonts for browsers.

The packages on this script includes Latin, Ancient (Aegean, Egyptian, Cuneiform, Anatolian, Maya, and Analecta), Arabic, Bengali, Braille, Chinese, Japanese, Korean, Vietnamese, Cyrillic, Greek, Hebrew, Indic, Khmer, Mongolic, Persian, Tai-kadai, Tibeto-Burman, Emoji, Bitmap, and Math fonts.

## How it works

The script downloads the `noto-color-emoji-fontconfig` package from the AUR, which contains the Noto Color Emoji font and the configuration file needed to setup emojis properly on browsers. It also downloads a ton of fonts from the AUR, including fonts for diferent alphabets (cited above).

## Dependencies

* [yay](https://github.com/Jguer/yay)
* [curl](https://curl.se/)

## How to run the script

There's a problem related to run this script on the fly through curl that I couldn't fix, so I expect you to download the repo or download the script only. Here's a command to download only the script to your home directory:

```
curl https://raw.githubusercontent.com/marcosdly/dotfiles/master/scripts/fonts/already-pasted-pkgs.sh -o ${HOME}/already-pasted-pkgs.sh
```

You can obviously change the directory where the file will be stored, but you need to specify the name off the output file (mandatory).

If you think that the packages on the main script are out-of-date, you can use the [`getAURPackageNames.js`](https://github.com/marcosdly/dotfiles/tree/master/scripts/fonts/getAURPackageNames.js) script to filter the package names from the page. Just open the [fonts](https://wiki.archlinux.org/title/fonts#Font_packages) page, press Ctrl+i or F12, copy the content of `getAURPackageNames.js`, paste it on the console and run it. It must output all the packages names. After that, copy the output and paste where is specified on the [`not-pasted-pkgs.sh`](https://github.com/marcosdly/dotfiles/tree/master/scripts/fonts/not-pasted-pkgs.sh) file.

There are many more packages in subpages of the [Localization](https://wiki.archlinux.org/title/Localization) page that are already on the [`already-pasted-pkgs.sh`](https://github.com/marcosdly/dotfiles/tree/master/scripts/fonts/already-pasted-pkgs.sh), so if you don't want to bother taking the packages of every page you don't have to. But if you do want, these are the pages you need to take the packages from:

- [Localization/Bengali](https://wiki.archlinux.org/title/Localization/Bengali#Fonts)
- [Localization/Chinese](https://wiki.archlinux.org/title/Localization/Chinese#Fonts)
- [Localization/Japanese](https://wiki.archlinux.org/title/Localization/Japanese#Fonts)
- [Localization/Korean](https://wiki.archlinux.org/title/Localization/Korean#Fonts)
- [Localization/Indic](https://wiki.archlinux.org/title/Localization/Indic#Fonts)

After executing the script just select the options you like the most when yay asks for Diffs, cleanBuild and providers for the packages.

## Firefox

If you are having problems with firefox you can check [Font troubleshooting](https://wiki.archlinux.org/title/Firefox#Font_troubleshooting) at Firefox page in Arch's wiki and change the variables it says to change in `about:config`.
