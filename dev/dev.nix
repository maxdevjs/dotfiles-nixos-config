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
        git
        kate
        neovim
        nodejs-10_x
        python36Packages.neovim
        tig
        wget
        vimHugeX 
      ];
  };
  virtualisation.docker.enable = true;
}
