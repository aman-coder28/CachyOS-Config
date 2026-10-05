#!/usr/bin/env bash

rsync -av --include-from=/home/zeamanuel/Void-Linux-Config/create_include.txt --exclude='*' ~/.config/ ~/Void-Linux-Config/dotfiles/
