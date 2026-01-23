{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # System monitoring
    btop
    fastfetch
    # Nix
    nil
    nvd
    # Gaming
    lutris-free
    wineWow64Packages.staging
    winetricks
    mangohud
    # Web browsers
    firefox
    ladybird
    # Terminal
    ghostty
    starship
    fzf
    # Other
    git
    feishin
    haruna
    keepassxc
    # Code editors
    neovim
    helix
    kdePackages.kate
    zed-editor
    package-version-server
  ];

  fonts.enableDefaultPackages = true;
  fonts.packages = with pkgs; [
    nerd-fonts.iosevka
    nerd-fonts.iosevka-term
  ];
  fonts.fontconfig.useEmbeddedBitmaps = true;
}
