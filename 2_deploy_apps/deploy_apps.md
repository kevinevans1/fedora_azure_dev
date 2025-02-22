# Deploying Applications on Fedora Linux

This guide will walk you through the process of deploying various development tools and applications on Fedora Linux using Homebrew, Flatpak, and other package managers.

## Prerequisites

Before you begin, ensure you have the following:

- A Fedora Linux system (Fedora 37 or above recommended)
- A user account with `sudo` privileges
- Internet connectivity

## Step 1: Install Homebrew

Homebrew is a popular package manager for macOS and Linux. It simplifies the installation of software on these platforms.

### Install curl and git

First, install `curl` and `git`, which are prerequisites for Homebrew.

```bash
sudo dnf install -y curl git
```
### Install Homebrew
Install Homebrew using the official installation script.

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### Install Packages Using Homebrew
Update Homebrew and install the necessary packages.

```bash
brew update
brew install azure-cli          # Azure CLI for managing Azure resources
brew install terraform          # Terraform for infrastructure as code
brew install opentofu           # OpenTofu for managing infrastructure as code
brew install aztfexport         # Azure Terraform Export tool
brew install kubectl            # Kubernetes command-line tool
brew install helm               # Helm package manager for Kubernetes
brew install jandedobbeleer/oh-my-posh/oh-my-posh  # Oh My Posh for customizing the shell prompt
```

### Install Azure Bicep
Azure Bicep is a domain-specific language (DSL) for deploying Azure resources.

```bash
az bicep install
```

### Install Flatpak
Flatpak is an open-source package manager that allows you to install and run applications in a sandboxed environment.

```bash
sudo dnf install -y flatpak
```
### Install Applications Using Flatpak
Install various applications from the Flathub repository.

```bash
flatpak install flathub com.spotify.Client -y         # Spotify music streaming app
flatpak install flathub com.bitwarden.desktop -y      # Bitwarden password manager
flatpak install flathub org.videolan.VLC -y           # VLC media player
flatpak install flathub com.discordapp.Discord -y     # Discord communication app
flatpak install flathub org.gimp.GIMP -y              # GIMP image editor
flatpak install flathub us.zoom.Zoom -y               # Zoom video conferencing app
flatpak install flathub com.slack.Slack -y            # Slack communication app
flatpak install flathub com.obsproject.Studio -y      # OBS Studio for video recording and live streaming
flatpak install flathub com.getpostman.Postman -y     # Postman API development tool
# flatpak install flathub org.libreoffice.LibreOffice -y  # LibreOffice suite (commented out)
flatpak install flathub org.gnome.Extensions -y       # GNOME Extensions app
flatpak install flathub io.github.mimbrero.WhatsAppDesktop -y  # WhatsApp Desktop app
flatpak install flathub org.gnome.Maps -y             # GNOME Maps app
```
### Install PowerShell 7
PowerShell is a cross-platform task automation solution made up of a command-line shell, a scripting language, and a configuration management framework.

```bash
sudo dnf update -y
```
### Install Pre-requisite Packages
```bash
sudo dnf install -y wget
```
### Download the Microsoft Repository GPG Keys
```bash
wget -q "https://packages.microsoft.com/config/rhel/7/packages-microsoft-prod.rpm"
```

### Register the Microsoft Repository GPG Keys
```bash
sudo rpm -Uvh packages-microsoft-prod.rpm
```
### Update the List of Packages
```bash
sudo dnf update -y
```

### Start PowerShell
```bash
pwsh
```

### Install Visual Studio Code
Visual Studio Code is a popular code editor developed by Microsoft.

Import the Microsoft GPG Key
```bash
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
```
Add VSCode repo:
```bash
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
```
# Install VSCode
```bash
dnf check-update
sudo dnf install code
```

### Conclusion
You have successfully installed various development tools and applications on Fedora Linux. These tools will help you in your development workflow and enhance your productivity.

For more information and advanced configurations, refer to the official documentation of each tool.


