{ config, pkgs, ...}:

{
  environment = {
    systemPackages = with pkgs;
      [
        # Install via flatpak
        #processing
      ];
  };
}
