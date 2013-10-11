vagrant:
  pkg.installed:
    - pkgs:
      - vagrant

  cmd.run:
    - name: vagrant plugin install vagrant-salt
    - unless: vagrant plugin list | grep vagrant-salt | wc -l
