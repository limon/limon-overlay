# My Personal Gentoo Overlay
```
sudo eselect repository add limon-overlay git https://github.com/limon/gentoo-overlay.git
sudo emerge --sync -r limon-overlay
sudo ln -sv /var/db/repos/limon-overlay/patches /etc/portage/patches
```
