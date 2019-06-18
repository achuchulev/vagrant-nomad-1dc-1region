Vagrant.configure("2") do |config|
  
  # global settings
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "512"
    vb.cpus = "1"
  end
  
  config.vm.define vm_name="nomad" do |nomad|
    nomad.vm.box = "achuchulev/nomad"
    nomad.vm.hostname = "server-dc1"
    nomad.vm.network "forwarded_port", guest: 4646, host: 4646
    nomad.vm.network "private_network", ip: "192.168.10.10"
    nomad.vm.provision "shell", path: "scripts/nomad_config.sh"
    nomad.vm.provision "shell", path: "https://raw.githubusercontent.com/kikitux/curl-bash/master/provision/docker.sh"
    nomad.vm.provision "shell", path: "scripts/nomad_service.sh"
  end

end
