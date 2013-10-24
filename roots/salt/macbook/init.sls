map-cmd-to-ctrl:
  file.managed:
    - source: salt://macbook/files/.Xmodmap
    - name: /home/{{ pillar['username'] }}/.Xmodmap
    - user: {{ pillar['username'] }}
    - group: {{ pillar['username'] }}

autostart-xmonad:
  file.managed:
    - name: /home/{{ pillar['username'] }}/.config/autostart/xmonad.desktop
    - source: salt://macbook/files/xmonad.desktop
    - user: {{ pillar['username'] }}
    - group: {{ pillar['username'] }}
