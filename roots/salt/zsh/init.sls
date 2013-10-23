# oh-my-zsh:
#   git.latest:
#     - name: git://github.com/robbyrussell/oh-my-zsh.git
#     - target: /home/{{ pillar['username'] }}/.oh-my-zsh
#     - user: {{ pillar['username'] }}
#     - submodules: true

/home/{{ pillar['username'] }}/.zshrc:
  file.managed:
    - source: salt://zsh/files/.zshrc

# zsh:
#   pkg.installed
