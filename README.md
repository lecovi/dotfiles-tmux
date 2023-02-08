# dotfiles-tmux

Tmux config files.

## Powerline in tmux

This will show the following information:

**left side**
- Window information
**right side**
- External IP
- Internal IP
- Uptime
- System load
- Date
- Time
- Hostname


## MacOS Installation

This needs `powerline-status`, `netifaces` and `psutil`:

```bash
pip install --user powerline-status netifaces psutil
```

Then create `~/.config/powerline/themes/tmux` and make symbolic links to:

```bash
mkdir -p ~/.config/powerline/themes/tmux
ln -s $PWD/.tmux.conf ~/.tmux.conf
ln -s $PWD/.config/powerline/themes/tmux ~/.config/powerline/themes/tmux/
```

To view internal IP you must restart powerline daemon:

```bash
powerline-daemon --replace
```

# Troubleshooting

If you don't have `powerline` command check if executable is in PATH.

#FIXME: poner el path

