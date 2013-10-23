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
    password: somepassword-this-doesnt-work-yet
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
