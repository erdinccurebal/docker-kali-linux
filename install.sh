#!/bin/bash
echo "Installer script process started."
sudo docker run -w /root -v "$(pwd)"/files:/root/files --name my-kali-linux -t -d kalilinux/kali-rolling
sudo docker exec -it my-kali-linux apt update
sudo docker exec -it my-kali-linux apt dist-upgrade -y
sudo docker exec -it my-kali-linux apt upgrade -y
sudo docker exec -it my-kali-linux apt install kali-tools-top10 -y
sudo docker exec -it my-kali-linux apt autoremove -y
sudo docker exec -it my-kali-linux apt clean
sudo docker exec -it my-kali-linux apt autoclean
sudo docker exec -it my-kali-linux touch ./files/hello-world
sudo docker exec -t -i my-kali-linux bash
echo "Installed complated."
