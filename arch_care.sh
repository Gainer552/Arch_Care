#!/bin/bash

echo
echo "Arch Care is a powerful, all-in-one maintenance script that optimizes your Arch Linux system with just a few clicks, from updating packages to clearing caches and removing redundant files. Designed for simplicity and efficiency, it saves you time and hassle, keeping your system lean, clean, and running at peak performance. Arch Care makes Arch Linux accessible for newcomers by simplifying essential maintenance tasks, while providing the efficiency that power users crave, making system management effortless for all skill levels. Begin by enabling/disabling sudo timeout, then make selection(s).

Press CTRL + C to exit!"

sleep 15s

#Extends the timeout for sudo.
echo
read -p "Enable sudo -v to allow commands to run w/out re-entering your password for 5 minutes? (y/n): " time_extension
if [[ "$time_extension" == "y" || "$time_extension" == "Y" ]];
then
	sudo -v
	echo
	echo "You will not have to enter your password for 5 minutes."
fi

sleep 5s

while true; do
# User menu w/options.
	echo
	echo "select an option: "
	echo
	echo "1) Check for errors in the systemd bootloader."
	echo "2) Check for errors in /var/log & systemd journal, since last boot."
	echo "3) Full system upgrade."
	echo "4) Update yay package list."
	echo "5) Delete cached packages in pacman."
	echo "6) Remove uneccessary packages from yay."
	echo "7) Check for orphaned packages."
	echo "8) Remove redundant packages from Yay."
	echo "9) Display size of .cache directory."
	echo "10) Delete contents of .cache/"
	echo "11) Diplay size of .config directory."
	echo "12) Display size of journal log file."
	echo "13) Clear entries from the journal log file."
	echo "14) Clear command history."
	echo "15) All options (can be dangerous!)."

# Prompt user for choice.
	echo
	read -p "Make a selection: " choice
	echo

# Commands
case $choice in
	1) sudo systemctl --failed || echo "Error: Failed to check systemd status." ;;
	2) journalctl -b ;;
	3) sudo pacman -Syu ;;
	4) sudo yay -Syu ;;
	5) sudo pacman -Sc ;;
	6) sudo yay -Sc ;;
	7) sudo pacman -Qtd ;;
	8) sudo yay -Yc ;;
	9) sudo du -sh ~/.cache ;;
	10) rm -rf .cache/*
	echo "Contents deleted!" ;;
	11) du -sh ~/.config ;;
	12) sudo du -sh /var/log/journal ;;
	13) sudo journalctl --rotate
		sudo journalctl --vacuum-time=1s ;;
	14) history -c ;;
	esac
done
