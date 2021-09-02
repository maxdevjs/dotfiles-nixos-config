{ config, pkgs, ...}:

{
  environment = {
    systemPackages = with pkgs;
      #https://git-send-email.io
      [
        git # migrate to unstable?
        gitAndTools.delta
        gitAndTools.gitFull
        gitAndTools.hub
        gitAndTools.git-radar
        git-up
        lazygit
        tig
      ];
  };
}
