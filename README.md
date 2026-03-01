# HP-Print-Server-Linux
This Bash script sets up a CUPS print server with wireless printing support for an HP USB printer on Ubuntu/Debian.
## Warning
Before using the script check if your printer supports printing via USB on the [HPLIP supported devices list](https://developers.hp.com/hp-linux-imaging-and-printing/supported_devices/index).

## Verified Devices 
| Tested Device  | OS                  | Printer                  |
|---------------|---------------------|--------------------------|
| Raspberry Pi 5 | Ubuntu Server 25.04 | HP Color LaserJet CP2025n |
| Raspberry Pi Zero 2 W | Ubuntu Server 25.04 | HP Color LaserJet CP2025n |

## How to use

1. Connect your printer to your machine via USB.

2. Download and run the setup script:

    ```
    wget https://raw.githubusercontent.com/StasGr12/HP-Print-Server-Linux/refs/heads/main/setup.sh
    chmod +x setup.sh
    ./setup.sh
    ```

3. If your printer requires a plug-in driver (check under **Driver Plug-in** on the [official HPLIP supported devices list](https://developers.hp.com/hp-linux-imaging-and-printing/supported_devices/index)), run this command:

    ```
    hp-plugin -i --required
    ```

4. Enjoy wireless printing!
