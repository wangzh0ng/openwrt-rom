
cd /opt/
git clone https://github.com/CoreELEC/CoreELEC.git
cd CoreELEC

PROJECT=Amlogic-ce DEVICE=Amlogic-ng ARCH=aarch64 make image
ls /opt/CoreELEC/image -alh
tree

