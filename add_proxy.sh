# 显示已添加的软件源
sudo apt-add-repository --list
# 移除该源
sudo add-apt-repository --remove ppa:hzwhuang/ss-qt5
# 清理已有的 apt 软件缓存，然后尝试更新软件包列表
sudo apt clean
sudo apt update
# 上述清理无语，采用这条，删除无效的 PPA 软件源
sudo add-apt-repository --remove ppa:hzwhuang/ss-qt5
# 只在当前终端生效
export http_proxy=http://c36812:38683@47.243.191.225:16801
# 将返回你的公共 IP 地址。如果代理配置正确，它将返回代理服务器的 IP 地址
curl http://ipinfo.io
