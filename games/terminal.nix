{ config, pkgs, ...}: {
  environment = {
    systemPackages = with pkgs;
      [
        n2048
        _2048-in-terminal
      ];
  };
}
