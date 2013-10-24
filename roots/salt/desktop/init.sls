desktop:
  pkg.installed:
    - pkgs:
#      - lightdm
#      - xinit
#      - ubuntu-desktop
#      - gnome-shell
      - gnome-terminal

applications:
    pkg.installed:
      - names:
        - chromium-browser
        - chromium-codecs-ffmpeg
        - chromium-codecs-ffmpeg-extra
