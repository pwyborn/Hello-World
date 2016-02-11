# Hello-World


## Introduction
# How to start a new project

Steps:

  - [Clone this repo]

```
git clone git@github.com:pwyborn/makeaplea-deploy.git \
cd my-project-deploy/
```


### Setting up the Virtual Machine

	vagrant up

        vagrant provision

### Running tests on the app running in the boxr
# ssh into the virtual machine
	vagrant ssh [Hello-World1 or Hello-World2 or Hello-World3]
# Set up superuser
*  vi (or vim) /etc/sudoers
*  i (for insert) 
*  change line vagrant ALL=(ALL) NOPASSWD:ALL
*  change line %admin <user> sudo  (did not have time to implement automation of this) 

### In browser
*  http://localhost:3009/  (this at least tests that nginx is up and running - as well as the test when Vagrantbox is created/provisioned)
### Dependencies
* Virtual Box  - install from https://www.virtualbox.org/wiki/Downloads
* Vagrant - install from http://www.vagrantup.com/downloads.html

### The steps I took were:
* I created the app first (very basic)
* I created the virtualbox
* I added the extra machines
* Added a simple test for whether Nginx was running on port 80
* Then basically ran out of time
* Wasn't sure if I should have gone down the salt and docker routes (however didn't think I would have enough time to configure these)
