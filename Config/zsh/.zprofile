#!/bin/bash

PATH=$PATH:~/Repos/eww/target/release

if [[ "$(tty)" = "/dev/tty1" ]]; then
	exec Hyprland
fi
