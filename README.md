# SetERC
Minimal shell and service scripts to enable ERC on all available block devices at system bootup in Linux

## Installation

1. Place set_erc_alldrives.sh somewhere that won't get affected by system updates. /opt/scripts is a great option.
2. Place set_erc_alldrives.service in /etc/systemd/system/
3. Edit the Service section of set_erc.alldrives.service to properly point to where you stored set_erc.alldrives.sh
4. Make sure permissions are set before rebooting:
5. chmod 744 /opt/scripts/set_erc_alldrives.sh
6. chmod 664 /etc/systemd/system/set_erc_alldrives.service
7. Add it to systemctl
8. systemctl daemon-reload
9. systemctl enable set_erc_alldrives.service
10. Reboot!

## Notes
Tested with Ubuntu Server 16.04 LTS but should work with any Debian-based Linux system.
