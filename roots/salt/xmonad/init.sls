xmonad:
  pkg.installed:
    - pkgs:
      - lightdm
      - xinit
      - ubuntu-desktop
      - gnome-shell
      - gnome-terminal
      - xmonad
      - dmenu

/home/{{ pillar['username'] }}/.xmonad/xmonad.hs:
  file.managed:
    - source: salt://xmonad/files/xmonad.hs
    - require:
      - pkg: xmonad
