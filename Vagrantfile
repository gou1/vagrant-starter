
Vagrant.configure(2) do |config|

  config.vm.box = "ubuntu/trusty64"
  # config.vm.network "forwarded_port", guest: 80, host: 80

  config.vm.provision "shell", privileged: false, inline: <<-SHELL
      sudo apt-get update -y --fix-missing
      sudo apt-get install -y putty-tools
      wget http://the.earth.li/~sgtatham/putty/latest/x86/putty.exe -qnc -O /vagrant/putty.exe
      puttygen /vagrant/.vagrant/machines/default/virtualbox/private_key -o /vagrant/.vagrant/machines/default/virtualbox/private_key.ppk
SHELL

  config.vm.provision "shell", path: "Vagrantprovision.sh"

end
