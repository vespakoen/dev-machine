{% for project, args in pillar.get('projects', {}).items() -%}
{{ args.get('git') }}:
  git.latest:
    - rev: {{ args.get('branch', 'master') }}
    - target: {{ args.get('path') }}
    - unless: [ -d {{ args.get('path') }} ]
{% endfor %}
