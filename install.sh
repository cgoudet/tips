sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get autoremove --purge pidgin sylpheed parole -y

sudo apt-get install -y \
python3-pip python3-dev postgresql \
docker.io docker-compose \
emacs vlc terminator youtube-dl \
nautilus-dropbox owncloud-client keepassx jabref zim \
build-essential git virtualbox virtualenv 

# for porblem with owncloud
sudo apt install libgnome-keyring0 -y

# library for pyodbc
sudo apt-get install unixodbc-dev -y

# install visualstudio code
sudo dpkg -i *.deb
sudo apt-get install -f

bash install_vscode_extensions.sh
cp settings.json keybindings.json ~/.config/Code/User/.

# Cisco
# sudo apt-get install lib32z1 lib32ncurses5 libpangox-1.0-0 network-manager-openconnect network-manager-pptp network-manager-vpnc network-manager-openvpn

# tesseract for ocr
# sudo apt-get install -y tesseract-ocr tesseract-ocr-fra
# Add <policy domain="coder" rights="read" pattern="PDF" />
# to /etc/ImageMagick-6/policy.xml

# authorise non root users to run docker
sudo usermod -aG docker $(whoami)

sudo apt-get install libdvd-pkg -y
sudo dpkg-reconfigure libdvd-pkg

cp .bash_aliases .gitconfig ~/.
source ~/.bashrc
