sudo docker build . -t ec-kali-linux
sudo docker run -it -v "$(pwd)/os-files":/root/files --name my-kali-linux ec-kali-linux
