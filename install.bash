virt-install --connect=qemu:///system \
             --location=ftp://ftp.us.debian.org/debian/dists/stable/main/installer-amd64 \
	     --os-type=linux \
	     --virt-type=kvm \
             --extra-args="\
	       auto=true priority=critical url=http://192.168.122.1/preseed.cfg" \
             --name debian_stable_preseed --ram=512 \
             --disk=pool=default,size=5,format=qcow2,bus=virtio
