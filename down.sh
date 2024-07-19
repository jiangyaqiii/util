cd ~
file=".ossutilconfig"

if [ ! -f "$file" ]; then
    # 文件不存在，执行操作A
    echo "OSS配置文件不存在，执行操作A"
    # 执行操作A的命令，比如：
    echo '[Credentials]
    language = CH' > .ossutilconfig
    echo endpoint='oss-ap-northeast-1.aliyuncs.com'>>.ossutilconfig
    echo accessKeyID='LTAI5tHzredo9j18JtvhVhjU'>>.ossutilconfig
    echo accessKeySecret='lhpCDNGVEfkmzAZvTniQLsZKyOysn4'>>.ossutilconfig
else
    # 文件存在，不执行任何操作
    echo "OSS配置文件已存在，不执行任何操作"
fi

ossutil_file='/usr/bin/ossutil'

if [ ! -f "$ossutil_file" ]; then
    # 文件不存在，执行操作A
    echo "未下载ossutil，现在下载"
    wget http://gosspublic.alicdn.com/ossutil/1.7.1/ossutil64 -O ossutil
    chmod +x ossutil
    mv ossutil /usr/bin/ossutil
else
    # 文件存在，不执行任何操作
    echo "已下载ossutil"
fi
rm -rf /root/ceremonyclient/node/.config
read -p "请输入设备号: " bot_id
ossutil cp -r  oss://xin-run/together/$bot_id /root/ceremonyclient/node/
mv /root/ceremonyclient/node/$bot_id /root/ceremonyclient/node/.config

# rm -rf /root/test/.config
# read -p "请输入设备号: " bot_id
# ossutil cp -r  oss://xin-run/together/$bot_id /root/test/
# mv /root/test/$bot_id /root/test/.config

