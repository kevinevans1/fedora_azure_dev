# Fedora Azure Development Setup

This guide will walk you through setting up your Fedora system for Azure development. The setup includes updating repositories, installing necessary tools, and configuring your system for optimal performance.

## 0. Configure Updates and Repositories

### Script: `updates_repos.sh`

This script updates your system, configures DNF for faster downloads, updates firmware, enables RPM Fusion repositories, and installs GNOME Tweaks and Flathub.

```bash
# Update DNF Configuration
# Open the DNF configuration file to make changes.
sudo nano /etc/dnf/dnf.conf

# Update Max Parallel Downloads
# Increase the number of parallel downloads to speed up package installations.
echo "max_parallel_downloads=10" | sudo tee -a /etc/dnf/dnf.conf

# Switch To Faster Mirror
# Enable the fastest mirror to reduce download times.
echo "fastestmirror=True" | sudo tee -a /etc/dnf/dnf.conf

# Update Your System
# Update and upgrade all installed packages to their latest versions.
sudo dnf update -y && sudo dnf upgrade -y

# Update Firmware
# Refresh the firmware metadata and apply any available updates.
sudo fwupdmgr refresh --force
sudo fwupdmgr get-updates
sudo fwupdmgr update

# Enable RPM Fusion
# Enable the RPM Fusion repositories for additional software packages.
sudo dnf install -y https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install -y https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# After completing the above commands, run the following to update your system.
# Refresh the package list and upgrade all packages again.
sudo dnf upgrade --refresh -y
sudo dnf groupupdate core -y

# Install GNOME Tweaks
# Install GNOME Tweaks for customizing the GNOME desktop environment.
sudo dnf install -y gnome-tweak-tool

# Enable Flathub
# Add the Flathub repository to Flatpak for additional applications.
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Reboot
# Reboot the system to apply all changes.
sudo reboot