{ pkgs, config, inputs, ... }:
{
  imports = [
    ./submodules/boot.nix
    ./submodules/nix_settings.nix
    ./submodules/sops.nix
    ./submodules/users.nix
  ];
  _module.args.pkgsUnstable = import inputs.nixpkgs-unstable {
    inherit (pkgs.stdenv.hostPlatform) system;
    inherit (config.nixpkgs) config;
  }; # Unstable packages
  console.keyMap = "colemak";
  time.timeZone = "Europe/Madrid";
  i18n = {
    defaultLocale = "en_US.UTF-8";
    extraLocales = "all";
  };
  networking = {
    networkmanager.enable = true;
  #   networkmanager.dns = "none";
  #   nameservers = [
  #     "194.242.2.3" # Mullvad
  #     "1.1.1.1" # Cloudflare
  #   ];
  };
  fonts = {
    enableDefaultPackages = true;
    fontconfig.useEmbeddedBitmaps = true;
  };
  security.rtkit.enable = true;

  environment.pathsToLink = [ "/share/applications" "/share/xdg-desktop-portal" ]; # Needed when Desktop Environment is installed with Home Manager
}
