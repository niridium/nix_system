{ ... }:

{
  imports = [
    ../../home-manager/home.nix
    ../../home-manager/bash.nix
  ];

  home.username = "nixy";
  home.homeDirectory = "/home/nixy";
  home.stateVersion = "25.11";
  home.sessionPath = [
    "$HOME/nixos"
  ];

  programs = {
    home-manager.enable = true;  
    ghostty.enable = true;
    starship.enable = true;
    zoxide.enable = true;
    fzf.enable = true;
  };
}
