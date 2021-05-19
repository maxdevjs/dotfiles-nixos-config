{ config, pkgs, ...}: {
  environment = {
    systemPackages = with pkgs;
      [
        xdo
        xdotool
        xorg.xhost
        wmctrl
      ];
  };
}
