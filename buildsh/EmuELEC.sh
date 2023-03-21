
cd /opt/
git clone https://github.com/CoreELEC/CoreELEC.git
cd CoreELEC
#DEVICE=Amlogic-ng ARCH=aarch64 
PROJECT=Amlogic-ce make image
ls /opt/CoreELEC/image -alh
tree

