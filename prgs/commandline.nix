{ config, pkgs, ...}: {
  environment = {
    systemPackages = with pkgs;
      [
        htop
        usbutils
        nnn
        ranger
        tree 
        udiskie 
        unzip
        vifm
        which
        wmctrl
        xclip
        xorg.xkill
        xsel
        zip 
      ];
  };
}
