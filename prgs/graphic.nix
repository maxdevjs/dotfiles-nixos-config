{ config, pkgs, ...}: {
  environment = {
    systemPackages = with pkgs;
      [
        imagemagick
        gwenview
#         pythonmagick
      ];
  };
}
