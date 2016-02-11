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

sudo apt-get install -y rails
sudo apt-get install -y rvm
sudo rvm install -y ruby
sudo apt-get -y ruby-railties-4.0
bundle install
rails s -p 3009

ln -s /vagrant /var/www
