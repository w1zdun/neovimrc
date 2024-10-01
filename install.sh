#!/bin/sh

NVIM_CUSTOM_CONFIG=~/.config/nvim-w1zdun
export NVIM_CUSTOM_CONFIG

rm -rf $NVIM_CUSTOM_CONFIG

mkdir -p $NVIM_CUSTOM_CONFIG/share
mkdir -p $NVIM_CUSTOM_CONFIG/nvim

stow --restow --target=$NVIM_CUSTOM_CONFIG/nvim .

alias nvw='XDG_DATA_HOME=$NVIM_CUSTOM_CONFIG/share XDG_CONFIG_HOME=$NVIM_CUSTOM_CONFIG nvim'

export nvw
