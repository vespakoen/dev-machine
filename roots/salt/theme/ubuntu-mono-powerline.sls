ubuntu-mono-powerline:
  git.latest:
    - name: https://github.com/pdf/ubuntu-mono-powerline-ttf.git
    - target: ~/.fonts/ubuntu-mono-powerline-ttf
    - user: {{ pillar['username'] }}
    - submodules: true

fc-cache -vf:
  cmd.run
