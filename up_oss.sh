cd ~
echo '[Credentials]
language = CH' > config

echo endpoint=$endpoint>>config
echo accessKeyID=$accessKeyID>>config
echo accessKeySecret=$accessKeySecret>>config

wget http://gosspublic.alicdn.com/ossutil/1.7.1/ossutil64 -O ossutil
chmod +x ossutil
mv ossutil /usr/bin/ossutil
ossutil config --config-file=/root/config.conf

ossutil cp -r /root/ceremonyclient/node/.config oss://xin-run/$remote_addr
