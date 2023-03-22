cd /opt/
git clone https://github.com/CoreELEC/CoreELEC.git
cd CoreELEC
sed -i 's/rsync,//g'  packages/addons/tools/network-tools/package.mk
sed -i 's/rsync \\//g'  packages/addons/tools/network-tools/package.mk
sed -i 's/rsync//g'  packages/virtual/network/package.mk
sed -i 's/rsync:host//g' packages/linux/package.mk
sed -i 's/rsync:host//g' projects/Amlogic-ce/packages/linux/package.mk
sed -i 's/rsync:host//g' projects/Amlogic-ce/devices/Amlogic-ne/packages/linux/package.mk
sed -i 's/RTL8821CU//g' projects/Amlogic-ce/devices/Amlogic-ng/options
sed -i 's/inject_bl301//g' distributions/CoreELEC/options
echo ${TARGET_IMG}
env
#
PROJECT=Amlogic-ce DEVICE=Amlogic-ng ARCH=aarch64    make image
ls /opt/CoreELEC/image -alh
#tree 
