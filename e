sudo mkdir -p /var/log/cowrie

sudo chown -R nam:nam /var/log/cowrie
sudo chmod -R 755 /var/log/cowrie

sudo touch /var/log/cowrie/cowrie.log
sudo chown nam:nam /var/log/cowrie/cowrie.log
sudo chmod 644 /var/log/cowrie/cowrie.log



host_key_paths = /var/lib/cowrie/ssh_host_rsa_key,/var/lib/cowrie/ssh_host_dsa_key


network:
  version: 2
  renderer: NetworkManager
  ethernets:
    ens33:
      dhcp4: no
      addresses:
        - 192.168.1.120/24
      routes:
        - to: default
          via: 192.168.1.1
          metric: 100
    ens37:
      dhcp4: no
      addresses:
        - 192.168.2.1/24


        sudo nmcli con add type ethernet ifname ens33 con-name ens33 ipv4.addresses 192.168.1.120/24 ipv4.method manual
sudo nmcli con add type ethernet ifname ens37 con-name ens37 ipv4.addresses 192.168.2.1/24 ipv4.method manual
sudo nmcli con up ens33
sudo nmcli con up ens37
