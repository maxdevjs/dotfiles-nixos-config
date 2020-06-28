{ config, pkgs, ...}: {
  environment = {
    systemPackages = with pkgs;
      [
        yadm
      ];
  };
}
