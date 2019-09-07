# This will make a few changes to a newly installed GNU/Linux system
# This has been tested on a Debian based distro(Ubuntu 18.04.3)
# It uses (the) bash
# Most commands are written line by line to enable easy commenting out of
# whatever a user doesn't need
# Feel free to edit and add whatever you like
#!/bin/bash

# Get updates
sudo apt update && sudo apt upgrade -y
# add a few useful repositories
# Boot-repair, things will go wrong and you'll need this at some point
sudo add-apt-repository ppa:yannubuntu/boot-repair && sudo apt update
sudo apt install -y  boot-repair
# Propietary drivers
sudo apt install -y ubuntu-restricted-extras
# install vlc
sudo apt install -y vlc
# tweak your dekstop
sudo apt install -y unity-tweak-tool
sudo apt install -y gnome-tweak-tool
# save some battery
sudo apt install -y tlp tlp-rdw
# start battery saver
sudo tlp start
# Install Caffeine and Caffeine Indicator
sudo apt install -y caffeine
# Get some cool themes
# Comment out whatever you don't need
# This will make Ubuntu look like a Mac
# If you don't have the gnome shell, uncomment the next line
# sudo apt install -y gnome-shell
# select lightgdm when prompted
# sudo apt update
# add repo for macbuntu themes
# noobslab, not so nooby
sudo add-apt-repository ppa:noobslab/macbuntu
sudo apt-update
sudo apt install -y macbuntu-os-icons-v1804
sudo apt install -y macbuntu-os-ithemes-v1804
# choose themes with tweak tool.
# get the plank dock
sudo apt install -y plank macbuntu-os-plank-theme-v1804
# install pycharm
sudo apt install -y snapd
sudo snap install pycharm-community --classic
# install r and rstudio
sudo apt install -y r-base
# install rstudio 1.2.1335
sudo apt  install -y libx11-dev libxt-dev
wget https://download1.rstudio.org/desktop/bionic/amd64/rstudio-1.2.1335-amd64.deb
sudo dpkg -i rstudio-1.2.1335-amd64.deb
rm rstudio*.deb
# install python
#sudo apt install -y build-essential checkinstall
#sudo apt install -y libreadline-gplv2-dev libcursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdm-dev sudo apt install -y libc6-dev libbz2-dev libffi-dev zlib1g-dev
#
# Download and compile from source
#cd /usr/src
# 3.7.4 at the time of writing
#sudo wget https://www.python.org/ftp/python/3.7.4/Python-3.7.4.tgz
#sudo tar -xzf Python-3.7.4
#cd Python-3.7.4
#sudo .\configure --enable-optimizations
## prevent removal of default python files
#sudo make altinstall
# remove leftover  files
#sudo rm /usr/src/Python-3.7.4.tgz


# install pip3 and popular libraries(for ML enthusiasts)
sudo apt install -y python3-pip
sudo pip3 install --upgrade pip
sudo pip3 install jupyter pandas matplotlib sklearn scipy numpy requests seaborn
# install vim, yaaay
sudo apt install  -y vim
# set default to vim
# sudo update-alternatives --config editor
# choose vim
# Enable Firewall
sudo ufw enable
# edit grub
#vim /etc/default/grub
# add image, acpi, quiet splash, timeout
# set aliases
# sudo vim ~/.bashrc
# edit sudoers list
# sudo /usr/sbin/visudo
# proceed as you wish
# install openssh
sudo apt install -y openssh openssl
# install mupdf/ okular
sudo apt install -y mupdf
# install tex
sudo apt install -y texlive-latex-recommended
# install pandoc
# 2.7.3 at the time of writing
wget https://github.com/jgm/pandoc/releases/download/2.7.3/pandoc-2.7.3-1-amd64.deb
sudo dpkg -i pandoc*
rm pandoc*.deb
# install gparted gimp evince
sudo apt install -y gimp
sudo apt install -y evince
# install firefox
sudo apt install -y firefox
# install wine
sudo add-apt-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ bionic main'
sudo apt update
sudo apt-get install --install-recommends winehq-stable
# install screenfetch and neofetch
sudo apt install -y screenfetch neofetch











