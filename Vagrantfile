Vagrant.configure("2") do |config|
  config.vm.box = "generic/ubuntu2204"
  
  config.vm.define "ubuntu_vsc_java" do |ubuntu_vsc_java|
      
    config.vm.provider "virtualbox" do |vb|
        vb.name = "Ubuntu Desktop, Visual Studio Code and Java"
        vb.memory = "16384"
        vb.cpus = "2"
        vb.customize ['modifyvm', :id, '--graphicscontroller', 'vmsvga']
        vb.customize ['modifyvm', :id, '--vram', '16']
        vb.customize ["modifyvm", :id, "--clipboard-mode", "bidirectional"]
        vb.customize ["modifyvm", :id, "--draganddrop", "bidirectional"]
        vb.gui = true
        
    args = []
    config.vm.provision "ubuntu_etc shell script", type: "shell",
        path: "scripts/ubuntu_etc.sh",
        args: args
    end
    
  end

end