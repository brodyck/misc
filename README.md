Finally updating this backup of my scripts.

See also:
- https://github.com/brodyck/harddrive-lcc
  - Script that stops any hard drive head from parking (going to state of 'idle') for a specified amount of time.

- https://github.com/brodyck/ata-provserver-rpi
  - DHCP server, Lighttpd server, both in docker
  - Used for provisioning Grandstream ATAs

---

#### Some of my folders:

- ###### 1. [server-stuff](https://github.com/brodyck/scripts/tree/master/server-stuff "server-stuff")
  - Soon to be full of Vagrant, Kubernetes, Ansible and Salt configs
  - Main programs in my home-server are ZFS, LXC/LXD, Vagrant, Docker
  - [update-vagrantlxd](https://github.com/brodyck/scripts/tree/master/server-stuff/update-vagrantlxd "update-vagrantlxd"), and its scarier twin, [update-vagrantlxd-ohno](https://github.com/brodyck/scripts/tree/master/server-stuff/update-vagrantlxd-ohno "update-vagrantlxd-ohno")
  - A script that I wrote that got out of control sleeps here: [deploy-scripts](https://github.com/brodyck/scripts/tree/master/server-stuff/deploy-scripts "deploy-scripts")
    - Creates a bridge network device with systemd; uses a config file to provision an LXC container; config file specifies permissions of dirs, what to install, any other settings

- ###### 2. [virtualization-stuff](https://github.com/brodyck/scripts/tree/master/virtualization-stuff "virtualization-stuff")
  - Uses QEMU, Libvert, freeRDP2, and lots of stuff in the /dev directory
  - Scripts I have been using to test passing through parts of my laptop, specifically GPU, to a Windows VM.
  - Lots of small things and research need to be done.

- ###### 3. [setup-stuff](https://github.com/brodyck/scripts/tree/master/setup-stuff "setup-stuff")  
  - Scripts I use to set up my desktop for every day usage.
  - **[mount-home](https://github.com/brodyck/misc/blob/master/setup-stuff/mount-home "mount-home")** sets routes and performs certain actions depending on what network my laptop/given host has booted onto.

---

#### In the [Tools](https://github.com/brodyck/misc/blob/master/tools "tools") folder:

- ###### [scrots](https://github.com/brodyck/misc/blob/master/tools/scrots "scrots")
  - My overcomplicated 'scrot -s' alias. Takes screenshots, finds what user is taking said screenshot (will find who ran 'sudo su'), puts them in screenshot folder with date and proper permissions.

- ###### [pa-1click](https://github.com/brodyck/misc/blob/master/pa-1click "pa-1click")
  - Toggle rotates between my audio output devices. Sets audio levels so speakers and ears don't blow out. Has some error-correction features so if something weird is going on with my audio, defaults to set everything to laptop speakers.
  - Set to ctrl-super-a

- ###### [audio-passthrough](https://github.com/brodyck/misc/blob/master/audio-passthrough "audio-passthrough")
  - Toggle that takes input from the audio-in on my C-Media usb audio card. Loads PulseAudio 'module-loopback' and sets a source to a sink. The sink is the current running audio-output device. I use this when I need to hear my Nintendo Switch. 

- ###### [bidaya](https://github.com/brodyck/misc/blob/master/tools/bidaya "bidaya") & [sayonara](https://github.com/brodyck/misc/blob/master/tools/sayonara "sayonara")
  - SSHes me into my servers, bidaya & sayonara, using my ed25519 key on my laptop.
  - My servers don't take passwords if they're on the internet

- ###### [mount-fasp](https://github.com/brodyck/misc/blob/master/tools/mount-fasp "mount-fasp")
  - Mounts my server using SSHFS over the internet or locally

- ###### [supls](https://github.com/brodyck/misc/blob/master/tools/supls "supls")
  - Most used script  
  - ***!! WARNING: very complicated. Not for small brains !!***
  
- ###### *reboot scripts
  - Sets default boot in grub
    - lreboot sets grub to boot Ubuntu
    - sreboot sets grub to boot into bios/uefi
    - wreboot sets grub to boot Windows


#### Stuff I think is interesting:

- ###### [touchtogg](https://github.com/brodyck/misc/blob/master/outofdate/touchtogg "touchtogg")  
  - My x201t had bad ghost touching on the screen. Toggles on/off. Can lose the xinput device under unknown circumstances.

- ###### [touchfloat](https://github.com/brodyck/misc/blob/master/outofdate/touchfloat "touchfloat")
  - Made while trying to turn x201 the touch-screen off. Didn't realise I was just detatching the screen input from the the mouse. 

- ###### [get-up-friendo](https://github.com/brodyck/misc/blob/master/outofdate/get-up-friendo "get-up-friendo") & [get-up-frienderino](https://github.com/brodyck/misc/blob/master/outofdate/get-up-frienderino "get-up-friendorino")  
  - Alarm scripts I made for helping with a bi-phasic sleep schedule I had doing night-shifts as a cook
  - I almost always have a non-sensically hard to read version of scripts
  - First thing I wrote since doing C in college in 2013
  - Don't work anymore because pm-suspend-hybrid isn't used anymore. Don't know why they did that.

- ###### [phone-thing](https://github.com/brodyck/misc/blob/master/phone-thing "phone-thing")
  - 2 way audio communication between my server and my laptop that I assigned keyboad shortcuts
  - Wrote to freak out my roommate while I was on vacation
  - They work, but my server at the time was a laptop and it had over-heated and turned off; didn't get to use it
