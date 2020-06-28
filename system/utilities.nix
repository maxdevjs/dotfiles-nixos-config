{ config, pkgs, ...}: {
  environment = {
    systemPackages = with pkgs;
      [
        xdo
        xdotool
        wmctrl
      ];
  };
}
