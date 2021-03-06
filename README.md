Finally updating this backup of my scripts.

See also:
- https://github.com/brodyck/harddrive-lcc
  - Script that stops any hard drive head from parking for a specified amount of time.

- https://github.com/brodyck/ata-provserver-rpi
  - DHCP server, Lighttpd server, both in docker

---

### Folders:

- #### [server-stuff](https://github.com/brodyck/misc/tree/master/server-stuff "server-stuff")
  - Main programs in the server are ZFS, LXC/LXD, Vagrant, Docker; it runs Fedora
  - Soon full of Vagrant, Kubernetes, Dockerfiles, Ansible and Salt configs
  - [update-vagrantlxd](https://github.com/brodyck/misc/tree/master/server-stuff/update-vagrantlxd "update-vagrantlxd"), and ugly twin, [update-vagrantlxd-ohno](https://github.com/brodyck/misc/tree/master/server-stuff/update-vagrantlxd-ohno "update-vagrantlxd-ohno")
  - Script that was out of control sleeps here: [deploy-scripts](https://github.com/brodyck/misc/tree/master/server-stuff/deploy-scripts "deploy-scripts")
    - Creates a bridge network device with systemd
    - Config file specifies permissions of dirs, what to install, any other settings

- #### [virtualization-stuff](https://github.com/brodyck/misc/tree/master/virtualization-stuff "virtualization-stuff")
  - QEMU, Libvert, freeRDP2, and lots of stuff in /dev directory
  - Scripts to test vfio; specifically for GPU passthrough to Windows VM

- #### [setup-stuff](https://github.com/brodyck/misc/tree/master/setup-stuff "setup-stuff")  
  - Scripts used to set up my desktop for every-day usage
  - **[mount-home](https://github.com/brodyck/misc/blob/master/setup-stuff/mount-home "mount-home")** sets routes and performs certain actions depending on what network my laptop/given host has booted onto

---

### [Tools](https://github.com/brodyck/misc/blob/master/tools "tools"):

- #### [scrots](https://github.com/brodyck/misc/blob/master/tools/scrots "scrots")
  - Overcomplicated 'scrot -s' alias that finds out who ran 'sudo su' and corrects permissions

- #### [pa-1click](https://github.com/brodyck/misc/blob/master/pa-1click "pa-1click")
  - Toggle rotates between my audio output devices; good to set to keyboard shortcut
  - Has some error-correction so if something weird happens, defaults everything to laptop speakers

- #### [audio-passthrough](https://github.com/brodyck/misc/blob/master/audio-passthrough "audio-passthrough")
  - Toggle that takes input from the audio-in on my C-Media usb audio card.

- #### [bidaya](https://github.com/brodyck/misc/blob/master/tools/bidaya "bidaya") & [sayonara](https://github.com/brodyck/misc/blob/master/tools/sayonara "sayonara")
  - SSHes me into my servers, bidaya & sayonara

- #### [mount-fasp](https://github.com/brodyck/misc/blob/master/tools/mount-fasp "mount-fasp")
  - Mounts my server using SSHFS over the internet or locally
  
- #### *reboot scripts
  - Sets default boot in grub; l for linux, w for windows, s for system

---

### Neat stuff:

- #### [phone-thing](https://github.com/brodyck/misc/blob/master/phone-thing "phone-thing")
  - 2 way audio communication between my server and my laptop that I assigned keyboad shortcuts
  - Wrote to freak out my roommate while I was on vacation
  - Didn't get to use it

- #### [touchtogg](https://github.com/brodyck/misc/blob/master/outofdate/touchtogg "touchtogg")  
  - My x201t had bad ghost touching on the screen. Toggles on/off. Can lose the xinput device under unknown circumstances.

- #### [touchfloat](https://github.com/brodyck/misc/blob/master/outofdate/touchfloat "touchfloat")
  - Made while trying to turn x201 the touch-screen off. Didn't realise I was just detatching the screen input from the the mouse. 

- #### [get-up-friendo](https://github.com/brodyck/misc/blob/master/outofdate/get-up-friendo "get-up-friendo") & uglier [get-up-frienderino](https://github.com/brodyck/misc/blob/master/outofdate/get-up-frienderino "get-up-friendorino")  
  - Alarm scripts I made for helping with a bi-phasic sleep schedule I had doing night-shifts as a cook
  - First thing I wrote since doing C in college in 2013
  - Broke because pm-suspend-hybrid doesn't work anymore

