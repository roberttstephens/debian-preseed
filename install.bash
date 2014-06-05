virt-install --connect=qemu:///system \
	--location=ftp://ftp.us.debian.org/debian/dists/stable/main/installer-amd64 \
	--os-type=linux \
	--virt-type=kvm \
	--extra-args="\
		auto=true priority=critical
		url=http://192.168.122.1/preseed.cfg
		netcfg/disable_dhcp=true
		netcfg/confirm_static=true
		netcfg/get_ipaddress=192.168.122.30
		netcfg/get_netmask=255.255.255.0
		netcfg/get_gateway=192.168.122.1
		netcfg/get_nameservers=192.168.122.1 8.8.8.8
		keymap=us" \
	--name debian_stable_preseed --ram=512 \
	--disk=pool=default,size=5,format=qcow2,bus=virtio
