{ config, pkgs, ...}:

{
  environment = {
    systemPackages = with pkgs;
      [
        python37Packages.pynvim
        python38Packages.pynvim
      ];
  };
}
