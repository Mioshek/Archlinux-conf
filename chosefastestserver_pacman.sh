#source https://wiki.archlinux.org/title/mirrors#Sorting_mirrors
echo -e "\e[0;31m    ___  ___    _                      _                _        \e[0m"
echo -e "\e[0;91m   |   \/   |  |_|            _____   | |              | |   _   \e[0m"
echo -e "\e[0;93m   | |\  /| |   _    _____   |  ___|  | |              | |  / /  \e[0m"
echo -e "\e[0;92m   | | \/ | |  | |  |  _  |  | |___   | |_       ___   | |_/ /   \e[0m"
echo -e "\e[0;36m   | |    | |  | |  | | | |  |____ |  |  _ \    / _ \  |  _ \    \e[0m"
echo -e "\e[0;34m   | |    | |  | |  | |_| |   ___| |  | | | |  |  __/  | | \ \   \e[0m"
echo -e "\e[0;35m   |_|    |_|  |_|  |_____|  |_____|  |_| |_|   \___|  |_|  \_\  \e[0m"
#updates everything
pacman -Syu
##make backup file
cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.backup
##Uncommenting every mirror (if needed uncomment sed line)
#sed -i 's/^#Server/Server/' /etc/pacman.d/mirrorlist.backup
##rank mirrors first the fastest
rankmirrors -n 6 /etc/pacman.d/mirrorlist.backup > /etc/pacman.d/mirrorlist
