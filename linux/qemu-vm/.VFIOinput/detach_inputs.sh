#!/bin/sh

VM_NAME="MultiSeat_Win11-64"

#virsh detach-device [VirtualMachineName] [PathToUSBxmlConfigFile]
echo "Attempting to detach keyboard..."
virsh detach-device "$VM_NAME" "/home/scott/.VFIOinput/input_blackKB.xml"
echo "Attempting to detach mouse..."
virsh detach-device "$VM_NAME" "/home/scott/.VFIOinput/input_wireless_mouse.xml"
echo "Attempting to detach mouse (if wired)..."
virsh detach-device "$VM_NAME" "/home/scott/.VFIOinput/input_wired_mouse.xml"
