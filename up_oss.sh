cd ~
echo '[Credentials]
language = CH
endpoint = http://oss-ap-northeast-1.aliyuncs.com
accessKeyID = YourAccessKeyIDHere
accessKeySecret = YourAccessKeySecretHere' > config.conf


wget http://gosspublic.alicdn.com/ossutil/1.7.1/ossutil64 -O ossutil
chmod +x ossutil
mv ossutil /usr/bin/ossutil
ossutil config --config-file=/root/config.conf

ossutil cp -r /root/ceremonyclient/node/.config oss://xin-run/$remote_addr
