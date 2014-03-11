vim_packages:
  pkg.latest:
    - pkgs:
      - "vim"

/root/.vimrc:
  file.managed:
    - source: salt://vim/.vimrc

/root/.vim:
  file.recurse:
    - source: salt://vim/.vim
    - include_empty: True
