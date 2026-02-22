# HP-Print-Server-Linux
This Bash script sets up a CUPS print server with wireless printing support for an HP USB printer on Ubuntu/Debian.

| Tested Device  | OS                  | Printer                  |
|---------------|---------------------|--------------------------|
| Raspberry Pi 5 | Ubuntu Server 25.04 | HP Color LaserJet CP2025n |
| Raspberry Pi Zero 2 W | Ubuntu Server 25.04 | HP Color LaserJet CP2025n |

## How to use

1. Verify your HP printer supports USB connectivity (check under **Connectivity USB Network Parallel**) on the [official HPLIP supported devices list](https://developers.hp.com/hp-linux-imaging-and-printing/supported_devices/index).

2. Connect your printer to your machine via USB.

3. Download and run the setup script:

    ```
    wget https://raw.githubusercontent.com/StasGr12/HP-Print-Server-Linux/refs/heads/main/setup.sh
    chmod +x setup.sh
    ./setup.sh
    ```

4. If your printer requires a plug-in driver (check under **Driver Plug-in** on the [official HPLIP supported devices list](https://developers.hp.com/hp-linux-imaging-and-printing/supported_devices/index)), run this command:

    ```
    hp-plugin -i --required
    ```

5. Enjoy wireless printing!
