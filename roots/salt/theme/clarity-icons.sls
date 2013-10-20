clarity-icons:
  git.latest:
    - name: https://github.com/jcubic/Clarity.git
    - target: /home/{{ pillar['username'] }}/.icons/Clarity
    - user: {{ pillar['username'] }}

cd .icons/Clarity && ./configure && make:
  cmd.run:
    - unless: [ -f /home/{{ pillar['username'] }}/.icons/Clarity/Makefile ]
