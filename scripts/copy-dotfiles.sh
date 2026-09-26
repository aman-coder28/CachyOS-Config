#!/usr/bin/env bash

rsync -av --include-from=/home/zeamanuel/CachyOS-Config/create_include.txt --exclude='*' ~/.config/ ~/CachyOS-Config/dotfiles/
