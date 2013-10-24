sublime-text:
  pkg.installed:
    - sources:
      - sublime-text: http://c758482.r82.cf2.rackcdn.com/sublime-text_build-3047_amd64.deb

wbond-package-manager:
  file.managed:
    - source: http://sublime.wbond.net/Package%20Control.sublime-package
    - source_hash: md5=ffc7adcb7190ae7c0b71eeeac063a746
    - name: /home/{{ pillar['username'] }}/.config/sublime-text-3/Installed Packages/Package Control.sublime-package

user-preferences:
  file.managed:
    - source: salt://sublime-text/files/Preferences.sublime-settings
    - name: /home/{{ pillar['username'] }}/.config/sublime-text-3/Packages/User/Preferences.sublime-settings
    - user: {{ pillar['username'] }}
    - group: {{ pillar['username'] }}

user-preferences:
  file.managed:
    - source: salt://sublime-text/files/Default.sublime-keymap
    - name: /home/{{ pillar['username'] }}/.config/sublime-text-3/Packages/User/Default (Linux).sublime-keymap
    - user: {{ pillar['username'] }}
    - group: {{ pillar['username'] }}

package-sidebarenhancements:
  git.latest:
    - name: https://github.com/titoBouzout/SideBarEnhancements.git
    - target: /home/{{ pillar['username'] }}/.config/sublime-text-3/Packages/SideBarEnhancements
    - user: {{ pillar['username'] }}
    - rev: st3
    - submodules: true

package-codeintel:
  git.latest:
    - name: https://github.com/SublimeCodeIntel/SublimeCodeIntel.git
    - target: /home/{{ pillar['username'] }}/.config/sublime-text-3/Packages/SublimeCodeIntel
    - user: {{ pillar['username'] }}
    - rev: development
    - submodules: true

package-apply-syntax:
  git.latest:
    - name: https://github.com/facelessuser/ApplySyntax.git
    - target: /home/{{ pillar['username'] }}/.config/sublime-text-3/Packages/ApplySyntax
    - user: {{ pillar['username'] }}
    - rev: ST3
  file.managed:
    - name: /home/{{ pillar['username'] }}/.config/sublime-text-3/Packages/User/ApplySyntax.sublime-settings
    - source: salt://sublime-text/files/ApplySyntax.sublime-settings

package-theme-flatland:
  git.latest:
    - name: https://github.com/thinkpixellab/flatland.git
    - target: /home/{{ pillar['username'] }}/.config/sublime-text-3/Packages/Theme\ -\ Flatland
    - user: {{ pillar['username'] }}
    - force: True

update-flatland-theme:
  file.managed:
    - name: /home/{{ pillar['username'] }}/.config/sublime-text-3/Packages/Theme - Flatland/Flatland Dark.sublime-theme
    - source: salt://sublime-text/files/flatland-dark.sublime-theme
    - template: jinja

change-flatland-colors:
  cmd.run:
    - cwd: /home/{{ pillar['username'] }}/.config/sublime-text-3/Packages/Theme - Flatland/Flatland Dark
    - names:
      - convert \( file-close-selected.png -alpha extract \) -background {{ pillar['color'] }} -alpha shape png32:file-close-selected.png
      - convert \( fold.png -alpha extract \) -background {{ pillar['color'] }} -alpha shape png32:fold.png
      - convert \( fold-closed.png -alpha extract \) -background {{ pillar['color'] }} -alpha shape png32:fold-closed.png
      - convert \( fold-closed-pressed.png -alpha extract \) -background {{ pillar['color'] }} -alpha shape png32:fold-closed-pressed.png
      - convert \( group-closed.png -alpha extract \) -background {{ pillar['color'] }} -alpha shape png32:group-closed.png
      - convert \( group-open.png -alpha extract \) -background {{ pillar['color'] }} -alpha shape png32:group-open.png
      - convert \( icon-buffer-on.png -alpha extract \) -background {{ pillar['color'] }} -alpha shape png32:icon-buffer-on.png
      - convert \( icon-case-on.png -alpha extract \) -background {{ pillar['color'] }} -alpha shape png32:icon-case-on.png
      - convert \( icon-context-on.png -alpha extract \) -background {{ pillar['color'] }} -alpha shape png32:icon-context-on.png
      - convert \( icon-highlight-on.png -alpha extract \) -background {{ pillar['color'] }} -alpha shape png32:icon-highlight-on.png
      - convert \( icon-preserve-on.png -alpha extract \) -background {{ pillar['color'] }} -alpha shape png32:icon-preserve-on.png
      - convert \( icon-regex-on.png -alpha extract \) -background {{ pillar['color'] }} -alpha shape png32:icon-regex-on.png
      - convert \( icon-reverse-on.png -alpha extract \) -background {{ pillar['color'] }} -alpha shape png32:icon-reverse-on.png
      - convert \( icon-selection-on.png -alpha extract \) -background {{ pillar['color'] }} -alpha shape png32:icon-selection-on.png
      - convert \( icon-word-on.png -alpha extract \) -background {{ pillar['color'] }} -alpha shape png32:icon-word-on.png
      - convert \( icon-wrap-on.png -alpha extract \) -background {{ pillar['color'] }} -alpha shape png32:icon-wrap-on.png
      - convert \( quick-panel-row-selected.png -alpha extract \) -background {{ pillar['color'] }} -alpha shape png32:quick-panel-row-selected.png
      - convert \( sidebar-row-selected.png -alpha extract \) -background {{ pillar['color'] }} -alpha shape png32:sidebar-row-selected.png
