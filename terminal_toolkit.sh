#!/bin/bash
#
# Terminal Network Toolkit
# Created by ali sarbalavand
# Licensed under the Apache License, Version 2.0
# See: https://www.apache.org/licenses/LICENSE-2.0.txt
#

AUTHOR="Created by ali sarbalavand"

# نمایش بنر
function show_banner() {
  echo -e "\e[1;36m"
  echo "████████╗███████╗██████╗ ███╗   ███╗██╗██╗     "
  echo "╚══██╔══╝██╔════╝██╔══██╗████╗ ████║██║██║     "
  echo "   ██║   █████╗  ██████╔╝██╔████╔██║██║██║     "
  echo "   ██║   ██╔══╝  ██╔═══╝ ██║╚██╔╝██║██║██║     "
  echo "   ██║   ███████╗██║     ██║ ╚═╝ ██║██║███████╗"
  echo "   ╚═╝   ╚══════╝╚═╝     ╚═╝     ╚═╝╚═╝╚══════╝"
  echo -e "\e[0m"
  echo "        Terminal Network Toolkit by ali sarbalavand"
  echo "==================================================="
}

while true; do
  clear
  show_banner
  echo "$AUTHOR"
  echo "=============================="
  echo "1) Show Public IP"
  echo "2) Show Local IP"
  echo "3) Ping a Host"
  echo "4) Exit"
  echo "5) About / License"
  echo "=============================="
  read -p "Choose an option: " option

  case $option in
    1)
      echo -e "\n[Your Public IP]:"
      curl -s https://api.ipify.org
      echo -e "\n"
      read -p "Press Enter to continue..."
      ;;
    2)
      echo -e "\n[Your Local IPs]:"
      ip addr show | grep 'inet ' | grep -v '127.0.0.1' | awk '{print $2}'
      echo -e "\n"
      read -p "Press Enter to continue..."
      ;;
    3)
      read -p "Enter host to ping (e.g. google.com): " host
      echo -e "\n[Pinging $host...]\n"
      ping -c 4 $host
      echo -e "\n"
      read -p "Press Enter to continue..."
      ;;
    4)
      echo "Exiting..."
      exit 0
      ;;
    5)
      echo -e "\n===== ABOUT / LICENSE ====="
      echo "Terminal Network Toolkit"
      echo "Created by ali sarbalavand"
      echo "Licensed under the Apache License, Version 2.0"
      echo "See: https://www.apache.org/licenses/LICENSE-2.0.txt"
      echo "============================="
      read -p "Press Enter to return..."
      ;;
    *)
      echo "Invalid option!"
      sleep 1
      ;;
  esac
done
