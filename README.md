<p align="center">
  <a href="https://github.com/mingyuchoo/xmonad-configurations/blob/main/LICENSE"><img alt="license" src="https://img.shields.io/github/license/mingyuchoo/xmonad-configurations"/></a>
  <a href="https://github.com/mingyuchoo/xmonad-configurations/issues"><img alt="Issues" src="https://img.shields.io/github/issues/mingyuchoo/xmonad-configurations?color=appveyor" /></a>
  <a href="https://github.com/mingyuchoo/xmonad-configurations/pulls"><img alt="GitHub pull requests" src="https://img.shields.io/github/issues-pr/mingyuchoo/xmonad-configurations?color=appveyor" /></a>
</p>

# xmonad-configurations

**xmonad >= 0.17.0**

## For Arch Linux

### Install

```bash
yes | sudo pacman -S xmonad xmonad-contrib xmobar
yes | sudo pacman -S rxvt-unicode feh
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
