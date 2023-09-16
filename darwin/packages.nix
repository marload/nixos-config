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
  starship
  karabiner-elements
  _1password
  croc
  ipcalc
  alacritty
  starship
  tree-sitter
  difftastic

  # Cloud-related tools and SDKs
  docker
  docker-compose
  awscli2
  tflint
  k9s
  saml2aws
  kubectl
  kubectx
  azure-cli
  google-cloud-sdk
  kubernetes-helm
  istioctl
  tcpdump

  # Media related
  ffmpeg
  fd
  meslo-lgs-nf

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
  zoxide

  # Programming languages
  python312
  python39Packages.virtualenv
  nodejs
  nodePackages.live-server
  nodePackages.nodemon
  nodePackages.prettier
  nodePackages.npm
  go
  yarn
  rustup
  jdk
  deno
  lua
]
