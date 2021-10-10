{ config, pkgs, ...}: {
  environment = {
    systemPackages = with pkgs;
      [
        cava
        efibootmgr
        finger_bsd
        fontpreview
        lshw
        wavemon
        xdo
        xdotool
        xorg.xdpyinfo
        xorg.xhost
        wmctrl
      ];
  };
}
