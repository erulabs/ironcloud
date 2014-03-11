varnish_packages:
  pkg.latest:
    - pkgs:
      - "varnish"

/etc/varnish:
  file.recurse:
    - source: salt://varnish/varnish
    - include_empty: True

varnish:
  service:
    - running
    - enable: True
    - watch:
      - pkg: varnish_packages
