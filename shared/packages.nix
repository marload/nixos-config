{ pkgs }:

with pkgs; [

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
  starship
  tree-sitter
  difftastic
  bottom
  nixpkgs-fmt
	httpie
  fish

  # Cloud-related tools and SDKs
  lazydocker
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
  kube-capacity
  vault-bin
  kdash
  open-policy-agent
	vault-bin

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
  stylua
	clojure
	leiningen
	elixir


  # Fonts
  noto-fonts-cjk-sans
  noto-fonts-cjk-serif
  (nerdfonts.override { fonts = [ "CascadiaCode" "FiraCode" ]; })
]
