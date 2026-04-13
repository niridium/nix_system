{ pkgs, ... }:
{
  services.jellyfin = {
    enable = true;
    dataDir = "/storage/services/jellyfin";
  };
  environment.systemPackages = [
    pkgs.jellyfin
    pkgs.jellyfin-web
    pkgs.jellyfin-ffmpeg
  ];
}
