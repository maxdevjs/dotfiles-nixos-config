{ config, pkgs, ...}: {
  environment = {
    systemPackages = with pkgs;
      [
        cava
        finger_bsd
        fontpreview
        jq # lightweight and flexible command-line JSON processor
        lshw
        ripgrep
        xdo
        xdotool
        xorg.xdpyinfo
        xorg.xhost
        wmctrl
      ];
  };
}
