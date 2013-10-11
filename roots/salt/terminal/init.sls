oh-my-zsh:
  git.latest:
    - name: git://github.com/robbyrussell/oh-my-zsh.git
    - target: /home/{{ pillar['username'] }}/.oh-my-zsh
    - user: {{ pillar['username'] }}
    - submodules: true

/home/{{ pillar['username'] }}/.zshrc:
  file.managed:
    - source: salt://terminal/files/.zshrc

zsh:
  pkg.installed

ubuntu-mono-powerline:
  git.latest:
    - name: https://github.com/pdf/ubuntu-mono-powerline-ttf.git
    - target: ~/.fonts/ubuntu-mono-powerline-ttf
    - user: {{ pillar['username'] }}
    - submodules: true

fc-cache -vf:
  cmd.run
