Vagrant.configure("2") do |config|

    # Ubuntu 18.04 LTS
    config.vm.box = "ubuntu/bionic64"

    config.vm.provision :shell, path: "bootstrap-privileged.sh"
    config.vm.provision :shell, path: "bootstrap-unprivileged.sh", privileged: false

    # Allows access to port 4000 on the guest using port 4000 on 
    # the host.
    config.vm.network :forwarded_port, guest: 4000, host: 4000

    # Allows access to the guest from the host via static IP. The
    # IP chosen should be in the reserved private address space, 
    # which is 192.168.0.0 – 192.168.255.255.
    config.vm.network "private_network", ip: "192.168.50.4"

end