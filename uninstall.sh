#!/bin/sh
install_folder=/opt/fancontrol
rm -r $install_folder
rm -r /bin/fancontrol
rm -r /usr/share/applications/thinkfan.desktop
rm -r /usr/share/polkit-1/actions/Thinkfan.policy
#rm -r ~/.config/autostart/thinkfan.desktop
touch /etc/modprobe.d/thinkpad_acpi.conf
echo "options thinkpad_acpi fan_control=1" > /etc/modprobe.d/thinkpad_acpi.conf
