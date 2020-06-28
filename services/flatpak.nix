{ config, pkgs, ... }:

{
  
  xdg.portal.extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
  services.flatpak = {
  #https://nixos.org/nixos/manual/index.html#module-services-flatpak
  #$ flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
    enable = true;
  };
}
