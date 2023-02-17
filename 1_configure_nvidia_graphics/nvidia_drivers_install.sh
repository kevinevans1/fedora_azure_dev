# Here’s how to automatically sign NVidia kernel module in Fedora 36

# Install the tools required for auto signing to work
sudo dnf install kmodtool akmods mokutil openssl

# Generate a signing key
sudo kmodgenca -a

# Initiate the key enrollment
# This will make Linux kernel trust drivers signed with your key
sudo mokutil --import /etc/pki/akmods/certs/public_key.der
# You will be asked to enter a password, it doesn’t have to be very strong, just make sure to remember it. You’ll only need it once during step 5.

# Reboot to enroll the key
sudo reboot

# Enroll the key
# After reboot you will see MOK Manager interface and will be asked to enroll the key. Probably if you ever installed nVidia drivers in Ubuntu with Secure boot enabled, you’ve seen this interface before.
# First select “Enroll MOK“.
#Then “Continue“.
# Hit “Yes” and enter the password from step 3.
# Then select “OK” and your device will reboot again.

# Install NVidia driver
# Now just install NVidia driver like you would typically do.
sudo dnf install gcc kernel-headers kernel-devel akmod-nvidia xorg-x11-drv-nvidia xorg-x11-drv-nvidia-libs xorg-x11-drv-nvidia-libs.i686

# Make sure the kernel modules got compiled
sudo akmods --force

# Make sure the boot image got updated as well
sudo dracut --force

# Reboot your device
sudo reboot

# Now that you’re done, make sure to verify the driver got loaded after reboot:

$> lsmod | grep -i nvidia