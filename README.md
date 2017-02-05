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


## Powerline Fedora Installation

To install this plugin in Fedora 24, run:

```bash
sudo dnf install tmux-powerline
```

Then create `~/.config/powerline/themes/tmux` and make symbolic links to:

```bash
mkdir -p ~/.config/powerline/themes/tmux
ln -s $(pwd)/.tmux.conf ~/.tmux.conf
ln -s $(pwd)/.config/powerline/themes/tmux ~/.config/powerline/themes/tmux/
```
To view internal IP you must restart powerline daemon:

```bash
powerline-daemon --replace
```
