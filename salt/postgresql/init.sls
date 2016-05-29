postgresql:
  pkgrepo.managed:
    - name: deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main
    - key_url: https://www.postgresql.org/media/keys/ACCC4CF8.asc
  pkg.installed:
    - name: postgresql-{{ pillar.postgresql.version }}
  service.running:
    - watch:
      - /etc/postgresql/{{ pillar.postgresql.version }}/main/postgresql.conf
      - /etc/postgresql/{{ pillar.postgresql.version }}/main/pg_hba.conf

/etc/postgresql/{{ pillar.postgresql.version }}/main/postgresql.conf:
  file.managed:
    - source: salt://postgresql/postgresql.conf

/etc/postgresql/{{ pillar.postgresql.version }}/main/pg_hba.conf:
  file.managed:
    - source: salt://postgresql/pg_hba.conf
