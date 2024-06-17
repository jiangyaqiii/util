echo "================清除缓存执行过程================"
echo ""
echo "清除缓存"
sudo rm -rf /var/log/*
sudo rm -rf /tmp/*
sudo apt-get remove --purge $(dpkg --get-selections l grep -v deinstall |grep -v "linux-image" |awk '{print $1}')
sudo apt-get -y autoremove
sudo apt-get -y clean
cp -r /etc/skel/. /root/
sudo rm -rf /etc/network/interfaces
sudo cp /etc/network/interfaces.dpkg-dist /etc/network/interfaces
sudo update-grub
# ================================================================================================================================
echo ""
echo "修复完成，机器自动重启"
sudo reboot
