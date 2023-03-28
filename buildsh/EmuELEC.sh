sudo apt install build-essential
cd /opt/
git clone https://github.com/CoreELEC/CoreELEC.git
git checkout coreelec-20
cd CoreELEC
sed -i 's/rsync,//g'  packages/addons/tools/network-tools/package.mk
sed -i 's/rsync \\//g'  packages/addons/tools/network-tools/package.mk
sed -i 's/rsync//g'  packages/virtual/network/package.mk
sed -i 's/rsync:host//g' packages/linux/package.mk
sed -i 's/rsync:host//g' projects/Amlogic-ce/packages/linux/package.mk
sed -i 's/rsync:host//g' projects/Amlogic-ce/devices/Amlogic-ne/packages/linux/package.mk
sed -i 's/RTL8821CU//g' projects/Amlogic-ce/devices/Amlogic-ng/options
sed -i 's/inject_bl301 ceemmc//g' distributions/CoreELEC/options
sed -i 's/nfs-utils//g' distributions/CoreELEC/options
echo ${TARGET_IMG}
env
#
PROJECT=Amlogic-ce DEVICE=Amlogic-ng  make image
ls /opt/CoreELEC/image -alh
echo 'target'
ls /opt/CoreELEC/target -alh
#tree 
