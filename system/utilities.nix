{ config, pkgs, ...}: {
  environment = {
    systemPackages = with pkgs;
      [
        bat
        exa
        finger_bsd
        xdo
        xdotool
        xorg.xhost
        wmctrl
      ];
  };
}
