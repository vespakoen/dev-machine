themes_ppa:
  pkgrepo.managed:
    - ppa: noobslab/themes

flatstudio:
  pkg.installed:
    - names:
      - flatstudio
    - pkgrepo: themes_ppa

dbus-launch --exit-with-session gsettings set org.gnome.desktop.interface gtk-theme FlatStudio:
  cmd.run
