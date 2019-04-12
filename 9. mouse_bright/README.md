USB Mouse Driver for linux which adjusts brightness on left and right clicks.

Using the device driver file :

After downloading the project, run make This will create a .ko file which we will use to load the device driver

You need to register a device with a major number (same as in device driver code ) and minor number. sudo mknod /dev/myDev c 91 1

Now remove the default usb driver (usbhid) sudo rmmod usbhid

Now your usb mouse should stop working. Now load our device driver. sudo insmod usbmouse.ko

Check whether clicks are working. you can do dmesg | tail after after pressing left click and right click to check if clicks are getting registered.

compile adjustBrightness_exiting.c gcc adjustBrightness_exiting.c This file basically reads from /dev/myDev and adjusts brightness.

Now run the compiled file sudo ./a.out on pressing left and right clicks, the brightness should change. (note the brightness file and values can be different for different machines. On mine the brightness varies from 0 - 10 and the file is /sys/class/backlight/acpi_video0/brightness.) middle click exits the program.

Removing our driver sudo rmmod usbmouse

Loading default usb driver back sudo modprobe usbhid



sudo mknod /dev/myDev c 91 1
MAKE 
sudo rmmod usbhid 
sudo insmod usbmouse.ko
run the adju.c file 
sudo rmmod usbmouse
sudo modprobe usbhid