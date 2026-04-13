{ config, username, ... }:
{
  users.users.${username} = {
    isNormalUser = true;
    hashedPasswordFile = config.sops.secrets."nixy_password".path;
    extraGroups = [ "wheel" ];
  };
}
