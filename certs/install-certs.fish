#!/usr/bin/fish

apt install -y ca-certificates
sudo mkdir /usr/local/share/ca-certificates/russian-trusted
cp ./russian_trusted_root_ca_pem.crt /usr/local/share/ca-certificates/russian-trusted
cp ./russian_trusted_sub_ca_2024_pem.crt /usr/local/share/ca-certificates/russian-trusted
cp ./russian_trusted_sub_ca_pem.crt /usr/local/share/ca-certificates/russian-trusted
update-ca-certificates -v
trust list | grep Russian
