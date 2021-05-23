{ config, pkgs, ...}: {
  #https://github.com/NixOS/nixpkgs/issues/51020#issuecomment-455365516
  nixpkgs.config.firefox.enablePlasmaBrowserIntegration = true;
  environment = {
    systemPackages = with pkgs;
      [
        # google-chrome: ../unstable/unstable.nix
        firefox
        vivaldi
        vivaldi-ffmpeg-codecs
        vivaldi-widevine
      ];
  };
}
