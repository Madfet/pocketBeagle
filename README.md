# Yocto build for Pocketbeagle

## Prerequisites

When building for the first time we need to install docker:

For ubuntu:

```bash
    sudo apt install docker docker-buildx
    sudo usermod -a -G docker ${USER}
    sudo reboot
```

## Build

```bash
   cd pockectBeagle
   ./build_pocketBeagle_img.sh
```

## Deploy

Let's say, you're using usb sd card adaptor showing up in Linux as sda.

```bash
   ./burn.sh sda
```
