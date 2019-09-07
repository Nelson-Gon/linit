# linit
## Utilities for a freshly installed Linux System

This repository provides a seamless way to install many of the commonly used programs/scripts.

It has been tested on an Ubuntu system and might therefore fail to run on a non Debian based distribution. In addition, some of these programs are based on amd64 architecture and might therefore not work on a 32-bit system.

The script will run for sometime for a fresh installation depending on the network speed and/or hardware. 


**What the installer does**

These are stored in `installer.sh` which does the following:

1. Updates and Upgrades the system
2. Installs boot-repair in preparation for when things might break
3. Installs extra drivers
4. Installs `gnome-tweak-tool` and `unity-tweak-tool`
5. Installs Mac-OS like themes to make your Ubuntu/distro look like a Mac
6. Installs `tlp` which is a battery saver.
7. Installs `caffeine`. if you're a movie fan, you'll surely need this.
8. Installs `R`, `RStudio`, `python3`(**Python 3.7.4** at the time of writing),`pip3`,`pandas`,`matplotlib`,`seaborn`,`sklearn`,`scipy`,`numpy`
9. Installs the `plank` dock.
10. Installs `pandoc`, `texlive`,`mupdf`,`evince`, `gimp`
11. Installs `Firefox`, `wine`
12. Installs `openssh`, `openssl`
13. You can uncomment some lines to edit such files as the `grub` file, `sudoers` list and/or `.bashrc`. 


**How to use the installer**
```
# You can choose a different directoy(Downloads for instance)
cd ~/Desktop
# if you do not have git installed, first run the next line
# or download the raw installer.sh script with wget/curl/ your favorite tool
#sudo apt install --y git
# clone the repo or do as earlier stated(download raw file)
git clone https://github.com/Nelson-Gon/linit.git
cd linit
bash installer.sh
# enter root password once prompted
# That's it

```

Please provide feedback, add additional tweaks and/or raise issues.

> Free as in Freedom.
