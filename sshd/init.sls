/etc/ssh/sshd_config:
  file.managed:
    - source: salt://sshd/sshd_config

ssh:
  service:
    - running
    - enable: True
    - watch:
      - file: /etc/ssh/sshd_config
