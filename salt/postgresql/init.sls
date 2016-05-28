postgresql:
  pkgrepo.managed:
    - name: deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main
    - key_url: https://www.postgresql.org/media/keys/ACCC4CF8.asc
  postgresql-9.5:
    pkg.installed
