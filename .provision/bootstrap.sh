#!/usr/bin/env bash

# nginx
sudo apt-get -y install nginx
sudo service nginx start

# set up nginx server
sudo cp /vagrant/.provision/nginx/nginx.conf /etc/nginx/sites-available/site.conf
sudo chmod 644 /etc/nginx/sites-available/site.conf
sudo ln -s /etc/nginx/sites-available/site.conf /etc/nginx/sites-enabled/site.conf
sudo service nginx restart

# clean /var/www
sudo rm -Rf /var/www

# symlink /var/www => /vagrant
cd /vagrant
sudo apt-get update
#sudo apt-get install -y rails
#sudo apt-get install -y rvm
#brew install rvm
#gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
#\curl -sSL https://get.rvm.io | bash -s stable
#source /home/vagrant/.rvm/scripts/rvm
#rvm install ruby
#sudo rvm install -y ruby
sudo apt-get -y ruby-railties-4.0
#bundle install
#rails s -p 3009

ln -s /vagrant /var/www
