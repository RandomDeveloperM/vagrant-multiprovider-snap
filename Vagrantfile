Vagrant.require_plugin "vagrant-snap"
Vagrant.require_plugin "vagrant-vmware-fusion"

Vagrant.configure("2") do |config|

    config.vm.box     = "precise32"
    config.vm.box_url = "http://files.vagrantup.com/precise32.box"

    config.vm.provider :vmware_fusion do |fusion,override|
        override.vm.box     = "precise64"
        override.vm.box_url = "http://files.vagrantup.com/precise64_vmware_fusion.box"
    end

end
