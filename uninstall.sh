#!/bin/bash
echo "Uninstaller script process started."
sudo docker stop my-kali-linux
sudo docker rm my-kali-linux
sudo docker rmi kalilinux/kali-rolling
echo "Uninstalled complate."
