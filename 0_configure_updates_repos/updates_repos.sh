# Update DNF Configuration
sudo nano /etc/dnf/dnf.conf

# Update Max Parallel Downloads
max_parallel_downloads=10

# Switch To Faster Mirror
fastestmirror=

# Update Your System
sudo dnf update && sudo dnf upgrade

# Update Firmware
sudo fwupdmgr refresh --force
sudo fwupdmgr get-updates
sudo fwupdmgr update

# Enable RPM Fusion
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm

sudo dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# After completing the above commands, run the following to update your system.

sudo dnf upgrade --refresh
sudo dnf groupupdate core

# Install GNOME Tweaks
sudo dnf install gnome-tweak-tool

# Enable Flathub
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Reboot


