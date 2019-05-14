{ config, pkgs, ...}:

{
  imports = [
    ./go.nix
    ./python.nix
  ];
  environment = {
    systemPackages = with pkgs;
      [
        coreutils
        curl
        docker
        gcc
        git
        kate
        neovim
        nodejs-10_x
        python36Packages.neovim
        stdenv
        tig
        wget
        vimHugeX 
      ];
  };
  virtualisation.docker.enable = true;
}
