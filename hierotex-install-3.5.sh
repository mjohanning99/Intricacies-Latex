#!/bin/sh
# Script to download and install HieroTeX on a Debian computer.
# Use at your own risk.
#
# Some packages you should install first:
# 	apt-get install texlive make gcc

# Get and extract the files
wget -c "http://webperso.iut.univ-paris8.fr/~rosmord/archives/HieroTeX-3.5.tgz" && \
tar xvzf "HieroTeX-3.5.tgz" && \
cd HieroTeX && \
wget -c "http://webperso.iut.univ-paris8.fr/~rosmord/archives/HieroType1-3.1.4.tgz" && \
tar xvzf "HieroType1-3.1.4.tgz"

# Patch variable.mk to install for the whole system
wget http://mike.bitrevision.com/blog/files/variable.patch && \
patch variable.mk < variable.patch

# Run the installer
sudo make tetex-install

