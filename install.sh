#!/usr/bin/env fish

# TERMINAL COLORS
set RESET '\e[0m'
set RED '\e[31m'
set GREEN '\e[32m'
set YELLOW '\e[33m'
set BOLD_RED '\e[1;31m'
set BOLD_GREEN '\e[1;32m'
set BOLD_WHITE '\e[1;37m'

set -l _PYTHON_PACKAGES powerline-status netifaces psutil
set -l _POWERLINE_CONFIG_PATH ~/.config/powerline/themes/tmux
set -l _POWERLINE_CONFIG_FILE ~/.config/powerline/themes/tmux/default.json
set -l _TMUX_CONFIG_FILE ~/.tmux.conf
set -l _PYTHON_VERSION python3.11

if not $_PYTHON_VERSION --version
    echo -e $BOLD_RED"Python version $_PYTHON_VERSION not found, exiting..."$RESET
    exit 1
end

if not pipx --version
    echo -e $BOLD_RED"pipx not found, exiting..."$RESET
    exit 1
end

# Install python packages
echo -e $BOLD_WHITE"Installing python packages: $_PYTHON_PACKAGES..."$RESET
pipx install --python $_PYTHON_VERSION powerline-status
pipx inject powerline-status netifaces
pipx inject powerline-status psutil

# Creating powerline config directory
echo -e $BOLD_WHITE"Creating powerline config paht into $_POWERLINE_CONFIG_PATH"$RESET
mkdir -p $_POWERLINE_CONFIG_PATH

# Creating symbolic links
if test -f $_TMUX_CONFIG_FILE
    echo -e $BOLD_RED"$_TMUX_CONFIG_FILE already exists, skipping..."$RESET
else
    echo -e $BOLD_WHITE"Copying TMUX config file from template"$RESET
    cp tmux.conf.template tmux.conf
    echo -e $BOLD_WHITE"Creating symbolic link for $_TMUX_CONFIG_FILE"$RESET
    ln -s $PWD/tmux.conf $_TMUX_CONFIG_FILE
end

if test -f $_POWERLINE_CONFIG_FILE
    echo -e $BOLD_RED"$_POWERLINE_CONFIG_FILE already exists, skipping..."$RESET
else
    echo -e $BOLD_WHITE"Creating symbolic link for $_POWERLINE_CONFIG_FILE"$RESET
    ln -s $PWD/config/powerline/themes/tmux/default.json $_POWERLINE_CONFIG_FILE
end

echo "## Added by install.sh" >> $_TMUX_CONFIG_FILE
echo source "~/.local/pipx/venvs/powerline-status/lib/$_PYTHON_VERSION/site-packages/powerline/bindings/tmux/powerline.conf"  >> $_TMUX_CONFIG_FILE
