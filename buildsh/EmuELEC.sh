ls -alh /
sudo mkdir -m 777 -p /opt/EmuELEC
if [ ! -d /opt/EmuELEC ];then
  echo 目录创建失败:/opt/EmuELEC
  exit 1
fi
echo > /opt/EmuELEC/readme.txt
echo 开始编译时间 >> /opt/EmuELEC/readme.txt
TZ='Asia/Shanghai'  date  '+%Y-%m-%d %H:%M:%S' >> /opt/EmuELEC/readme.txt

cd /opt/EmuELEC
git clone https://github.com/EmuELEC/EmuELEC.git
cd EmuELEC
git checkout dev
PROJECT=Amlogic-ce DEVICE=Amlogic-ng ARCH=aarch64 DISTRO=EmuELEC make image
ls -alh
