# Arch Linux Dot Files For Microsoft Surface Laptop 3

This repo is for quick customization, reproducibility, and notes/reminders for installing Arch Linux on the Microsoft Surface Laptop 3.
It should have everything needed to go from the live install, to a GUI Desktop Environment with sound, etc.

## Includes:
- **i3**: Window Manager
- **Brave**: Web Browser
- **kiTTY**: Terminal Emulator
- **Pipewire**: Audio Framework
- **Nautilus**: File Manager
- **gcc**: GNU C Compiler
- **NeoVim**: Terminal Text Editor

## How to Use:

### Installation
- Follow the Arch Linux [Install Guide](https://wiki.archlinux.org/title/installation_guide) until finishing **Section 3.2**.
- After running the `arch-chroot /mnt` command (section 3.2), install git and your desired text editor (in my case I will be using Neovim) from the Arch Linux package manager:

```sh
pacman -S git neovim --noconfirm
```

- Clone this repo, and `cd` into the directory and edit the `install.sh` file as you see fit:

```sh
git clone https://github.com/neetdemon/dotfiles.git
cd dotfiles
nvim install.sh
```

- Give `install.sh` executation access:

```sh
chmod +x install.sh
```

- Run `install.sh`:

```sh
./install.sh
```

- Exit the `arch-chroot` session and unmount the FileSystem partition:

```sh
logout
unmount -l /mnt
```

### Post Installation

- Restart your computer and boot into your newly installed Arch Linux Operating System. (Not the Live Installation).
- Login and enable the required system services using `systemctl` and reboot your system:


```sh
systemctl enable NetworkManager
systemctl enable lightdm
```

## Notes
- The SWAP partition should be double the size of your RAM. For example: If you have 8GB RAM, you should set your SWAP partition to 16GB. Otherwise if you're running on lower end systems (RAM <= 2GB), the SWAP partiiton
should equal the size of the RAM.

Date: *05-19-2024*
- For some reason, running the installer causes a blackscreen. Appending the `nomodeselect` parameter (by pressing the `e` key & typing `nomodeselect` at the end of the line)
before running the live installation will get it to work.
