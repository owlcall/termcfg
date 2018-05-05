#!/bin/sh

ROOT=$( cd "$( dirname "$0" )" && pwd )

echo "source $ROOT/conf" >> ~/.tmux.conf
