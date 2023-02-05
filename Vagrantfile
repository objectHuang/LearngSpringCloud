Vagrant.configure("2") do |config|
  config.vm.box = "generic/ubuntu2204"
  
  config.vm.define "ubuntu_vsc_java" do |ubuntu_vsc_java|

    config.vm.synced_folder "~/Learn/SpringCloud/IdeaProjects", "/home/vagrant/projects", automount: true
      
    config.vm.provider "virtualbox" do |vb|
      vb.name = "Ubuntu Desktop, Visual Studio Code and Java"
      vb.memory = "16384"
      vb.cpus = "8"
      vb.customize ['modifyvm', :id, '--graphicscontroller', 'vmsvga']
      vb.customize ['modifyvm', :id, '--vram', '256']
      vb.customize ["modifyvm", :id, "--accelerate3d", "on"]
      vb.customize ["modifyvm", :id, "--clipboard-mode", "bidirectional"]
      vb.customize ["modifyvm", :id, "--draganddrop", "bidirectional"]
      #vb.customize ["setextradata", :id, "GUI/ScaleFactor", "2"]
      #vb.customize ["setextradata", :id, "GUI/LastGuestSizeHint", "2048,1280"]
      #vb.customize ["setextradata", :id, "GUI/Fullscreen", "true"]
       
      vb.gui = true
      config.vm.provision "ubuntu_etc shell script", type: "shell", path: "scripts/ubuntu_etc.sh", privileged: false  
    end

    config.vm.provider "vmware_desktop" do |vm|
      #vm.name = "Ubuntu Desktop, Visual Studio Code and Java"
      vm.memory = "16384"
      vm.cpus = "8"
      
      
      vm.gui = true
      config.vm.provision "ubuntu_etc shell script", type: "shell", path: "scripts/ubuntu_etc.sh", privileged: false  
    end
   
    
  end

end