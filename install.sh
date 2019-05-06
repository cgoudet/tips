sudo add-apt-repository ppa:webupd8team/atom
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get autoremove --purge pidgin sylpheed parole -y

sudo apt-get install -y \
python3-pip python3-dev \
docker.io docker-compose \
emacs vlc terminator youtube-dl \
owncloud-client keepassx jabref atom \
build-essential git virtualbox virtualenv

# for porblem with owncloud
sudo apt install libgnome-keyring0 -y

# library for pyodbc
sudo apt-get install unixodbc-dev -y

# tesseract for ocr
# sudo apt-get install -y tesseract-ocr tesseract-ocr-fra
# Add <policy domain="coder" rights="read" pattern="PDF" />
# to /etc/ImageMagick-6/policy.xml

# authorise non root users to run docker
sudo usermod -aG docker $(whoami)

sudo apt-get install libdvd-pkg -y
sudo dpkg-reconfigure libdvd-pkg

cp -v .bash_aliases .gitconfig ~/.

# atom librairies
apm install markdown-writer language-markdown markdown-preview-enhanced \
remote-edit-ni markdown-table-editor atom-material-syntax autocomplete-python \
atom-file-icons linter-flake8 minimap python-autopep8 script

pip3 install autopep8
