!# /bin/bash
qemu-system-x86_64 \
-name guest=win10-2,debug-threads=on \
-S \
-machine pc-q35-2.10,accel=kvm,usb=off,vmport=off,dump-guest-core=off \
-cpu host,hypervisor=off,hv_time,hv_relaxed,hv_vapic,hv_vendor_id=doggy,kvm=off \
-drive file=/usr/share/OVMF/OVMF_CODE.fd,if=pflash,format=raw,unit=0,readonly=on \
-drive file=/var/lib/libvirt/qemu/nvram/win10-2_VARS.fd,if=pflash,format=raw,unit=1 \
-m 8192 \
-realtime mlock=off \
-smp 8,sockets=1,cores=4,threads=2 \
-uuid 15427575-5e73-480b-8c30-cf8c430be966 \
-display none \
-nodefaults \
-rtc base=localtime,driftfix=slew \
-global kvm-pit.lost_tick_policy=delay \
-no-hpet \
-no-shutdown \
-global ICH9-LPC.disable_s3=1 \
-global ICH9-LPC.disable_s4=1 \
-boot strict=on \
-device pcie-root-port,port=0x15,chassis=1,id=pci.1,bus=pcie.0,addr=0x2.0x5 \
-device pci-bridge,chassis_nr=2,id=pci.2,bus=pci.1,addr=0x0 \
-device pcie-root-port,port=0x10,chassis=3,id=pci.3,bus=pcie.0,multifunction=on,addr=0x2 \
-device pcie-root-port,port=0x11,chassis=4,id=pci.4,bus=pcie.0,addr=0x2.0x1 \
-device pcie-root-port,port=0x12,chassis=5,id=pci.5,bus=pcie.0,addr=0x2.0x2 \
-device pcie-root-port,port=0x13,chassis=6,id=pci.6,bus=pcie.0,addr=0x2.0x3 \
-device pcie-root-port,port=0x14,chassis=7,id=pci.7,bus=pcie.0,addr=0x2.0x4 \
-device ich9-usb-ehci1,id=usb,bus=pcie.0,addr=0x1d.0x7 \
-device ich9-usb-uhci1,masterbus=usb.0,firstport=0,bus=pcie.0,multifunction=on,addr=0x1d \
-device ich9-usb-uhci2,masterbus=usb.0,firstport=2,bus=pcie.0,addr=0x1d.0x1 \
-device ich9-usb-uhci3,masterbus=usb.0,firstport=4,bus=pcie.0,addr=0x1d.0x2 \
-device virtio-serial-pci,id=virtio-serial0,bus=pci.3,addr=0x0 \
-drive file=/var/lib/libvirt/images/win10.qcow2,format=qcow2,if=none,id=drive-virtio-disk1,cache=writethrough \
-device virtio-blk-pci,scsi=off,bus=pci.6,addr=0x0,drive=drive-virtio-disk1,id=virtio-disk1,bootindex=1 \
-drive file=/home/brody/Emulation/win10/virtio-win-0.1.141.iso,format=raw,if=none,media=cdrom,id=drive-sata0-0-0,readonly=on,cache=writethrough \
-device ide-cd,bus=ide.0,drive=drive-sata0-0-0,id=sata0-0-0 \
-device virtio-net-pci,id=net0,mac=52:54:00:16:09:fc,bus=pci.7,addr=0x0 \
-device cirrus-vga,id=video0,bus=pcie.0,addr=0x1 \
-device intel-hda,id=sound0,bus=pci.2,addr=0x2 \
-device hda-duplex,id=sound0-codec0,bus=sound0.0,cad=0 \
-device virtio-balloon-pci,id=balloon0,bus=pci.5,addr=0x0 \
-device vfio-pci,host=01:00.0,x-pci-vendor-id=0x10DE,x-pci-device-id=0x1C20,x-pci-sub-vendor-id=0x1043,x-pci-sub-device-id=0x16D0,multifunction=on,romfile=/home/brody/Emulation/win10/1043-16D0.bin \
-msg timestamp=on \
-vnc 127.0.0.1:1 \


#-name "win10" \
#-global ICH9-LPC.disable_s3=1 \
#-global ICH9-LPC.disable_s4=1 \
#-cpu host,kvm=on,hv_vapic,hv_relaxed,hv_spinlocks=0x1fff,hv_time,hv_vendor_id=GIGABYTE \
#-smp 8,sockets=1,cores=4,threads=2 \
#-m 8G \
# -mem-path /dev/hugepages
#-mem-prealloc \
#-balloon
