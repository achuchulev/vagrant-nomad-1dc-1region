
Vagrant.configure("2") do |config|
  (1..1).each do |i|
    config.vm.define vm_name="server#{i}-dc1" do |nomad|
      nomad.vm.box = "achuchulev/nomad"
      nomad.vm.box_version = "0.0.1"
      nomad.vm.hostname = "server#{i}-dc1"
      nomad.vm.network "forwarded_port", guest: 4646, host: 4646
      nomad.vm.synced_folder ".", "/vagrant", disabled: false
      nomad.vm.network "private_network", ip: "192.168.10.1#{i}"
      nomad.vm.provision "shell", inline: "/vagrant/scripts/nomad_config.sh"
      nomad.vm.provision "shell", inline: "/vagrant/scripts/nomad_service.sh"
    end
  end

  # Set memory & CPU for Virtualbox
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "512"
    vb.cpus = "1"
  end
end
