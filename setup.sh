#!/bin/bash
set -e
echo "Made By StasGr12"
echo ""
echo "Installing CUPS + HPLIP for HP Printers (USB)..."
sudo apt update
sudo apt install -y cups hplip avahi-daemon system-config-printer
sudo systemctl enable --now cups avahi-daemon
sudo usermod -aG lpadmin "$USER"
echo "🔧 Configuring CUPS to allow web access from local network only..."
sudo sed -i 's/^Listen localhost:631/Port 631/' /etc/cups/cupsd.conf
sudo bash -c 'cat > /etc/cups/cupsd.conf <<EOF
LogLevel warn
PageLogFormat
MaxLogSize 0
Port 631
Browsing On
BrowseLocalProtocols dnssd
DefaultAuthType Basic
WebInterface Yes

<Location />
  Order allow,deny
  Allow @local
</Location>

<Location /admin>
  Order allow,deny
  Allow @local
</Location>

<Location /admin/conf>
  AuthType Default
  Require user @SYSTEM
  Order allow,deny
  Allow @local
</Location>
EOF'
sudo systemctl restart cups
echo "Detecting connected HP printer..."
until USB_ID=$(lsusb | grep -i HP | awk '{print $6}' | head -n1) && [ -n "$USB_ID" ]; do
  echo "No HP USB device found. Please connect your HP printer via USB."
  sleep 3
done
PRINTER_NAME="HP Printer"
DEVICE_NAME=$(uname -n)
echo "Installing printer via HPLIP..."
sudo hp-setup -i -b usb -p$PRINTER_NAME
sudo lpadmin -p "$PRINTER_NAME" -o printer-is-shared=true
sudo lpoptions -d "$PRINTER_NAME"
echo ""
echo "Setup complete!"
echo "CUPS Web Interface: http://$(hostname).local:631"
echo "Printer Name: $PRINTER_NAME"
echo "Your Printer Will Apear As '$PRINTER_NAME @ $DEVICE_NAME'"
