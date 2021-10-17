{ config, pkgs, ...}: {
  environment = {
    systemPackages = with pkgs;
      [
        mop
      ];
  };
}
