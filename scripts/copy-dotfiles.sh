#!/usr/bin/env bash

rsync -av --include-from=/home/zeamanuel/cachyOS-config/create_include.txt --exclude='*' ~/.config/ ~/cachyOS-config/dotfiles/
