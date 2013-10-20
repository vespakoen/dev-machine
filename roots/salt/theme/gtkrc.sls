/home/{{ pillar['username'] }}/.gtkrc-2.0:
  file.managed:
    - source: salt://theme/files/.gtkrc-2.0
    - user: {{ pillar['username'] }}
    - group: {{ pillar['username'] }}
