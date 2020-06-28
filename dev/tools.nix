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
        nodejs-10_x
        #processing
        stdenv
        wget
      ];
  };
}
