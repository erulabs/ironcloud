php5-fpm_packages:
  pkg.latest:
    - pkgs:
      - "php5-fpm"

/etc/php5/fpm:
  file.recurse:
    - source: salt://php5-fpm/fpm
    - include_empty: True

php5-fpm:
  service:
    - running
    - enable: True
    - watch:
      - pkg: php5-fpm_packages
      - file: /etc/php5/fpm
