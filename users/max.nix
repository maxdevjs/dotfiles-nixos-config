{ config, lib, pkgs, ... }:
with lib;

{
  
  # Define a user account. Don't forget to set a password with ‘passwd’.
  # users.users.guest = {
  #   isNormalUser = true;
  #   uid = 1000;
  # };

  #users.mutableUsers = false;
  #users.users.root.initialHashedPassword = "";

  users.enforceIdUniqueness = true;

  users.extraUsers = {
    max = {
      isNormalUser = true;
      home = "/home/max";
      description = "maxdevjs";
      extraGroups = [ 
        "audio" "disk" "docker" 
        "networkmanager" "plugdev" "samba-smbd" "video" "wheel"
      ];
      uid = 1000;
      #initialHashedPassword = "";
      #shell = pkgs.zsh;
      shell = pkgs.fish;
    };
  }; 
#   users.groups = [
#     { gid = 1000; name = "max";  }
#   ];
  users.groups = 
    { max = {gid = 1000;};  };
}
