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


## Fedora Installation

To install this plugin in Fedora 24, run:

```bash
sudo dnf install tmux tmux-powerline
```

Then create `~/.config/powerline/themes/tmux` and make symbolic links to:

```bash
mkdir -p ~/.config/powerline/themes/tmux
ln -s $(pwd)/.tmux.conf.fedora ~/.tmux.conf
ln -s $(pwd)/.config/powerline/themes/tmux ~/.config/powerline/themes/tmux/
```

To view internal IP you must install `netifaces` python package and restart
powerline daemon:

```bash
sudo pip install netifaces
powerline-daemon --replace
```

## Debian Installation

To install this plugin in Debian systems:

```bash
sudo apt install tmux powerline fonts-powerline python-dev
sudo pip install netifaces
```

Then create `~/.config/powerline/themes/tmux` and make symbolic links to:

```bash
mkdir -p ~/.config/powerline/themes/tmux
ln -s $(pwd)/.tmux.conf.debian ~/.tmux.conf
ln -s $(pwd)/.config/powerline/themes/tmux ~/.config/powerline/themes/tmux/
```

To view internal IP you must restart powerline daemon:

```bash
powerline-daemon --replace
```


