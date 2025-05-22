# Terminal Network Toolkit

A simple Bash-based network toolkit for Termux and Linux systems.

## Features

- Show Public IP
- Show Local IPs
- Ping a Host
- License Info (Apache 2.0)

## Usage
## How to Run in Termux

Follow these steps to run the script in Termux on Android:

1. Open the **Termux** app.
2. Navigate to the folder where you saved the script.  
   For example, if it's in your Downloads folder:

## How to Run in Termux

Follow these steps to run the script in Termux on Android:

1. Open the **Termux** app.
2. Navigate to the folder where you saved the script.  
   For example, if it's in your Downloads folder:

   
   cd /sdcard/Download

   ## give the script permission to run :
   chmod +x terminal_toolkit.sh
   ## run the script
   ./terminal_toolkit.sh

## Note for Android Users (Termux)

If you downloaded the terminal_toolkit.sh file to your phone's internal storage (e.g., Download folder) and you see the error:

bash: ./terminal_toolkit.sh: Permission denied

This happens because Android does not allow executing scripts directly from /sdcard.

To fix this, simply copy the script to Termux's home directory and run it:

cp /sdcard/Download/terminal_toolkit.sh ~/
cd ~
chmod +x terminal_toolkit.sh
./terminal_toolkit.sh

Now the script will run without any issues.
make by ali sarbalavand
