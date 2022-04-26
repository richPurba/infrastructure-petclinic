#!/bin/sh

USER=vagrant
PASSWORD=vagrant

# wget https://releases.hashicorp.com/packer/1.3.4/packer_1.3.4_linux_amd64.zip
# unzip packer_1.3.4_linux_amd64.zip -d /tmp/packer
# sudo mv /tmp/packer/packer /usr/local/
# export PATH="$PATH:/usr/local/packer"
# source /etc/environment

# add addresses to /etc/hosts 
echo "192.168.99.156 ansible.sample.com" | sudo tee -a /etc/hosts 

rm -f /etc/ansible/hosts
echo " " | sudo tee -a /etc/ansible/hosts
echo "[all]" | sudo tee -a /etc/ansible/hosts
echo "gitlab.sample.com" | sudo tee -a /etc/ansible/hosts 
echo "jenkins.sample.com" | sudo tee -a /etc/ansible/hosts 
echo "docker.sample.com" | sudo tee -a /etc/ansible/hosts 
echo "nfsclient.sample.com" | sudo tee -a /etc/ansible/hosts
echo "nfsserver.sample.com" | sudo tee -a /etc/ansible/hosts  
echo "other.sample.com" | sudo tee -a /etc/ansible/hosts  

echo " " | sudo tee -a /etc/ansible/hosts
echo "[test]" | sudo tee -a /etc/ansible/hosts
echo "nfsserver.sample.com" | sudo tee -a /etc/ansible/hosts
echo "nfsclient.sample.com" | sudo tee -a /etc/ansible/hosts

echo " " | sudo tee -a /etc/ansible/hosts
echo "[nfs-server]" | sudo tee -a /etc/ansible/hosts
echo "nfsserver.sample.com" | sudo tee -a /etc/ansible/hosts

echo " " | sudo tee -a /etc/ansible/hosts
echo "[nfs-clients]" | sudo tee -a /etc/ansible/hosts
echo "nfsclient.sample.com" | sudo tee -a /etc/ansible/hosts


echo " " | sudo tee -a /etc/ansible/hosts
echo "[jenkins]" | sudo tee -a /etc/ansible/hosts
echo "jenkins.sample.com" | sudo tee -a /etc/ansible/hosts

echo " " | sudo tee -a /etc/ansible/hosts
echo "[docker]" | sudo tee -a /etc/ansible/hosts
echo "docker.sample.com" | sudo tee -a /etc/ansible/hosts

echo " " | sudo tee -a /etc/ansible/hosts
echo "[gitlab]" | sudo tee -a /etc/ansible/hosts
echo "gitlab.sample.com" | sudo tee -a /etc/ansible/hosts

echo " " | sudo tee -a /etc/ansible/hosts
echo "[other]" | sudo tee -a /etc/ansible/hosts
echo "other.sample.com" | sudo tee -a /etc/ansible/hosts

#cat /etc/ansible/hosts
dos2unix ~/artefacts/scripts/ssh_pass.sh
chmod +x ~/artefacts/scripts/ssh_pass.sh
#chown vagrant:vagrant ssh_pass.sh 

# password less authentication using expect scripting language
~/artefacts/scripts/ssh_pass.sh $USER $PASSWORD "other.sample.com" 
