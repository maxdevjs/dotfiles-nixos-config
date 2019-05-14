{ config, pkgs, lib, ... }:

{
  # Enable the KDE Desktop Environment.
  services.xserver.desktopManager.plasma5.enable = true;
  services.xserver.desktopManager.default = "plasma5";

  environment.systemPackages = with pkgs;
  [
    kdeApplications.spectacle
  ];

}
