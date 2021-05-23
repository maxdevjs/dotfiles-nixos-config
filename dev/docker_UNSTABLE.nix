{ config, pkgs, ... }:

# https://discourse.nixos.org/t/installing-only-a-single-package-from-unstable/5598/2
# https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/editors/vscode/vscodium.nix#L51

let
  unstable = import <nixos-unstable> { config = { allowUnfree = true; }; };
in {
  environment = {
    systemPackages = with pkgs; [
      unstable.docker
    ];
  };
  virtualisation.docker.enable = true;
}
