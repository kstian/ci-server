# -*- mode: ruby -*-
# vi: set ft=ruby :

# if !Vagrant.has_plugin?("vagrant-proxyconf") 
#      	system('vagrant plugin install vagrant-proxyconf')     
     
#      raise("vagrant-proxyconf installed. Run command again.");
# end

Vagrant.configure("2") do |config|

  config.vm.box = "mitrais/ci-server"
  config.ssh.insert_key = false

  # Provision the VM
  # provision with dotnet stuff
  #config.vm.provision :shell, path: "dotnet-provision.sh"

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  config.vm.network "forwarded_port", guest: 8080, host: 8080  # jenkins port
  config.vm.network "forwarded_port", guest: 8081, host: 8081  # sonar port
  
  # jenkins + sonar need at least 3G memory
  config.vm.provider "virtualbox" do |vb|
    # Customize the amount of memory on the VM:
    vb.memory = "3072"
  end
  
  # proxy configuration for mitrais network
  if Vagrant.has_plugin?("vagrant-proxyconf")
    # this is mitrais.wsus proxy for non-windows os. Sometimes it doesn't work
    config.proxy.http     = "http://mitrais.wsus:3128/"
    config.proxy.https    = "http://mitrais.wsus:3128/"
    config.proxy.no_proxy = "localhost,127.0.0.1,10.0.0.0/8,172.16.0.0/12,192.168.0.0/16"
#    # this is cntlm proxy, usually it's 10.0.2.2
#    config.proxy.http     = "http://10.0.2.2:3128/"
#    config.proxy.https    = "http://10.0.2.2:3128/"
#    config.proxy.no_proxy = "localhost,127.0.0.1,10.0.0.0/8,172.16.0.0/12,192.168.0.0/16"
  end
  
end
