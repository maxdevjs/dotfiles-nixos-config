{ config, pkgs, ...}: {
  environment = {
    systemPackages = with pkgs;
      [
        alacritty
        #kitty
        tilix
      ];
  };
}
