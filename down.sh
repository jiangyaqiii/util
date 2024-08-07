cd ~
file=".ossutilconfig"

# 执行操作A的命令，比如：
echo '[Credentials]
language = CH' > .ossutilconfig
echo endpoint=$endpoint>>.ossutilconfig
echo accessKeyID=$accessKeyID>>.ossutilconfig
echo accessKeySecret=$accessKeySecret>>.ossutilconfig

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
# read -p "请输入设备号: " bot_id
echo '$endpoint'
echo '$accessKeyID'
echo '$accessKeySecret'
echo 'oss://xin-run/$path/$file_name'
ossutil cp -r  oss://xin-run/$path/$file_name /root/ceremonyclient/node/
mv /root/ceremonyclient/node/$file_name /root/ceremonyclient/node/.config
rm -f down.sh
# rm -rf /root/test/.config
# # read -p "请输入设备号: " bot_id
# ossutil cp -r  oss://xin-run/together/$file_name /root/test/
# mv /root/test/$file_name /root/test/.config

