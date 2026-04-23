{
  inputs,
  config,
  lib,
  ...
}:
{
  imports = [
    inputs.noctalia.homeModules.default
  ];
  programs.ghostty = {
    enable = true;
    settings.theme = lib.mkIf config.programs.noctalia-shell.enable "noctalia";
  };
}
