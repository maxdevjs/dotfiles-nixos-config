{ config, pkgs, ...}: {
  environment = {
    systemPackages = with pkgs;
      [
        baobab
        gparted
      ];
  };
}
