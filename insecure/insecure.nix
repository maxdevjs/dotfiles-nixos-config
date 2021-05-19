{ config, pkgs, ... }:

{
  nixpkgs.config.permittedInsecurePackages = [
    "libgcrypt-1.5.6"
  ];
}
