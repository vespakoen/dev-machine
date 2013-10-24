xmonad:
  pkg.installed:
    - pkgs:
      - xmonad
      - dmenu

/home/{{ pillar['username'] }}/.xmonad/xmonad.hs:
  file.managed:
    - template: jinja
    - source: salt://xmonad/files/xmonad.hs
    - user: {{ pillar['username'] }}
    - group: {{ pillar['username'] }}

xmonad --recompile:
  cmd.run

xmonad --restart:
  cmd.run
