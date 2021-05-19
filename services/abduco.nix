{ config, pkgs, ...}: {
  environment = {
    systemPackages = with pkgs;
      [
        abduco
      ];
  };
}
