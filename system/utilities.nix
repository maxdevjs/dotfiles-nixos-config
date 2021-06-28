{ config, pkgs, ...}: {
  environment = {
    systemPackages = with pkgs;
      [
        finger_bsd
        jq # lightweight and flexible command-line JSON processor
        xdo
        xdotool
        xorg.xhost
        wmctrl
      ];
  };
}
