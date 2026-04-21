{ config, username, ... }:
{
  users.users.${username} = {
    isNormalUser = true;
    # hashedPassword = "";
    extraGroups = [ "wheel" ];
  };
}
