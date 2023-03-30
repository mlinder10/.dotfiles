#!/bin/bash

UNAME=$(uname)
echo $UNAME
if [[ "$UNAME" == "Linux" ]];
then
		echo ""
else
		echo "uname does not equal Linux" >> linuxsetup.log
		exit 0

fi

mkdir -p ~/.TRASH
mv ~/.vimrc ~/.bup_vimrc
echo ".vimrc was changed to bup_vimrc" >> ../linuxsetup.log
cat ./etc/vimrc >> ~/.vimrc

echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc
