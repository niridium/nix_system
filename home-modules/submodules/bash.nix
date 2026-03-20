{
  programs.bash = {
    enable = true;
    shellAliases = {
      switch = "pushd ~/nixos && nixos-rebuild build && nvd diff /run/current-system result && nixos-rebuild switch --sudo && popd";
    };
    bashrcExtra =
    ''
      # Check package version from store
      function pkgv {
        realpath $(which $1)
      }
    '';
  };
}
