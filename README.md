# Vagrant starter

A tiny vagrant box to quickly get started **on Windows**:

- Ubuntu Server 14.04 32 bits
- Automatically downloads [Putty](http://www.chiark.greenend.org.uk/~sgtatham/putty/) and generates a ppk private key from the vagrant-genereated one
- `Vagrantprovision.sh` is run to provision the vm
- `ssh.bat` script helps connecting to the instance using that ppk key
- Port 80 is redirected by default on port 80

## Get started

- Install [VirtualBox](https://www.virtualbox.org/)
- Install [Vagrant](https://www.vagrantup.com/)
- Open a terminal in the project directory and type `vagrant up`

## Working with the VM

- `ssh.bat` opens a Putty terminal on the VM.
- http://127.0.0.1 should display the Apache default page.
- The project directory is shared with the VM in `/vagrant`
