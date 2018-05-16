Vagrant.configure("2") do |config|
  # box
  config.vm.box = "bento/ubuntu-18.04"

  # network
  config.vm.network "forwarded_port", guest: 80, host: 8080

  # chef 
  chef_repo_path = "./chef"

  config.vm.provision :chef_solo do |chef|
      chef.data_bags_path = 'chef/data_bags'
      chef.environments_path = 'chef/environments'
      chef.roles_path = 'chef/roles'
      chef.cookbooks_path = 'chef/cookbooks'

      chef.run_list = [
          'recipe[webserver::apache]'
      ]

  end

end
