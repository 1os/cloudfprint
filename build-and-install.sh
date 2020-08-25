sudo snap remove cloudfprint
snapcraft clean
snapcraft build
sudo snap install --devmode --edge cloudfprint_2020.08.24_multi.snap

sudo snap connect cloudfprint:io-ports-control :io-ports-control
sudo snap connect cloudfprint:hardware-observe :hardware-observe
sudo snap connect cloudfprint:raw-usb :raw-usb
