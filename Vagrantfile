Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"
  
   config.vm.hostname = "docker-sandbox"
   
   config.vm.network "forwarded_port", guest: 5000, host: 5050, id: "flask"
   config.vm.network "forwarded_port", guest: 5001, host: 5051, id: "flask2"

   config.vm.network "forwarded_port", guest: 3000, host: 3030, id: "node1"
   config.vm.network "forwarded_port", guest: 3001, host: 3031, id: "node2"
   
   config.vm.network "forwarded_port", guest: 80, host: 8000, id: "web"
   config.vm.network "forwarded_port", guest: 8080, host: 8080, id: "web2"
   
   config.vm.network "forwarded_port", guest: 1433, host: 1443, id: "sql-server"
   config.vm.network "forwarded_port", guest: 3306, host: 3306, id: "mysql"
      
   config.vm.provision "shell", path: "provision.sh"
   config.vm.provision "shell", path: "provision-docker-install.sh"
   
   config.vm.provider "virtualbox" do |vb|
    # Display the VirtualBox GUI when booting the machine
    vb.gui = false
  
    # Customize the amount of memory on the VM:
    vb.memory = "4096"
  end
end

