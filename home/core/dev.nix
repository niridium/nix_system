{ inputs, ... }:
{
  imports = [
    inputs.direnv-instant.homeModules.direnv-instant
  ];
  programs = {
    direnv = {
      enable = true;
      config = {
        hide_env_diff = true;
      };
      enableBashIntegration = false;
      nix-direnv.enable = true;
    };
    direnv-instant.enable = true;
    bash.bashrcExtra = ''
      flakify() {
        if [ ! -e flake.nix ]; then
          nix flake new -t github:niridium/nix-shells .
          echo "created flake.nix"
        elif [ ! -e .envrc ]; then
          echo "nix_direnv_manual_reload" > .envrc
          echo "use flake" >> .envrc
          echo "created .envrc"
          direnv allow
        fi
        }
    '';
  };
}
