{ config, pkgs, ... }:

{
  home.username = "marius";
  home.homeDirectory = "/home/marius";

  home.stateVersion = "23.11"; # Please read the comment before changing.

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    hello
    neovim
    chromium
    kate
    git
    steam
    spotify
    bitwarden
    discord
    vscode
    obs-studio
    obsidian
    hyprland
    terraform
    terraform-ls
    nodejs
    go
    fzf
    stylua
    telegram-desktop
    wezterm
    kitty
    neovim
    just
    docker
    docker-compose
    sass
    tmux
    hugo
    vlc
    grpc-tools
    protoc-gen-go
    protoc-gen-go-grpc
    sqlc
    kubectl
    k9s
    obs-studio
    buf
  ];

  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screejnrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
  };

  # Home Manager can also manage your environment variables through
  # 'home.sessionVariables'. If you don't want to manage your shell through Home
  # Manager then you have to manually source 'hm-session-vars.sh' located at
  # either
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  ~/.local/state/nix/profiles/profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  /etc/profiles/per-user/marius/etc/profile.d/hm-session-vars.sh
  #
  home.sessionVariables = {
    EDITOR = "vim";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
