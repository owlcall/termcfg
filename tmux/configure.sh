#!/bin/sh

ROOT=$( cd "$( dirname "$0" )" && pwd )

echo "source $ROOT/.tmux.conf" >> ~/.tmux.conf
echo "source-file $ROOT/cyan.tmuxtheme" >> ~/.tmux.conf
