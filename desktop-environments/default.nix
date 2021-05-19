{ ... }:

{
  imports = [
    ./kde.nix
    ./i3.nix
    ./tools.nix
  ];

  # Enable the X11 windowing system.
  services.xserver.enable = true;
  services.xserver.layout = "us";
  services.xserver.xkbOptions = "eurosign:e";

  services.xserver.displayManager.sddm.enable = true;
}
