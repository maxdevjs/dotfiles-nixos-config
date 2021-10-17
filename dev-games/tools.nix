{ config, pkgs, ...}: {
  environment = {
    systemPackages = with pkgs;
      [
        aseprite
        aseprite-unfree
        tiled
      ];
  };
}
