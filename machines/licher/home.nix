{ ... }:

{
  imports = [
    ../../home-manager/bash.nix
    ../../home-manager/home.nix
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
  };
}
