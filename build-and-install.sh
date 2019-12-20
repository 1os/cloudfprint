sudo snap remove cloudfprint
snapcraft cleanbuild
sudo snap install --devmode --edge cloudfprint_2019.12.06_multi.snap

sudo snap connect cloudfprint:io-ports-control :io-ports-control
sudo snap connect cloudfprint:hardware-observe :hardware-observe
sudo snap connect cloudfprint:raw-usb :raw-usb
