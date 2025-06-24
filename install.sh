#!/bin/bash

# Created by:									       
# ░▒▓███████▓▒░░▒▓████████▓▒░▒▓████████▓▒░▒▓████████▓▒░▒▓███████▓▒░░▒▓████████▓▒░▒▓██████████████▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓███████▓▒░  
# ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░         ░▒▓█▓▒░   ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░ 
# ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░         ░▒▓█▓▒░   ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░ 
# ░▒▓█▓▒░░▒▓█▓▒░▒▓██████▓▒░ ░▒▓██████▓▒░    ░▒▓█▓▒░   ░▒▓█▓▒░░▒▓█▓▒░▒▓██████▓▒░ ░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░░▒▓██████▓▒░░▒▓█▓▒░░▒▓█▓▒░ 
# ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░         ░▒▓█▓▒░   ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░ 
# ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░         ░▒▓█▓▒░   ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░ 
# ░▒▓█▓▒░░▒▓█▓▒░▒▓████████▓▒░▒▓████████▓▒░  ░▒▓█▓▒░   ░▒▓███████▓▒░░▒▓████████▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░ 
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# ██╗███╗   ██╗████████╗██████╗  ██████╗    
# ██║████╗  ██║╚══██╔══╝██╔══██╗██╔═══██╗██╗
# ██║██╔██╗ ██║   ██║   ██████╔╝██║   ██║╚═╝
# ██║██║╚██╗██║   ██║   ██╔══██╗██║   ██║██╗
# ██║██║ ╚████║   ██║   ██║  ██║╚██████╔╝╚═╝
# ╚═╝╚═╝  ╚═══╝   ╚═╝   ╚═╝  ╚═╝ ╚═════╝    
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# This repo is for quick customization, reproducibility, and notes/reminders for installing Arch Linux on the Microsoft Surface Laptop 3.
# From installation, to post installation, it should have everything needed to go from the install screen, to a GUI Desktop Environment that looks good.

# ██╗  ██╗ ██████╗ ██╗    ██╗    ████████╗ ██████╗     ██╗   ██╗███████╗███████╗   
# ██║  ██║██╔═══██╗██║    ██║    ╚══██╔══╝██╔═══██╗    ██║   ██║██╔════╝██╔════╝██╗
# ███████║██║   ██║██║ █╗ ██║       ██║   ██║   ██║    ██║   ██║███████╗█████╗  ╚═╝
# ██╔══██║██║   ██║██║███╗██║       ██║   ██║   ██║    ██║   ██║╚════██║██╔══╝  ██╗
# ██║  ██║╚██████╔╝╚███╔███╔╝       ██║   ╚██████╔╝    ╚██████╔╝███████║███████╗╚═╝
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# After running `arch-chroot /mnt` (section 3.2) edit the following variables in this file and run
# this script. 
#
# The Optional part of this script is exactly that... Optional. You can either delete it, comment 
# or modify it. Up to you :)

############################### !!! IMPORTANT !!! ###############################
# Do not remove the $LINE variable. If you so choose to do it manually then	#
# feel free to delete it instead :).						#
#################################################################################


## BEGIN VARIABLES ##
REGION='America'
CITY='Los_Angeles'
LANG='en_US.UTF-8'
USERNAME='NEET'
HOSTNAME='BLACKBOX'
EFI_PARTITION='nvme0n1p1'

###!!! DO NOT CHANGE BELOW VARIABLE(s) !!!###
LINE=$(grep -n $LANG /etc/locale.gen | cut -d: -f1)
###!!! DO NOT CHANGE ABOVE VARIABLE(s) !!!###
## END VARIABLES


#######################
# Installation Set Up #
#######################
# Refresh Arch Linux package manager repository and metadata
pacman -Syy

# Install latest Arch Linux KeyRing to avoid PGP Errors. Good to use if you're installing from an older Arch Linux live installation
pacman -S archlinux-keyring --noconfirm

# Refresh and update all packages
pacman -Syyu --noconfirm

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ #

# Required packages to finish insallation
pacman -S sudo grub efibootmgr dosfstools os-prober mtools networkmanager --noconfirm

## Set the time zone (Section 3.3) ##
ln -sf /usr/share/zoneinfo/$REGION/$CITY /etc/localtime
hwclock --systohc

## Set localization (Section 3.4) ##
# Get line of $LANG and remove comment indicator from /etc/locale.gen then create and set locale
sed -i $LINE's/^.//' /etc/locale.gen

# Create locale.conf file and put the desired language
echo LANG=$LANG > /etc/locale.conf

# Generate all locale files.
locale-gen
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ #

## Network configuration (Section 3.5) ##

echo $HOSTNAME > /etc/hostname
echo '127.0.0.1		localhost' > /etc/hosts
echo '::1		localhost' >> /etc/hosts
echo "127.0.1.1		$HOSTNAME" >> /etc/hosts

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ #

## Create new user and set passwords (Section 3.7???) ##

