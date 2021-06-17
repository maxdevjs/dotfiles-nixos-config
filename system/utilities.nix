{ config, pkgs, ...}: {
  environment = {
    systemPackages = with pkgs;
      [
        finger_bsd
        xdo
        xdotool
        xorg.xhost
        wmctrl
      ];
  };
}
