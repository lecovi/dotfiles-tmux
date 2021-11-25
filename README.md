# dotfiles-tmux

Tmux config files.

## Powerline in tmux

This will show the following information:

- Window information
- External IP
- Internal IP
- Uptime
- System load
- Date
- Time
- Hostname

## Manjaron Installation

Install `powerline` for [tmux](https://wiki.archlinux.org/index.php/Powerline#Tmux).

```bash
sudo pacman -S powerline powerline-fonts
```

Create directory and copy the necesary files.

```bash
mkdir -p ~/.config/powerline/themes/tmux
ln -s $(pwd)/.tmux.conf.fedora ~/.tmux.conf
ln -s $(pwd)/.config/powerline/themes/tmux ~/.config/powerline/themes/tmux/
```

To view internal IP you must install `netifaces` python package and restart
powerline daemon:

```bash
pip install --user netifaces psutil powerline-status
powerline-daemon --replace
```

## MacOS Installation

Check out [MacOS branch](/lecovi/dotfiles-tmux/tree/macos)

## Debian or Fedora Installation

Check out [Debian or Fedora branch](/lecovi/dotfiles-tmux/tree/zenbook)
