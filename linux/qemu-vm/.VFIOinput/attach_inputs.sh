#!/bin/sh

VM_NAME="MultiSeat_Win11-64"

#virsh attach-device [VirtualMachineName] [PathToUSBxmlConfigFile]
echo "Attempting to attach keyboard..."
virsh attach-device "$VM_NAME" "/home/scott/.VFIOinput/input_blackKB.xml"
echo "Attempting to attach mouse (if wireless)..."
virsh attach-device "$VM_NAME" "/home/scott/.VFIOinput/input_wireless_mouse.xml"
echo "Attempting to attach mouse (if wired)..."
virsh attach-device "$VM_NAME" "/home/scott/.VFIOinput/input_wired_mouse.xml"
