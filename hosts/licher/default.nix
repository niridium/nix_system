{
  system.stateVersion = "25.11";
  imports = [
    ./hardware-configuration.nix
    ../../modules/core
    ../../modules/tui
    ../../modules/filesystem/swap.nix
    ../../modules/filesystem/swraid.nix
    ../../modules/services
    ../../modules/tailscale.nix
    ../../modules/wakeonlan.nix
  ];
  services = {
    btrfs.autoScrub = {
      enable = true;
      fileSystems = [ "/" ];
    };
    beesd.filesystems = {
      root = {
        spec = "/";
        hashTableSizeMB = 512;
        verbosity = "info";
        extraOptions = [
          "--loadavg-target"
          "5.0"
        ];
      };
    };
  };
}
