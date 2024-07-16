cd ~
echo '[Credentials]
language = CH' > .ossutilconfig

echo endpoint=$endpoint>>.ossutilconfig
echo accessKeyID=$accessKeyID>>.ossutilconfig
echo accessKeySecret=$accessKeySecret>>.ossutilconfig

wget http://gosspublic.alicdn.com/ossutil/1.7.1/ossutil64 -O ossutil
chmod +x ossutil
mv ossutil /usr/bin/ossutil
# ossutil config --config-file=/root/config

ossutil cp -r /root/ceremonyclient/node/.config oss://xin-run/$remote_addr
