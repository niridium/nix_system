{ hostname, username, ... }:
{
  users.users.${username}.extraGroups = [ "networkmanager" ];
  networking = {
    hostName = hostname;
    networkmanager = {
      enable = true;
      dns = "none";
    };
    nameservers = [
      "194.242.2.3" # Mullvad
      # "1.1.1.1" # Cloudflare
    ];
  };
}
