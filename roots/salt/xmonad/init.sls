xmonad:
  pkg.installed:
    - pkgs:
      - xmonad
      - dmenu

/home/{{ pillar['username'] }}/.xmonad/xmonad.hs:
  file.managed:
    - source: salt://xmonad/files/xmonad.hs
    - require:
      - pkg: xmonad
