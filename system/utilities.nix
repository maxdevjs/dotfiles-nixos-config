{ config, pkgs, ...}: {
  environment = {
    systemPackages = with pkgs;
      [
        efibootmgr
        finger_bsd
        fontpreview
        iotop
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
