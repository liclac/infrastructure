base:
  '*':
    - common

  'roles:db':
    - match: grain
    - postgresql
