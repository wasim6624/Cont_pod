#!/bin/zsh
usernames=("USR2" "USR4")
for usernames in "${usernames[@]}"; 
	do sudo useradd -M -N -G D10324 "$usernames"
	   echo "786" | sudo passwd --stdin "$usernames"
done
