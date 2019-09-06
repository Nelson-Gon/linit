# linit
## Utilities for a freshly installed Linux System

This repository provides a seamless way to install many of the commonly used programs/scripts.


**What the installer does**

These are stored in `installer.sh` which does the following:

1. Updates and Upgrades the system
2. Installs boot-repair in preparation for when things might break
3. Installs extra drivers
4. Installs `gnome-tweak-tool` and `unity-tweak-tool`
5. Installs Mac-OS like themes to make your Ubuntu/distro look like a Mac
6. Installs `tlp` which is a battery saver.
7. Installs `caffeine`. if you're a movie fan, you'll surely need this.
8. Installs `R`, `RStudio`, `python3`,`pip3`,`pandas`,`matplotlib`,`seaborn`,`sklearn`,`scipy`,`numpy`
9. Installs the `plank` dock.
10. Installs `pandoc`, `texlive`,`mupdf`,`evince`, `gimp`
11. Installs `Firefox`, `wine`


**How to use the installer**
```
cd ~/Desktop
git clone https://github.com/Nelson-Gon/linit.git
cd linit
bash installer.sh
# enter root password once prompted
# That's it

```

Please provide feedback, add additional tweaks and/or raise issues.

> Free as in Freedom.
