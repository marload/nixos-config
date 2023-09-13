{ pkgs }:

with pkgs; [
  # General packages for development and system management
  btop
  wget
  gcc
  openssh
  pandoc
  bash-completion
  zip
  fzf
  direnv
  
  # Productivity Tools
  rectangle


  # Security Tools
  #

  # Cloud-related tools and SDKs
  docker-compose
  awscli2
  terraform
  tflint
  k9s
  saml2aws

  # Source code management, Git, GitHub tools
  gh

  # Text and terminal utilities
  htop
  tmux
  unzip
  jq
  tree
  bat
  eza
  ripgrep
  neovim

  # Python packages
  python312
  python39Packages.virtualenv

  # Nodejs packages
  nodejs
  nodePackages.live-server
  nodePackages.nodemon
  nodePackages.prettier
  nodePackages.npm
]