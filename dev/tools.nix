{ config, pkgs, ...}:

{
  environment = {
    systemPackages = with pkgs;
      [
        coreutils
        curl
        direnv
        expect
        feedgnuplot
        flow
        gnuplot
        gcc
        stdenv
        wget
      ];
  };
}
