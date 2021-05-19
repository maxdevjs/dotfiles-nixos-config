{ config, pkgs, lib, ... }:

{
  # Enable the KDE Desktop Environment.
  services.xserver.desktopManager.plasma5.enable = true;
#   services.xserver.desktopManager.default = "plasma5";
  services.xserver.displayManager.defaultSession = "plasma5";

  environment.systemPackages = with pkgs;
  [
    kdeApplications.dolphin-plugins
    kdeApplications.spectacle
    
    kdeFrameworks.kpurpose
    
    ark
    dragon                                # multimedia player focused on simplicity
    kcalc
    kcharselect
    kdialog
    kdiff3
    kgpg
    filelight
    lxqt.lxqt-sudo
    partition-manager
    plasma5.plasma-browser-integration    # TO-CHECK : does not work
    okteta
    okular
  ];

}
