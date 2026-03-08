{ ... }:
{
  programs.git = {
    enable = true;
    settings = {
      init.defaultBranch = "main";
      user = {
        name = "focusgraph";
        email = "ruben.ledesma.go@protonmail.com";
      };
      core.editor = "hx";
    };
  };
}
