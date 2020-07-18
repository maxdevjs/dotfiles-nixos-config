
{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs;
  [
    kdeApplications.kdenetwork-filesharing
  ];

  services.samba = {
    enable = true;
    enableNmbd = true;
    enableWinbindd = true;
    nsswins = true;
    
    package = pkgs.samba4Full;
    securityType = "user";
    extraConfig = ''
#       client max protocol = SMB3
      workgroup = WORKGROUP
#       server string = smbnix
#       netbios name = smbnix
      security = user 
      #use sendfile = yes
      #max protocol = smb2
      #hosts deny = 0.0.0.0/0
      #hosts allow = 192.168.0 localhost
      hosts allow = 0.0.0.0/0
      guest account = nobody
      map to guest = bad user
      usershare path = /usr/local/samba/lib/usershares
      usershare max shares = 10
    '';
    shares = {
      Public = {
        "allow guests" = true;
        path = "/home/max/Public";
        browseable = "yes";
        "read only" = "no";
        "guest ok" = "yes";
        "create mask" = "0644";
        "directory mask" = "0755";
        "username" = "max";
#         "force user" = "username";
#         "force group" = "groupname";
      };
#       private = {
#         path = "/home/max/Desktop";
#         browseable = "yes";
#         "read only" = "no";
#         "guest ok" = "no";
#         "create mask" = "0644";
#         "directory mask" = "0755";
#         "force user" = "username";
#         "force group" = "groupname";
#       };
    };
  };
}
