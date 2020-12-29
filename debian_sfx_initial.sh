echo "Initial setup"
sudo apt install p7zip-full -y
mkdir /tmp/build
mkdir /tmp/package
cd /tmp/build/
wget "https://www.7-zip.org/a/lzma1900.7z"
7z x lzma1900.7z
