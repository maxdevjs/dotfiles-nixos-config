{ config, pkgs, ...}: {
  environment = {
    systemPackages = with pkgs;
      [
        polybar
        rofi
      ];
  };
}
