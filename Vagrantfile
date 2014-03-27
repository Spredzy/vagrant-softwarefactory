VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "softwarefactory"
  config.vm.hostname = "softwarefacoty.example.com"
  config.vm.provision "shell", inline: "sed -i 's/ftp\.fr\.debian\.org/http\.debian\.net/g' /etc/apt/sources.list"
  config.vm.provision "shell", inline: "echo 1 > /proc/sys/net/ipv6/conf/all/disable_ipv6"
  config.vm.provision "shell", inline: "apt-get update"
  config.vm.provision "puppet" do |puppet|
    puppet.module_path = 'modules'
  end

end
