#!/bin/bash
os_name=$(uname)
case "$os_name" in
    "Linux")
        if grep q "ID=arch" /etc/os0release; then
            echo "Using neovim on Arch, installing..."
            sudo pacman -S neovim
        else
            echo "Not supported distro"
        fi
        ;;
    "Darwin")
        echo "Using neovim on MacOS, installing..."
        brew install neovim
        ;;
    *)
        echo "Unsupported system: $os_name"
        ;;
esac
