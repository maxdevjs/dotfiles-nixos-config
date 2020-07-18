{ config, pkgs, ...}: {
  environment = {
    systemPackages = with pkgs;
      [
        #nodejs-10_x
        nodejs_latest
      ];
  };
}
