{ config, pkgs, ...}: {
  environment = {
    systemPackages = with pkgs;
      [
        exa
        finger_bsd
        xdo
        xdotool
        xorg.xhost
        wmctrl
      ];
  };
}
