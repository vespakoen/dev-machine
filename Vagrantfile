Vagrant.configure("2") do |config|
  ## Choose your base box

  config.vm.box_url = "http://cloud-images.ubuntu.com/vagrant/saucy/current/saucy-server-cloudimg-amd64-vagrant-disk1.box"
  #config.vm.box_url = "https://dl.dropboxusercontent.com/s/veoh03coqo44ekd/wheezy64.box?dl=1"

  config.vm.box = "xubuntu-saucy64"
  #config.vm.box = "wheezy64"

  ## For masterless, mount your file roots file root
  config.vm.synced_folder "roots/", "/srv/"

  ## Forward 80 to nginx
  config.vm.network :forwarded_port, guest: 80, host: 8080

  ## Install salt stack
  # config.vm.provision :shell,
  #   :inline => 'curl -L http://bootstrap.saltstack.org | sudo sh -s -- git develop'

  ## Set your salt configs here
  config.vm.provision :salt do |salt|
    ## Minion config is set to ``file_client: local`` for masterless
    # salt.minion_config = "minion"

    ## Installs formulas as configured in "roots/salt/top.sls"
    salt.run_highstate = true

    salt.verbose = true
  end

  config.vm.provider "virtualbox" do |vb|
    vb.gui = true
    vb.customize [
      "modifyvm", :id,
      "--name", "dev-machine",
      "--memory", 512,
      "--vram", 256
    ]
  end
end
