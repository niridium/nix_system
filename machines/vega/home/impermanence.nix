{
  home.persistence."/persistent" = {
    directories = [
      "Documents"  
      "Downloads"
      "Pictures"
      "Persist"
      "Notes"
      "Keepass"
      "nixdev"
      "nixos"
      ".ssh"
      ".bash_history"
    ];
    files = [
      ".config/sops/age/keys.txt"
    ];
  };
}
