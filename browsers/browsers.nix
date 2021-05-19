{ config, pkgs, ...}: {
  #https://github.com/NixOS/nixpkgs/issues/51020#issuecomment-455365516
  nixpkgs.config.firefox.enablePlasmaBrowserIntegration = true;
  environment = {
    systemPackages = with pkgs;
      [
        firefox
        vivaldi
        vivaldi-ffmpeg-codecs
        vivaldi-widevine
      ];
  };
}
