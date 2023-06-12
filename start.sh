#boot arch iso on usbkey
iwctl
station wlan0 connect ballnet

cp /etc/pacman.conf /etc/pacman.bak
rm /etc/pacman.conf
pacman -Sy sshuttle git
git clone www.github.com/rluttrel/arch
cp /arch/pacman.conf /etc/pacman.conf
sed -i '1s/^/<Server = https://cloudflaremirrors.com/archlinux/$repo/os/$arch> /' /etc/pacman.d/mirrorlist

ip addr show eth0 | grep inet | awk '{ print $2; }' > ipaddress.txt

archinstall
extra packages:  git firefox

after reboot
cp /etc/pacman.conf /etc/pacman.bak
rm /etc/pacman.conf
pacman -Sy sshuttle git
git clone www.github.com/rluttrel/arch
cp /arch/pacman.conf /etc/pacman.conf
sed -i '1s/^/<Server = https://cloudflaremirrors.com/archlinux/$repo/os/$arch> /' /etc/pacman.d/mirrorlist

git clone https://github.com/arkenfox/user.js/


