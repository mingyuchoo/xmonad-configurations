# xmonad-configurations

**xmonad >= 0.17.0**

## For Arch Linux

### Install

```bash
sudo pacman -S xmonad xmonad-contrib xmobar
sudo pacman -S rxvt-unicode feh
```

### Congiure

```bash
cp -r .xmonad $HOME
cp .xmobarrc $HOME
cp .Xresources .xinitrc $HOME
xmoand --recompile
```

## For Ubuntu

### Install

```bash
sudo apt install -y libghc-xmonad-contrib-dev libghc-xmonad-dev suckless-tools
sudo apt install -y xmonad xmonad-contrib xmobar
sudo apt install -y rxvt-unicode feh
```

### Congiure

```bash
cp -r .xmonad $HOME
cp .xmobarrc $HOME
cp .Xresources .xinitrc $HOME
xmoand --recompile
```

## Referencies

- https://travishorn.com/the-xmonad-window-manager-on-arch-linux
- https://xmonad.org/TUTORIAL.html
