{ config, pkgs, ...}:

{
  environment = {
    systemPackages = with pkgs;
      #https://git-send-email.io
      [
        git
        gitAndTools.gitFull
        gitAndTools.hub
        gitAndTools.git-radar
        tig
      ];
  };
}
