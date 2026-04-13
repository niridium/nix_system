{ pkgsUnstable, ... }:
{
  environment.systemPackages = [
    pkgsUnstable.jellyfin-tui
  ];

  fonts = {
    enableDefaultPackages = true;
    fontconfig.useEmbeddedBitmaps = true;
  };
}
