ls -alh /
sudo mkdir -m 777 -p /opt/EmuELEC
if [ ! -d /opt/EmuELEC ];then
  echo 目录创建失败:/opt/EmuELEC
  exit 1
fi

cd /opt/EmuELEC
git clone https://github.com/CoreELEC/CoreELEC.git
cd CoreELEC
git checkout dev
PROJECT=Amlogic-ce DEVICE=Amlogic-ng ARCH=aarch64 DISTRO=EmuELEC make image
tree
ls -alh
