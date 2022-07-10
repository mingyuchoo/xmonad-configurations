# xmonad-configurations

## Prerequisite

```sh
sudo apt install -y libghc-xmonad-contrib-dev libghc-xmonad-dev suckless-tools
sudo apt install -y rxvt-unicode feh
```

## Install `xmonad`

```sh
sudo apt install -y xmonad-contrib xmonad
cp -r .xmonad $HOME
xmoand --recompile
```

if you change `$HOME/.xmonad/xmonad.hs` file,
please run `xmonad --recompile` command

## Install `xmobar`

```sh
sudo apt install -y xmobar
cp -r .config $HOME
```

## Other things

```sh
cp .Xresources .xsessionrc $HOME
xrdb -merge $HOME/.Xresources
```
## Referencies

- https://travishorn.com/the-xmonad-window-manager-on-arch-linux
- https://xmonad.org/TUTORIAL.html
