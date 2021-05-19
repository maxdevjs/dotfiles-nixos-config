{ config, pkgs, ...}: {
  environment = {
    systemPackages = with pkgs;
      [
        dart
        flutterPackages.dev
      ];
  };
}
