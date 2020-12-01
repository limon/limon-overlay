# My Personal Gentoo Overlay
```
sudo eselect repository add limon-overlay git https://github.com/limon/gentoo-overlay.git
sudo emerge --sync -r limon-overlay
sudo ln -sv /var/db/repos/limon-overlay/patches /etc/portage/patches
```

Alternatively, for convenient local modification.
```
# git clone ... and then:

cat << 'EOF' | sudo tee /etc/portage/repos.conf/limon-overlay.conf
[limon-overlay]
location = $YOUR_REPO_PATH
priority = 100
EOF

# link patches
```
