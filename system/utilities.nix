{ config, pkgs, ...}: {
  environment = {
    systemPackages = with pkgs;
      [
        finger_bsd
        fontpreview
        jq # lightweight and flexible command-line JSON processor
        ripgrep
        xdo
        xdotool
        xorg.xdpyinfo
        xorg.xhost
        wmctrl
      ];
  };
}
