
cd /opt/
git clone https://github.com/CoreELEC/CoreELEC.git
cd CoreELEC
sed -i /s/rsync, //g  packages/addons/tools/network-tools/package.mk
sed -i /s/rsync \\//g  packages/addons/tools/network-tools/package.mk
echo ${TARGET_IMG}
env
#
PROJECT=Amlogic-ce DEVICE=Amlogic-ng ARCH=aarch64    make image
ls /opt/CoreELEC/image -alh
tree

