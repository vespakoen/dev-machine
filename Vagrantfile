Vagrant.configure("2") do |config|
  ## Choose your base box
  config.vm.box = "precise32"

  ## For masterless, mount your file roots file root
  config.vm.synced_folder "roots/", "/srv/"

  ## Forward 8080 to nginx
  config.vm.network :forwarded_port, guest: 80, host: 8080

  ## Set your salt configs here
  config.vm.provision :salt do |salt|
    ## Minion config is set to ``file_client: local`` for masterless
    salt.minion_config = "minion"

    ## Installs our example formula in "roots/salt"
    salt.run_highstate = true
  end

  config.vm.provider "virtualbox" do |vb|
    vb.gui = true
    vb.customize [
      "modifyvm", :id,
      "--name", "dev-machine"
    ]
  end
end
