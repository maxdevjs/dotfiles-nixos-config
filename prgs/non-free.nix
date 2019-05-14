{ config, pkgs, callPackages, ...}: {
  nixpkgs.config.allowUnfree = true;
  environment.systemPackages =
    if config.services.xserver.enable then
      [
        pkgs.discord
        pkgs.google-chrome
        pkgs.opera
        pkgs.slack
        pkgs.tdesktop
        pkgs.vscode
      ]
    else
      [];
}
