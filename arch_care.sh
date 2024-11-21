#!/bin/bash

cat << "EOF"
░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░__░░░░░░░░░░░░░░__░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

░░░░░░░░░░░░░░░░░░░░░░░░░░░░░▄▀▀▀▀█▄░░  : ░░ ▄▀▀▀▀█▄░░░░░░░░░░░░░░░░░░░░░░░░░░░░

░░░░░░░░░░░░░░░░░░░░░░░░░░░░█─▄▄█▄_█∩ ▄▄█▄_ █∩▄▄█▄_█ ░░░░░░░░░░░░░░░░░░░░░░░░░░░

░░░░░░░░░░░░░░░░░░░░░░░░░░▄,▀█_▐▀ ▄▀   "▀   ╙█_▐▀ ▄▀ ▄_░░░░░░░░░░░░░░░░░░░░░░░░░

░░░░░░░░░░░░░░░░░░░░░░░░░██  .▀▀▀▀`           ▀▀▀▀└  ██ ░░░░░░░░░░░░░░░░░░░░░░░░

░░░░░░░░░░░░░░░░░░░░░░░░▐█,          _______          █▌  ░░░░░░░░░░░░░░░░░░░░░░

░░░░░░░░░░░░░░░░░░░░░░░ ██      _╓╗▒▒▒▒▒▒▒▒▒▒▒µ_      ██     ░░░░░░░░░░░░░░░░░░░

░░░░░░░░░░░░░░░░░░░░    ██    ╓N▒Ñ╜ ___╓╓╓__ "╚▒▒N_   ▐█     ░░░░░░░░░░░░░░░░░░░

░░░░░░░░░░░░░░░░░░░░    ▀▀ _@▒Å"_╓@@▒▒▒▒▒▒▒▒▒@µ_`╚▒@µ `▀      ░░░░░░░░░░░░░░░░░░

▒░░░░░░░░░░░░╔µ░░░░░    _▄╣╣╜ ╓@╣▓╝╜` _____`╙╝▓╣▓w_╙╣▒@µ_      ░░░╔░░░░░░░░░░░░░

░░░░░░░░░░░░░░╙╣@@@@@@▓╣▀╜ ,▄▓▓╜ ,▄▓▓▓▓▓▓▓▓▓▓▓▄_╙▓▓▓µ_╙╝▓▓@@@@@@Ñ╨░░░░░░░░░░░░░░

░░░░░░░░░░░░░▀▓▄µ;└└└;;╓▄▓▓▓▀`╓▄█▓▀╜'       "▀█▓▓▄_╙▓▓▓▄▄,,└└;;╓▄@▓░░░░░░░░░░░░░

▒░░░░░░░░░░░░▄,╙▀▀▓▓▓▓▓▀▀╙,▄▄██▀└,▄▄,__  __,▄▄, ▀██▓▄;╙▀▀▓▓▓▓▓▀▀╙;▄░░░░░░░░░░░░░

░░░░░░░░░░░░░░▀█▓▄▄▄▄▄▄▄████▀└    .▀▀▀▀▀▀▀▀▀▀└     ▀▀███▄▄▄▄▄▄▄██▀▀░░░░░░░░░░░░░

▒░░░░░░░░░░░░░░░.╙▀▀▀▀▀▀└_                             └▀▀▀▀▀▀└,░░░░░░░░░░░░░░░░

▒░░░░░░░░░░░░░░░░░░░                                         ░░░░░░░░░░░░░░░░░░░

░░░░░░░░░░░░░░░╓█¿░░░▄▄▄▄¿  J▄▓▄▄  ▄  ╒▄  ,▄▓▄▄   ▄▄    ▄▄▄▄  ▐███▌░░░░░░░░░░░░░

▒░░░░░░░░░░░░░)█░█¿░░█▌▄▄▌ J█      █▄▄██  █      J█▐█   █▄▄█▌░▐█▄▄m░░░░░░░░░░░░░

░░░░░░░░░░░░░░█▀▀▀█_░█▌`█▄░░▀█▄▄M  █  ▐█  ▀█▄▄M ▄█▀▀▀█ ░█▀▀█▄░▐█▄▄▄░░░░░░░░░░░░░

▒░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░ ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
EOF

echo
echo "Arch Care is a powerful, all-in-one maintenance script that optimizes your Arch Linux system with just a few clicks, 
from updating packages to clearing caches and removing redundant files. Designed for simplicity and efficiency, 
it saves you time and hassle, keeping your system lean, clean, and running at peak performance. 
Arch Care makes Arch Linux accessible for newcomers by simplifying essential maintenance tasks, 
while providing the efficiency that power users crave, making system management effortless for all skill levels.
Begin by enabling/disabling sudo timeout, then make selection(s), finally press CTRL + C to exit!"
sleep 15s
echo

#Extends the timeout for sudo.
read -p "Enable sudo -v to allow commands to run w/out re-entering your password for 5 minutes? (y/n): " time_extension
if [[ "$time_extension" == "y" || "$time_extension" == "Y" ]];
then
	sudo -v
	echo
	echo "You will not have to enter your password for 5 minutes."
fi
echo
sleep 5s

while true; do
# User menu w/options.
	echo "select an option: "
	echo
	echo "1) Check for errors in the systemd bootloader."
	echo "2) Check for errors in /var/log & systemd journal, since last boot."
	echo "3) Full system upgrade."
	echo "4) Update yay package list."
	echo "5) Delete cached packages in pacman."
	echo "6) Remove uneccessary packages from yay."
	echo "7) Remove orphaned packages."
	echo "8) Display size of .cache directory."
	echo "9) Delete contents of .cache/"
	echo "10) Diplay size of .config directory."
	echo "11) Display size of journal log file."
	echo "12) Clear entries from the journal log file."
	echo "13) Check for orphaned packages."
	echo "14) Clear command history."
	echo "15) All options (can be dangerous!)."
	

# Prompt user for choice.
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
	7) sudo yay -Yc ;;
	8) sudo pacman -Rns $(pacman -Qtdq) ;;
	9) sudo du -sh "$HOME/.cache/" ;;
	10) rm -rf .cache/* ;;
	11) sudo du -sh .config/ ;;
	12) sudo du -sh /var/log/journal ;;
	13) sudo pacman -Qtd ;;
	14) sudo history -c;;
	15) 
	# Executes all commands
	read -p "This will: remove cached packages from pacman/yay, remove unnecessary packages from yay, delete orphaned packages, 
clear the contents of the .cache directory, and remove entries from the journal log file. Would you like to run all commands?" x_all_commands
	if [[ "$x_all_commands" == "y" || "$x_all_commands" == "Y" ]]; then
	sudo systemctl --failed || echo "Error: Failed to check systemd status."
	journalctl -b
	sudo pacman -Syu
	sudo yay -Syu
	sudo pacman -Sc
	sudo yay -Sc
	sudo yay -Yc # Removes unnecessary packages from yay
	sudo pacman -Rns $(pacman -Qtdq) # Removes orphaned packages
	sudo du -sh "$HOME/.cache/"
	sudo du -sh "$HOME/.config/"
	sudo du -sh /var/log/journal
	sudo journalctl --vacuum-time=2weeks # Clear entries from journal
	sudo pacman -Qtd
	echo "All commands have been run! System optimized."
	fi
	;;
	*) echo "Invalid option. Please enter a valid choice";;
	esac
done
