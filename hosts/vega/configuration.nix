{ pkgs, pkgsUnstable, ... }:
{
  system.stateVersion = "25.11";
  imports = [
    ./hardware-configuration.nix
    ../../modules
    ../../modules/btrfs_subvolumes_luks.nix
    ../../modules/zswap.nix
  ];
  users.users.nixy.extraGroups = [ "wheel" "i2c" "podman" ];
  networking = {
    hostName = "vega";
    networkmanager.wifi.powersave = true;
  };
  hardware = {
    bluetooth.enable = true;
    i2c.enable = true; # Backlight control
  };
  environment.systemPackages = [
    pkgsUnstable.gelly
  ];
  programs = {
    niri.enable = true;
    regreet = {
      enable = true;
  #     settings.application_prefer_dark_theme = true;
    };
  };
  powerManagement.powertop.enable = true;
  services = {
    power-profiles-daemon.enable = true;
    upower.enable = true; # Battery report
    fprintd.enable = true; # Fingerprint reader
    fwupd.enable = true; # Firmware updates
    tailscale = {
      enable = true;
      disableUpstreamLogging = true;
      extraSetFlags = [
        "--accept-routes"
      ];
    };
    # greetd = {
      # enable = true;
    #   settings.default_session = {
    #     command = "niri";
    #     user = "nixy";
    #   };
    # };
  };
  virtualisation = {
    containers.enable = true;
    podman = {
      enable = true;
      dockerCompat = true;
      defaultNetwork.settings.dns_enabled = true;
    };
  };
}
