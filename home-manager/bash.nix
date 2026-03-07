{ ... }:
{
  programs.bash = {
    enable = true;
    shellAliases = {
      gupdate = "pushd ~/nixos && nix flake update && nixos-rebuild build && nvd diff /run/current-system result && popd";
      switch = "nixos-rebuild switch --sudo";
      update = "gupdate && switch";
    };
    bashrcExtra =
    ''
      eval "$(fzf --bash)"

      # Check package version from store
      function pkgv {
        realpath $(which $1)
      }
    '';
  };
}
