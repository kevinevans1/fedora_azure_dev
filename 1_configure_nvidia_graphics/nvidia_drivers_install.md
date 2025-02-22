# Install the tools required for auto signing to work
sudo dnf install -y kmodtool akmods mokutil openssl

# Generate a signing key
sudo kmodgenca -a

# Initiate the key enrollment
# This will make Linux kernel trust drivers signed with your key
sudo mokutil --import /etc/pki/akmods/certs/public_key.der

# Reboot to enroll the key
sudo reboot

# Enroll the key
# After reboot, follow the MOK Manager interface to enroll the key.

# Install NVidia driver
sudo dnf install -y gcc kernel-headers kernel-devel akmod-nvidia xorg-x11-drv-nvidia xorg-x11-drv-nvidia-libs xorg-x11-drv-nvidia-libs.i686

# Make sure the kernel modules got compiled
sudo akmods --force

# Make sure the boot image got updated as well
sudo dracut --force

# Reboot your device
sudo reboot

# Verify the driver got loaded after reboot
lsmod | grep -i nvidia