# Personally, I don't know where to put this. Section 3.7 in the installation guide tells you to set the password but this is only
# for the root user. I'm just saying 3.7 because it comes close.

# Create new user account
useradd -m $USERNAME

# Edit /etc/sudoers to allow the %wheel group to have sudo permissions so we can make Admin user.
# Find which line the wheel group (including password) is on and remove the comment indicator
sed -i $(grep -n '%wheel ALL=(ALL:ALL) ALL' /etc/sudoers | cut -d: -f1)'s/^.//' \
	/etc/sudoers

# Append $USERNAME to wheel group
usermod -aG wheel $USERNAME

# Set Passwords
clear
echo [ SET PASSWORD FOR \'root\' USER \(will not be echoed to the terminal\) ]
passwd

clear
echo [ SET PASSWORD FOR \(\'$USERNAME\'\) USER \(will not be echoed to the terminal\) ]
passwd $USERNAME
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ #

## Configure Boot Loader (3.8) ##

# Have EFI notice GRUB Bootloader and configure GRUB
mkdir /boot/EFI
mount /dev/$EFI_PARTITION /boot/EFI
grub-install --target=x86_64-efi --bootloader-id=grub_uefi --efi-directory=/boot/EFI --recheck
grub-mkconfig -o /boot/grub/grub.cfg


########################################
# OPTIONAL: FEEL FREE TO DELETE/MODIFY #
########################################

# Install GUI, WM, and Lock Screen.
pacman -S xorg-server xorg-xinit lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings i3-gaps \
	i3status i3lock dmenu --noconfirm

## Install packages ##
# `ripgrep` is a dependency for neovim settings to grep through files while editing
pacman -S git discord polybar picom gcc kitty firefox nautilus openssh zig mpv ripgrep --noconfirm

# Audio
pacman -S pipewire pipewire-audio pipewire-pulse wireplumber pavucontrol --noconfirm

# Copy basic pipewire configuration files to ~/.config/pipewire
cp -r /usr/share/pipewire ~/.config/pipwire

##  Microsoft Surface Setup  ##

# Import keys Linux-Surface uses to sign packages.
curl -s https://raw.githubusercontent.com/linux-surface/linux-surface/master/pkg/keys/surface.asc \
	| pacman-key --add -

# Locally sign the fingerprint
pacman-key --finger 56C464BAAC421453
pacman-key --lsign-key 56C464BAAC421453

# Add respository to Pacman
echo '[linux-surface]' >> /etc/pacman.conf
echo 'Server = https://pkg.surfacelinux.com/arch' >> /etc/pacman.conf

# Refresh pacman repository metadata then install Linux-Surface kernel and it's dependencies.
pacman -Syyu
pacman -S linux-surface linux-surface-headers iptsd --noconfirm

# !!OPTIONAL (feel free to skip this part)!! 
# Additional Wifi Firmware for: Surface Pro 4, 5, & 6, Book 1 & 2, Laptop 1 & 2
#
# pacman -S linux-firmware-marvell

# Secureboot Key. Will sign the Linux-Surface kernel into the bootloader.
# Has to be installed on it's own since it comes with instructions
pacman -S linux-surface-secureboot-mok --noconfirm

# Configure GRUB to use Linux-Surface kernel
grub-mkconfig -o /boot/grub/grub.cfg

# Fonts
sudo mkdir /usr/local/share/fonts
sudo mkdir/usr/local/share/fonts/otf
sudo mkdir/usr/local/share/fonts/ttf

sudo cp -r ./fonts/EnvyCodeRNerdFont/ /usr/local/share/fonts/ttf/
sudo cp -r ./fonts/GeistMono/ /usr/local/share/fonts/otf/
sudo cp -r ./fonts/Lekton/ /usr/local/share/fonts/ttf/

fc-cache

# Move .config folder to NEET home dir
cp -r .config/ /home/NEET/

# Install AUR packages
cd /home/$USERNAME/
mkdir Installations && cd Installations

echo 'Cloning and installing Brave Web Browser...'
git clone https://aur.archlinux.org/brave-bin.git
cd brave-bin
su -c 'makepkg -si --noconfirm' $USERNAME

cd /home/$USERNAME/Installations

echo 'Cloning and installing xwinwrap'
git clone https://aur.archlinux.org/xwinwrap-mmhobi7-git.git
cd xwinwrap-mmhobi7-git
su -c 'makepkg -si --noconfirm' $USERNAME

# Bun.js Installation
su -c 'curl -fsSL https://bun.sh/install | bash' $USERNAME

# ALL DONE!!!
clear
echo 'You are almost done! You can now exit the chroot environment and restart your system.'
echo "Log into your newly made user account $USERNAME, and enable the required system services using the \`systemctl\` command."
echo 'Just in case, I left them in the README.md file within this repo, under the "Post Installation" section.'
echo ''
echo '~ Happy hacking :3 - NEETDemXn'
