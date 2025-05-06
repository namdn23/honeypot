sudo mkdir -p /var/log/cowrie

sudo chown -R nam:nam /var/log/cowrie
sudo chmod -R 755 /var/log/cowrie

sudo touch /var/log/cowrie/cowrie.log
sudo chown nam:nam /var/log/cowrie/cowrie.log
sudo chmod 644 /var/log/cowrie/cowrie.log



host_key_paths = /var/lib/cowrie/ssh_host_rsa_key,/var/lib/cowrie/ssh_host_dsa_key
