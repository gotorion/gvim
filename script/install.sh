#!/bin/bash
os_name=$(uname)
case "$os_name" in
    "Linux")
        echo "Using neovim on MacOS, installing..."
        # TODO: using different commands on different distro
        sudo pacman -S neovim
        ;;
    "Darwin")
        echo "Using neovim on MacOS, installing..."
        brew install neovim
        # TODO: clone repo & install config
        ;;
    *)
        echo "Unsupported system: $os_name"
        ;;
esac
