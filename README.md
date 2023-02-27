Easy to use VPN setup for your remote VPS using Ansible. 

Just run 
```shell
make prep # install dependencies
make run # setup vpn
```

*.ovpn configs will be stored in local directories sam/ and pippin/

Open them in any OpenVPN client: tunnelblick for macOS, openVPN for iOS.



Thanks @kyl191 for [ansible role](https://github.com/kyl191/ansible-role-openvpn)