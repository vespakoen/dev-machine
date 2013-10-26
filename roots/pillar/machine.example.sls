minions:
  '*':
    - vespakoen.users
    - vespakoen.system
    - vespakoen.git.deploy_keys
    - vespakoen.xmonad
    - vespakoen.virtualbox
    - vespakoen.vagrant
    - vespakoen.theme
    - vespakoen.zsh
    - vespakoen.desktop
    - vespakoen.sublime-text
    - vespakoen.projects
    - vespakoen.macbook
    - vespakoen.ruby

username: YOURUSER

xubuntu: True

color: "F4D359"
color_r: 244
color_g: 211
color_b: 89

port_allow:
  - 22
  - 80

users:
  YOURUSER:
    fullname: Your Full Name
    shell: /usr/bin/zsh
    groups:
      - adm
      - cdrom
      - sudo
      - dip
      - plugdev
      - lpadmin
      - sambashare
  vagrant:
    fullname: vagrant
    shell: /usr/bin/zsh
    groups:
      - cdrom
      - floppy
      - audio
      - dip
      - video
      - plugdev
      - admin
    ssh_auth:
      - ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEA6NF8iallvQVp22WDkTkyrtvp9eWW6A8YVr+kz4TjGYe7gHzIw+niNltGEFHzD8+v1I2YJ6oXevct1YeS0o9HZyN1Q9qgCgzUFtdOKLv6IedplqoPkcmF0aYet2PkEDo3MlTBckFXPITAMzF8dJSIFo9D8HfdOV0IAdx4O7PtixWKn5y2hMNG0zQPyUecp4pzC6kivAIhyfHilFR61RGL+GPXQ2MWZWFYbAGjyiYJnAmCP3NOTd0jMZEnDkbUvxhMmBYSdETk1rRgm+R4LOzFUGaHqHDLKLX+FIPKcF96hrucXzcWyLbIbEgE98OHlnVYCzRdK8jlqm8tehUc9c9WhQ== vagrant insecure public key

deploy_keys:
  github:
    host: github.com
    key: |
      -----BEGIN RSA PRIVATE KEY-----
      lorem ipsum =)
      -----END RSA PRIVATE KEY-----
  bitbucket:
    host: bitbucket.org
    key: |
      -----BEGIN RSA PRIVATE KEY-----
      lorem ipsum =)
      -----END RSA PRIVATE KEY-----

system:
  timezone: Europe/Amsterdam
  locale: en_US.UTF-8

projects:
  name-of-project:
    path: /home/YOURUSER/some/path
    git: git@bitbucket.org:someuser/name-of-project.git

zsh:
  theme: steeef
  plugins:
    - git
    - bundler
    - composer
    - copydir
    - copyfile
    - debian
    - extract
    - gem
    - github
    - git-flow
    - jump
    - laravel
    - rsync
    - vagrant
    - web-search

sublime-text:
  packages:
    flatland:
      git: https://github.com/thinkpixellab/flatland.git
      dir: 'Theme - Flatland'
      rev: master
      files:
        'Theme - Flatland/Flatland Dark.sublime-theme':
          source: salt://vespakoen/sublime-text/files/flatland-dark.sublime-theme
    sidebarenhancements:
      dir: SideBarEnhancements
      git: https://github.com/titoBouzout/SideBarEnhancements.git
      rev: st3
    sublimecodeintel:
      dir: SublimeCodeIntel
      git: https://github.com/SublimeCodeIntel/SublimeCodeIntel.git
      rev: development
    applysyntax:
      dir: ApplySyntax
      git: https://github.com/facelessuser/ApplySyntax.git
      rev: ST3
      files:
        User/ApplySyntax.sublime-settings:
          source: salt://vespakoen/sublime-text/files/ApplySyntax.sublime-settings
    sublimefilediffs:
      dir: SublimeFileDiffs
      git: https://github.com/colinta/SublimeFileDiffs.git
      rev: st3






















minions:
  '*':
    - common
    - xmonad
    - virtualbox
    - vagrant
    - theme
    - zsh
    #- users
    - sublime-text
    - projects
    - macbook

username: YOURUSERNAME

xubuntu: True

color: "#F4D359"
color_r: 244
color_g: 211
color_b: 89

port_allow:
  - 22
  - 80

users:
  YOURUSERNAME:
    fullname: Your Name
    shell: /usr/bin/zsh
    groups:
      - YOURUSERNAME
      - adm
      - cdrom
      - sudo
      - dip
      - plugdev
      - lpadmin
      - sambashare

system:
  timezone: Europe/Amsterdam
  locale: en_US.UTF-8

projects:
  PROJECT-NAME:
    path: /PATH/TO/PROJECT
    git: git@bitbucket.org:SOME/PROJECT.git
