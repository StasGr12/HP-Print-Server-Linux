# HP-Print-Server-Linux
Bash script that setups CUPS(with wireless printing support) print server with HP Printer (USB) on Ubuntu/Debian
| Tested Devices | OS | Printer |
|---|---|---|
| Raspberry Pi 5 | Ubuntu Server 25.04 | HP Color LaserJet CP2025n |

# How to use
1. Before using this script please check if your printer is supported at this website:
https://developers.hp.com/hp-linux-imaging-and-printing/supported_devices/index
2. Connect your printer via USB
3. Run the script using these commands
#
     wget https://raw.githubusercontent.com/StasGr12/HP-Print-Server-Linux/refs/heads/main/setup.sh
     chmod +x setup.sh
     ./setup.sh
#
4. Enjoy wireless printing from all of your devices
