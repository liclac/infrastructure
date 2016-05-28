essentials:
  pkg.installed:
    - pkgs:
      - build-essential
      - vim
      - git
      - tmux
      - htop
      - strace
      - ltrace
      - zsh
      - curl

/root/swapfile:
  cmd.run:
    - name: dd if=/dev/zero of=/root/swapfile bs=1M count=2048 && chmod 0600 /root/swapfile && mkswap /root/swapfile
    - creates: /root/swapfile
  mount.swap: []
