{
  imports = [
    ./audio.nix
    ./boot.nix
    ./network.nix
    ./nix_ld.nix
    ./nix_settings.nix
    ./oom.nix
    ./users.nix
  ];

  programs.dconf.enable = true;

  console.keyMap = "colemak";
  time.timeZone = "Europe/Madrid";
  i18n = {
    defaultLocale = "en_US.UTF-8";
    extraLocales = "all";
  };

  services = {
    power-profiles-daemon.enable = true;
    fwupd.enable = true; # Firmware updates
  };
}
