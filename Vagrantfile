VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.define "Hello-World", primary: true do |node|

#     node.vm.synced_folder "../nginx-formula/nginx", "/srv/salt-formula/nginx"
    node.vm.provision :shell, :path => ".provision/bootstrap.sh"

    node.vm.box = "puppetlabs/ubuntu-14.04-64-nocm"
    node.vm.network :forwarded_port, guest: 80, host: 3009, auto_correct: true

  end

  config.vm.define "Hello-World1", secondary: true do |node|

#     node.vm.synced_folder "../nginx-formula/nginx", "/srv/salt-formula/nginx"
    node.vm.provision :shell, :path => ".provision/bootstrap.sh"

    node.vm.box = "puppetlabs/ubuntu-14.04-64-nocm"
    node.vm.network :forwarded_port, guest: 80, host: 3009, auto_correct: true

  end

  config.vm.define "Hello-World3", secondary: true do |node|

#     node.vm.synced_folder "../nginx-formula/nginx", "/srv/salt-formula/nginx"
    node.vm.provision :shell, :path => ".provision/bootstrap.sh"

    node.vm.box = "puppetlabs/ubuntu-14.04-64-nocm"
    node.vm.network :forwarded_port, guest: 80, host: 3009, auto_correct: true

  end

end
