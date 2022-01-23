#!/bin/bash
echo "Installer script process started."
sudo docker build . -t ec-kali-linux
sudo docker run -t -d -v "$(pwd)/os-files":/root/files --name my-kali-linux ec-kali-linux 
sudo docker exec -it my-kali-linux apt install kali-tools-top10 -y
sudo docker exec -t -i my-kali-linux bash
echo "Installed complated."
