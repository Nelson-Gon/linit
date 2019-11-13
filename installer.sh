# This will make a few changes to a newly installed GNU/Linux system
# This has been tested on a Debian based distro(Ubuntu 18.04.3)
# It uses (the) bash
# Most commands are written line by line to enable easy commenting out of
# whatever a user doesn't need
# Feel free to edit and add whatever you like
#!/bin/bash

# Get updates
update_system () {
sudo apt update && sudo apt upgrade -y

}
add_ppas () {
# add a few useful repositories
# Boot-repair, things will go wrong and you'll need this at some point
sudo add-apt-repository -y ppa:yannubuntu/boot-repair && yes | sudo apt update
sudo add-apt-repository -y ppa:noobslab/macbuntu && yes | sudo apt update
sudo add-apt-repository -y  'deb https://dl.winehq.org/wine-builds/ubuntu/ bionic main' && yes | sudo apt update
}
install_tweakers () {

sudo apt install -y  boot-repair ubuntu-restricted-extras unity-tweak-tool gnome-tweak-tool gnome-shell vlc tlp tlp-rdw caffeine plank macbuntu-os-icons-v1804 macbuntu-os-ithemes-v1804 macbuntu-os-plank-theme-v1804 vim
# choose themes with tweak tool.
}
install_browsers (){
sudo apt install -y firefox
# Add Chrome
pushd ~/Downloads
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
rm . *.deb
popd
}
start_programs () {

sudo tlp start
sudo ufw enable
}

install_rpy () {
sudo apt install -y snapd
yes | sudo snap install pycharm-community --classic
# install R and RStudio(1.2.1335)

sudo apt install -y r-base
# install rstudio 1.2.1335
sudo apt  install -y libx11-dev libxt-dev
wget https://download1.rstudio.org/desktop/bionic/amd64/rstudio-1.2.1335-amd64.deb
yes | sudo dpkg -i rstudio-1.2.1335-amd64.deb
rm rstudio*.deb
# install pip3 and popular libraries(for ML enthusiasts)
sudo apt install -y python3-pip
sudo pip3 install --upgrade pip
sudo pip3 install jupyter pandas matplotlib sklearn scipy numpy requests seaborn
}
install_pdf_related () {
# Not related to pdf but put here
sudo apt install -y openssh openssl
sudo apt install -y mupdf evince gimp okular texlive-latex-recommended
# install pandoc
# 2.7.3 at the time of writing
wget https://github.com/jgm/pandoc/releases/download/2.7.3/pandoc-2.7.3-1-amd64.deb
yes | sudo dpkg -i pandoc*
rm pandoc*.deb
}
misc_install () {
sudo apt -y install --install-recommends winehq-stable
sudo apt install -y screenfetch neofetch rsync
sudo dpkg --configure --all
}
# Removes any old versions of docker
remove_old_docker() {

if  [ -x "$(command -v docker)" ]; then
       yes | sudo apt --remove docker.engine docker.io
fi

}
install_docker () {
    sudo apt install -y docker.io
    # start and run docker
    yes | sudo systemctl start docker
    yes | sudo systemctl enable docker
}
update_system
add_ppas
install_tweakers
install_browsers
install_rpy
install_pdf_related
misc_install
remove_old_docker
install_docker
start_programs
# Fancy exit
echo -e "\e[1;43m Thank you for using the installer \e[0m"









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
# set default to vim
# sudo update-alternatives --config editor
# edit grub
#vim /etc/default/grub
# add image, acpi, quiet splash, timeout
# set aliases
# sudo vim ~/.bashrc
# edit sudoers list
# sudo /usr/sbin/visudo
# proceed as you wish
