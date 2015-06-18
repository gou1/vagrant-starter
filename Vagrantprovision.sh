#!/bin/bash

# Serious business tools
sudo apt-get install -y fortune figlet toilet cowsay

# I tastes rainbow
sudo apt-get install -y ruby-full
sudo gem install lolcat

# Lolcatized-random-cowsayed-fortuned-motd
sudo sh -c "echo '#!/bin/bash' > /etc/update-motd.d/99-cow"
sudo sh -c "echo 'echo' >> /etc/update-motd.d/99-cow"
sudo sh -c "echo '/usr/games/fortune | /usr/games/cowsay -f `ls -1 /usr/share/cowsay/cows/ | sort -R | head -1` -n | lolcat -f' >> /etc/update-motd.d/99-cow"
sudo chmod a+x /etc/update-motd.d/99-cow
sudo sh -c 'run-parts /etc/update-motd.d/ > /var/run/motd.dynamic'
