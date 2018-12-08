#!/bin/sh

ROOT=$( cd "$( dirname "$0" )" && pwd )

git clone https://github.com/tmux-plugins/tmux-battery $ROOT/tmux-battery

echo "source $ROOT/.tmux.conf" >> ~/.tmux.conf
echo "source-file $ROOT/cyan.tmuxtheme" >> ~/.tmux.conf
echo "run-shell $ROOT/tmux-battery/battery.tmux" >> ~/.tmux.conf
