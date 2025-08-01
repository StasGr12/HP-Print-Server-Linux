# HP-Print-Server-Linux

Bash script that sets up CUPS (with wireless printing support) print server with an HP Printer (USB) on Ubuntu/Debian.

| Tested Devices  | OS                   | Printer                  |
|-|-|-|
| Raspberry Pi 5  | Ubuntu Server 25.04  | HP Color LaserJet CP2025n |

## How to use

1. Before running the script, verify that your HP printer supports USB connectivity (look under **Connectivity → USB Network Parallel**) on the official HPLIP supported devices list:  
   https://developers.hp.com/hp-linux-imaging-and-printing/supported_devices/index

2. Connect your printer via USB to your machine.

3. Download and run the script using these commands:

```
wget https://raw.githubusercontent.com/StasGr12/HP-Print-Server-Linux/refs/heads/main/setup.sh
chmod +x setup.sh
./setup.sh
```
4. Enjoy wireless printing!
