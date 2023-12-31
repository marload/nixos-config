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
	atuin
  zsh-vi-mode
  tmux
  tmuxinator
  libpqxx
	stow

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
  unzip
  jq
  yq-go
  tree
  bat
  eza
  ripgrep
  neovim
  zoxide

  # Programming languages
  python312
  python39Packages.virtualenv
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
